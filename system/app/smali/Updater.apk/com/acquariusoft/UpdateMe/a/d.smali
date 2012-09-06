.class public final Lcom/acquariusoft/UpdateMe/a/d;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/a/c;


# direct methods
.method public constructor <init>(Lcom/acquariusoft/UpdateMe/a/c;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/a/d;->a:Lcom/acquariusoft/UpdateMe/a/c;

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->showDialog(I)V

    return-void
.end method

.method private static varargs a()Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Lcom/acquariusoft/UpdateMe/b/b/d;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/b/d;-><init>()V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/b/d;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/b/b/d;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/acquariusoft/UpdateMe/b/b/c;->a:Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    :goto_12
    const-string v0, ""

    return-object v0

    :catch_15
    move-exception v0

    const-string v1, "ASYNC"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1f
    new-instance v0, Lcom/acquariusoft/UpdateMe/b/b/d;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/b/d;-><init>()V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/b/b/d;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/b/b/d;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/acquariusoft/UpdateMe/b/b/c;->a:Ljava/util/List;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_32

    goto :goto_12

    :catch_32
    move-exception v0

    const-string v1, "ANDRO_ASYNC"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/acquariusoft/UpdateMe/a/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a/d;->a:Lcom/acquariusoft/UpdateMe/a/c;

    invoke-interface {v0}, Lcom/acquariusoft/UpdateMe/a/c;->a()V

    return-void
.end method
