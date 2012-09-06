.class public LOQ;
.super Ljava/lang/Object;
.source "UploadSharedItemActivity.java"

# interfaces
.implements LXy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXy",
        "<",
        "Lcom/google/android/apps/docs/docsuploader/UploadQueueService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

.field final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, LOQ;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iput-object p2, p0, LOQ;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V
    .registers 8
    .parameter

    .prologue
    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 601
    iget-object v0, p0, LOQ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtB;

    .line 602
    new-instance v3, LtZ;

    const/4 v4, 0x0

    iget-object v5, p0, LOQ;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-static {v5}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)Z

    move-result v5

    invoke-direct {v3, v0, v4, v5}, LtZ;-><init>(LtB;IZ)V

    .line 603
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 606
    :cond_27
    invoke-virtual {p1, v1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Ljava/util/Collection;)V

    .line 607
    invoke-virtual {p1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a()Ljava/lang/Thread;

    .line 609
    iget-object v0, p0, LOQ;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->finish()V

    .line 610
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    check-cast p1, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-virtual {p0, p1}, LOQ;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V

    return-void
.end method
