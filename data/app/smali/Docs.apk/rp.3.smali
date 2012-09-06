.class public Lrp;
.super Ljava/lang/Object;
.source "LocalFileIntentOpener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LQO;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

.field final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;Ljava/util/List;LQO;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lrp;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    iput-object p2, p0, Lrp;->a:Ljava/util/List;

    iput-object p3, p0, Lrp;->a:LQO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lrp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 223
    invoke-static {}, LRz;->a()LRy;

    move-result-object v2

    invoke-interface {v2, v0}, LRy;->a(Ljava/io/File;)V

    goto :goto_6

    .line 226
    :cond_1a
    iget-object v0, p0, Lrp;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;)LdE;

    move-result-object v0

    iget-object v1, p0, Lrp;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    const-string v2, "openIntentDuration"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lrp;->a:LQO;

    invoke-interface {v0}, LQO;->b()V

    .line 229
    return-void
.end method
