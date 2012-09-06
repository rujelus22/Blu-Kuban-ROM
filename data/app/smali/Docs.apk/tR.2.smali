.class public LtR;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, LtR;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;LtO;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, LtR;-><init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, LtR;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Lck;

    iget-object v1, p0, LtR;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    iget-object v1, p0, LtR;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)LtN;

    move-result-object v1

    invoke-virtual {v1, v0}, LtN;->a(I)LtZ;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, LtZ;->a()V

    .line 46
    iget-object v2, p0, LtR;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->e()V

    .line 47
    const-string v2, "UploadQueueActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel button"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
