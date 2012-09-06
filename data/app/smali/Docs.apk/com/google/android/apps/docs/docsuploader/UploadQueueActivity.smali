.class public Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "UploadQueueActivity.java"

# interfaces
.implements LtT;


# instance fields
.field final a:LXy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXy",
            "<",
            "Lcom/google/android/apps/docs/docsuploader/UploadQueueService;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/content/ServiceConnection;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/ListView;

.field public a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field private a:LtN;

.field public a:LtS;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 66
    new-instance v0, LtO;

    invoke-direct {v0, p0}, LtO;-><init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:LXy;

    .line 93
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)LtN;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:LtN;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;LtN;)LtN;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:LtN;

    return-object p1
.end method


# virtual methods
.method public e()V
    .registers 2

    .prologue
    .line 164
    new-instance v0, LtQ;

    invoke-direct {v0, p0}, LtQ;-><init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method g()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:LXy;

    invoke-static {p0, v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Landroid/content/Context;LXy;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Landroid/content/ServiceConnection;

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Landroid/content/ServiceConnection;

    if-nez v0, :cond_16

    .line 179
    sget v0, LcY;->upload_queue_failed_to_start:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    :cond_16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    sget v0, LcU;->upload_queue_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->setContentView(I)V

    .line 147
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Landroid/widget/ListView;

    .line 148
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Landroid/view/View;

    .line 149
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v0, v1}, LIi;->a(LIB;)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a()LIi;

    move-result-object v0

    sget v1, LcY;->upload_queue_title_bar:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 188
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onPause()V

    .line 189
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->g()V

    .line 160
    return-void
.end method
