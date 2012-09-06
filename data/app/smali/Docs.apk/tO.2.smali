.class public LtO;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

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
.field final synthetic a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V
    .registers 8
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(LtT;)V

    .line 71
    iget-object v0, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    iput-object p1, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    .line 73
    iget-object v0, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-virtual {p1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a()LtN;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;LtN;)LtN;

    .line 74
    const-string v0, "UploadQueueActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-static {v2}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)LtN;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    new-instance v1, LtS;

    iget-object v2, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    iget-object v3, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    sget v4, LcU;->upload_queue_list_item:I

    iget-object v5, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-static {v5}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)LtN;

    move-result-object v5

    invoke-virtual {v5}, LtN;->a()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, LtS;-><init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:LtS;

    .line 79
    iget-object v0, p0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    new-instance v1, LtP;

    invoke-direct {v1, p0}, LtP;-><init>(LtO;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    check-cast p1, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-virtual {p0, p1}, LtO;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V

    return-void
.end method
