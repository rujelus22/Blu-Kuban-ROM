.class LtP;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LtO;


# direct methods
.method constructor <init>(LtO;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, LtP;->a:LtO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, LtP;->a:LtO;

    iget-object v0, v0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, LtP;->a:LtO;

    iget-object v1, v1, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, LtP;->a:LtO;

    iget-object v0, v0, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, LtP;->a:LtO;

    iget-object v1, v1, LtO;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:LtS;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method
