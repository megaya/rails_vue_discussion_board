<template>
	<div>
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

