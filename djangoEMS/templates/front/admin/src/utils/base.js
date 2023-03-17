const base = {
    get() {
                return {
            url : "http://localhost:8080/django4h80u/",
            name: "django4h80u",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/django4h80u/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "高校资产管理系统"
        } 
    }
}
export default base
