#include <iostream>

int main(int argc, char **argv)
{
    std::cout << "Have " << argc << " arguments:" << std::endl;
    for (int i = 0; i < argc; ++i)
    {
        std::cout << argv[i] << std::endl;
    }
}

class my_config_object_notify:
{
public:
    my_config_object_notify()
    {
        m_data.add_item({&standard_config_objects::bool_playlist_stop_after_current, callback_id::on_playlist_stop_after_current_changed});
        m_data.add_item({&standard_config_objects::bool_cursor_follows_playback, callback_id::on_cursor_follow_playback_changed});
        m_data.add_item({&standard_config_objects::bool_playback_follows_cursor, callback_id::on_playback_follow_cursor_changed});
        m_data.add_item({&standard_config_objects::bool_ui_always_on_top, callback_id::on_always_on_top_changed});
        m_count = m_data.get_count();
    }

    GUID get_watched_object(t_size p_index) override
    {
        switch (p_index)
        {
        case 0:
            return standard_config_objects::bool_playlist_stop_after_current;
        case 1:
            return standard_config_objects::bool_cursor_follows_playback;
        case 2:
            return standard_config_objects::bool_playback_follows_cursor;
        case 3:
            return standard_config_objects::bool_ui_always_on_top;
        default:
            return pfc::guid_null;
        }
    }
}