<template>
  <div>
    <p>{{ greeting }} World!</p>
    <OtherComponent />
  </div>
</template>

<script>
import OtherComponent from './OtherComponent.vue';

export default {
  data() {
    return {
      greeting: 'Hello',
    };
  },

  components: {
    OtherComponent,
  },
};
</script>

<style lang="scss">
$font-size: 2rem;
p {
  font-size: $font-size;
  text-align: center;
}
</style>
