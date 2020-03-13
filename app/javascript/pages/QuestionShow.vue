<template>
	<div>
		<b-card title="Card title">
			<template v-slot:header>
				<b-badge>カテゴリ名</b-badge> <b-badge>未解決</b-badge>
      </template>

			<b-card-text>
				Some quick example text to build on the <em>card title</em> and make up the bulk of the card's
				content.
			</b-card-text>
			<b-button href="#" variant="primary">Go somewhere</b-button>
		</b-card>

    <ReplyList />
    <ReplyCreateForm />


	</div>
</template>

<script>
import ReplyList from '../components/ReplyList'
import ReplyCreateForm from '../components/ReplyCreateForm'

export default {
  components: {
    ReplyList,
    ReplyCreateForm
  },
	data() {
		return {
		}
	},
	methods: {
	}
}
</script>

