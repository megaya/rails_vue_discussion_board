import Vue from 'vue'
import Router from 'vue-router'
import Home from './pages/Home'
import QuestionShow from './pages/QuestionShow'

const routes = [{
  name: 'home',
  path: '/',
  component: Home,
}, {
  name: 'question_show',
  path: '/question/:id',
  component: QuestionShow,
}, {
  path: '*',
  redirect: '/'
}]


Vue.use(Router)
const router = new Router({ routes })

export default router
