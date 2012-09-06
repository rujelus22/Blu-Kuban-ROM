.class public final Lcom/acquariusoft/UpdateMe/a/b;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/a/c;

.field public b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/acquariusoft/UpdateMe/a/c;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/a/b;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/a/b;->a:Lcom/acquariusoft/UpdateMe/a/c;

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->showDialog(I)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/ao;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/a/b;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/acquariusoft/UpdateMe/b/f;

    invoke-direct {v1}, Lcom/acquariusoft/UpdateMe/b/f;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
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

    goto :goto_12
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/a/b;->a:Lcom/acquariusoft/UpdateMe/a/c;

    invoke-interface {v0}, Lcom/acquariusoft/UpdateMe/a/c;->a()V

    return-void
.end method
