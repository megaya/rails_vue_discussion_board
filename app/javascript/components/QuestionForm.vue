<template>
  <b-form @submit="onSubmit" v-if="show" class="mb-5">
    <b-form-group
      id="input-group-1"
      label="名前:"
      label-for="input-1"
      description="We'll never share your email with anyone else."
    >
      <b-form-input
        id="input-1"
        v-model="form.name"
        type="email"
        required
        placeholder="Enter email"
      ></b-form-input>
    </b-form-group>

    <b-form-group id="input-group-2" label="タイトル:" label-for="input-2">
      <b-form-input
        id="input-2"
        v-model="form.name"
        required
        placeholder="Enter name"
      ></b-form-input>
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
    <hr />
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

