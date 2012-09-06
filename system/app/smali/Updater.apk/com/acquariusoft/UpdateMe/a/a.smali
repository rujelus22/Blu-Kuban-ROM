.class public final Lcom/acquariusoft/UpdateMe/a/a;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/a/c;


# direct methods
.method public constructor <init>(Lcom/acquariusoft/UpdateMe/a/c;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/a/a;->a:Lcom/acquariusoft/UpdateMe/a/c;

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->showDialog(I)V

    return-void
.end method

.method private static varargs a()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->a()V

    invoke-static {}, Lcom/acquariusoft/UpdateMe/an;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    :goto_6
    const-string v0, ""

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "ASYNC"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/acquariusoft/UpdateMe/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a/a;->a:Lcom/acquariusoft/UpdateMe/a/c;

    invoke-interface {v0}, Lcom/acquariusoft/UpdateMe/a/c;->a()V

    return-void
.end method
