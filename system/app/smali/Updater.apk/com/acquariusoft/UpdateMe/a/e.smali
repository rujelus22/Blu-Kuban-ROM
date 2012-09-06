.class public final Lcom/acquariusoft/UpdateMe/a/e;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/a/c;


# direct methods
.method public constructor <init>(Lcom/acquariusoft/UpdateMe/a/c;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/a/e;->a:Lcom/acquariusoft/UpdateMe/a/c;

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->showDialog(I)V

    return-void
.end method

.method private static varargs a()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->a()V

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->b()V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_dir"

    const-string v3, "download_dir"

    sget-object v4, Lcom/acquariusoft/UpdateMe/ao;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_23

    :goto_20
    const-string v0, ""

    return-object v0

    :catch_23
    move-exception v0

    const-string v1, "ANDRO_ASYNC"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/acquariusoft/UpdateMe/a/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a/e;->a:Lcom/acquariusoft/UpdateMe/a/c;

    invoke-interface {v0}, Lcom/acquariusoft/UpdateMe/a/c;->a()V

    return-void
.end method
