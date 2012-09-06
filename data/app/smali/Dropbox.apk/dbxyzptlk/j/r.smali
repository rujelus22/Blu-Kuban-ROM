.class public final Ldbxyzptlk/j/r;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/j/r;->a:Ljava/lang/Runnable;

    .line 16
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/j/r;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->d()Z

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error unlinking."

    invoke-direct {v0, v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/j/r;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Void;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/dropbox/android/util/ba;->a()V

    .line 41
    iget-object v0, p0, Ldbxyzptlk/j/r;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Ldbxyzptlk/j/r;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    :cond_c
    invoke-static {}, Lcom/dropbox/android/util/b;->a()V

    .line 45
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Ldbxyzptlk/j/r;->a:Ljava/lang/Runnable;

    .line 25
    return-void
.end method
