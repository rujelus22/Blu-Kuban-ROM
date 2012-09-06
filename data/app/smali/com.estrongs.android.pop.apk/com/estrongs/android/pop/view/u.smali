.class Lcom/estrongs/android/pop/view/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/u;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .registers 6

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 6

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    check-cast p1, Lcom/estrongs/android/util/v;

    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_33

    new-instance v0, Lcom/estrongs/android/util/v;

    const-string v1, "http://image.web.kuaipan.cn/static/res/es2.png"

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    const-string v1, "/sdcard/.estrongs/cache/es2.png"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/u;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a:Lcom/estrongs/android/util/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/y;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    iget-object v1, p1, Lcom/estrongs/android/util/v;->e:Ljava/lang/Object;

    iput-object v1, v0, Lcom/estrongs/android/util/v;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->c()V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_61

    new-instance v0, Lcom/estrongs/android/util/v;

    const-string v1, "http://image.web.kuaipan.cn/static/res/es3.png"

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/v;-><init>(Ljava/lang/String;)V

    const-string v1, "/sdcard/.estrongs/cache/es3.png"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/u;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a:Lcom/estrongs/android/util/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/v;->a(Lcom/estrongs/android/util/y;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    iget-object v1, p1, Lcom/estrongs/android/util/v;->e:Ljava/lang/Object;

    iput-object v1, v0, Lcom/estrongs/android/util/v;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/estrongs/android/util/v;->c()V

    goto :goto_32

    :cond_61
    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_32

    iget-object v0, p1, Lcom/estrongs/android/util/v;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->e(Z)V

    goto :goto_32
.end method
