export function tasks_path(){
  return '/tasks'
};

export function new_task_path(){
  return '/tasks/new'
};

export function task_path(id){
  return `/tasks/${id}`
}

export function edit_task_path(id) {
  return `/tasks/${id}/edit`;
}

export function users_path() {
  return "/users";
}

export function login_path() {
  return "/session"
}

export function login_new_path(){
  return '/session/new'
}

export function logout_path(){
  return '/logout'
}

export function new_user_path(){
  return '/users/new'
}