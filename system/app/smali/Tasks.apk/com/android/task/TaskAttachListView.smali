.class public Lcom/android/task/TaskAttachListView;
.super Lcom/android/task/TaskSelectListView;
.source "TaskAttachListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/task/TaskSelectListView;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "TaskAttachListView"

    const-string v1, "======== TaskAttachListView(Context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskSelectListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v0, "TaskAttachListView"

    const-string v1, "======== TaskAttachListView(Context, AttributeSet) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskAttachListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/task/TaskAttachListView;->attachTasks()V

    return-void
.end method

.method private attachTasks()V
    .registers 5

    .prologue
    .line 56
    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v2}, Lcom/android/task/TaskBaseListAdapter;->getSelectedUris()Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    .local v0, extraUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "uristrings"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    const-string v2, "text/x-vtodo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected setupSoftkey()V
    .registers 4

    .prologue
    .line 30
    const-string v1, "TaskAttachListView"

    const-string v2, "======== setupSoftkey ========"

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAttachListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    .line 33
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 34
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 35
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    new-instance v2, Lcom/android/task/TaskAttachListView$1;

    invoke-direct {v2, p0}, Lcom/android/task/TaskAttachListView$1;-><init>(Lcom/android/task/TaskAttachListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAttachListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    .local v0, cancelButton:Landroid/widget/Button;
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 46
    new-instance v1, Lcom/android/task/TaskAttachListView$2;

    invoke-direct {v1, p0}, Lcom/android/task/TaskAttachListView$2;-><init>(Lcom/android/task/TaskAttachListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
