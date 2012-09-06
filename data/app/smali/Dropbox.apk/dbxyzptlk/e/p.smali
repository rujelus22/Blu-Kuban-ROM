.class public final Ldbxyzptlk/e/p;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# instance fields
.field protected a:Ljava/util/Collection;

.field protected b:Lcom/dropbox/android/util/Z;

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/Collection;Lcom/dropbox/android/util/Z;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p3, p0, Ldbxyzptlk/e/p;->a:Ljava/util/Collection;

    .line 26
    iput-object p4, p0, Ldbxyzptlk/e/p;->b:Lcom/dropbox/android/util/Z;

    .line 27
    iput-boolean p2, p0, Ldbxyzptlk/e/p;->c:Z

    .line 29
    instance-of v0, p1, Ldbxyzptlk/e/q;

    if-nez v0, :cond_15

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "QueueUserUploadsAsyncTask context must implment QueueUserUploadsAsyncTask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_15
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 12
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/p;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Ldbxyzptlk/e/p;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 37
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/e/p;->b:Lcom/dropbox/android/util/Z;

    iget-object v2, p0, Ldbxyzptlk/e/p;->a:Ljava/util/Collection;

    iget-boolean v3, p0, Ldbxyzptlk/e/p;->c:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/util/Z;Ljava/util/Collection;ZZ)V

    .line 43
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    return-void
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 12
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/p;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Void;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    check-cast p1, Ldbxyzptlk/e/q;

    .line 50
    iget-object v0, p0, Ldbxyzptlk/e/p;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ldbxyzptlk/e/q;->b(I)V

    .line 51
    return-void
.end method
