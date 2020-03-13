<template>
  <b-form @submit="onSubmit" v-if="show">
    <b-form-group id="input-group-3" label="ユーザ:" label-for="input-3">
      <b-form-select
      id="input-3"
      v-model="form.food"
      :options="foods"
      required
      ></b-form-select>
    </b-form-group>

    <b-form-group id="input-group-3" label="内容:" label-for="input-3">
      <b-form-textarea
        id="textarea"
        v-model="form.text"
        placeholder="Enter something..."
        rows="3"
        max-rows="6"
      ></b-form-textarea>
    </b-form-group>

    <b-button type="submit" variant="primary">Submit</b-button>
  </b-form>
</template>

<script>
export default {
	data() {
		return {
			form: {
				email: '',
				name: '',
				food: null,
        text: '',
			},
      foods: [{ text: 'Select One', value: null }, 'Carrots', 'Beans', 'Tomatoes', 'Corn'],
			show: true
		}
	},
	methods: {
		onSubmit(evt) {
			evt.preventDefault()
			alert(JSON.stringify(this.form))
		},
		onReset(evt) {
			evt.preventDefault()
			// Reset our form values
			this.form.email = ''
			this.form.name = ''
			this.form.food = null
			// Trick to reset/clear native browser form validation state
			this.show = false
			this.$nextTick(() => {
				this.show = true
			})
		}
	}
}
</script>

