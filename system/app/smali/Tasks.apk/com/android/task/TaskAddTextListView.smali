.class public Lcom/android/task/TaskAddTextListView;
.super Lcom/android/task/TaskSelectListView;
.source "TaskAddTextListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/task/TaskSelectListView;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "TaskAddTextListView"

    const-string v1, "======== TaskAddTextListView(Context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskSelectListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "TaskAddTextListView"

    const-string v1, "======== TaskAddTextListView(Context, AttributeSet) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskAddTextListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/task/TaskAddTextListView;->addTextTasks()V

    return-void
.end method

.method private addTextTasks()V
    .registers 5

    .prologue
    .line 53
    const-string v2, "TaskAddTextListView"

    const-string v3, "addTextTasks()"

    invoke-static {v2, v3}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    invoke-virtual {v2}, Lcom/android/task/TaskBaseListAdapter;->getAddText()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    .local v0, addTextStringBuilder:Ljava/lang/StringBuilder;
    const-string v2, "TaskAddTextListView"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "taskstext"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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
    .line 27
    const-string v1, "TaskAddTextListView"

    const-string v2, "======== setupSoftkey ========"

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAddTextListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    .line 30
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 31
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 32
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    new-instance v2, Lcom/android/task/TaskAddTextListView$1;

    invoke-direct {v2, p0}, Lcom/android/task/TaskAddTextListView$1;-><init>(Lcom/android/task/TaskAddTextListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAddTextListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, cancelButton:Landroid/widget/Button;
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 43
    new-instance v1, Lcom/android/task/TaskAddTextListView$2;

    invoke-direct {v1, p0}, Lcom/android/task/TaskAddTextListView$2;-><init>(Lcom/android/task/TaskAddTextListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
