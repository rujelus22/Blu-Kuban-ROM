.class public Lcom/android/task/TaskDeleteListView;
.super Lcom/android/task/TaskSelectListView;
.source "TaskDeleteListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskDeleteListView$AddTask;
    }
.end annotation


# static fields
.field private static dialog:Landroid/app/AlertDialog;

.field private static isDialogShowing:Z


# instance fields
.field Del:Ljava/lang/Thread;

.field private bld:Landroid/app/AlertDialog$Builder;

.field pDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/task/TaskSelectListView;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v0, Lcom/android/task/TaskDeleteListView$5;

    invoke-direct {v0, p0}, Lcom/android/task/TaskDeleteListView$5;-><init>(Lcom/android/task/TaskDeleteListView;)V

    iput-object v0, p0, Lcom/android/task/TaskDeleteListView;->Del:Ljava/lang/Thread;

    .line 29
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/task/TaskDeleteListView;->bld:Landroid/app/AlertDialog$Builder;

    .line 30
    const-string v0, "TaskDeleteListView"

    const-string v1, "======== TaskDeleteListView(Context) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskSelectListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    new-instance v0, Lcom/android/task/TaskDeleteListView$5;

    invoke-direct {v0, p0}, Lcom/android/task/TaskDeleteListView$5;-><init>(Lcom/android/task/TaskDeleteListView;)V

    iput-object v0, p0, Lcom/android/task/TaskDeleteListView;->Del:Ljava/lang/Thread;

    .line 36
    const-string v0, "TaskDeleteListView"

    const-string v1, "======== TaskDeleteListView(Context, AttributeSet) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskDeleteListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/task/TaskDeleteListView;->createDialog()V

    return-void
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/task/TaskDeleteListView;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    sput-boolean p0, Lcom/android/task/TaskDeleteListView;->isDialogShowing:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/task/TaskDeleteListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/task/TaskDeleteListView;->deleteTasks()V

    return-void
.end method

.method private createDialog()V
    .registers 6

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/task/TaskDeleteListView;->bld:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/task/TaskDeleteListView;->dialog:Landroid/app/AlertDialog;

    .line 109
    sget-object v1, Lcom/android/task/TaskDeleteListView;->dialog:Landroid/app/AlertDialog;

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/task/TaskDeleteListView;->getSelectedTasks()[J

    move-result-object v0

    .line 111
    .local v0, selectedTask:[J
    if-nez v0, :cond_17

    .line 164
    :goto_16
    return-void

    .line 114
    :cond_17
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_56

    .line 115
    sget-object v1, Lcom/android/task/TaskDeleteListView;->dialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    :goto_29
    sget-object v1, Lcom/android/task/TaskDeleteListView;->dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/task/TaskDeleteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/task/TaskDeleteListView$3;

    invoke-direct {v4, p0}, Lcom/android/task/TaskDeleteListView$3;-><init>(Lcom/android/task/TaskDeleteListView;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 157
    sget-object v1, Lcom/android/task/TaskDeleteListView;->dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/task/TaskDeleteListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/task/TaskDeleteListView$4;

    invoke-direct {v4, p0}, Lcom/android/task/TaskDeleteListView$4;-><init>(Lcom/android/task/TaskDeleteListView;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_16

    .line 117
    :cond_56
    sget-object v1, Lcom/android/task/TaskDeleteListView;->dialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method

.method private deleteTasks()V
    .registers 3

    .prologue
    .line 98
    new-instance v0, Lcom/android/task/TaskDeleteListView$AddTask;

    invoke-direct {v0, p0}, Lcom/android/task/TaskDeleteListView$AddTask;-><init>(Lcom/android/task/TaskDeleteListView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/task/TaskDeleteListView$AddTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method


# virtual methods
.method protected setupSoftkey()V
    .registers 4

    .prologue
    .line 40
    const-string v1, "TaskDeleteListView"

    const-string v2, "======== setupSoftkey ========"

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/android/task/TaskDeleteListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    .line 43
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 44
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 45
    iget-object v1, p0, Lcom/android/task/TaskSelectListView;->mSoftkeyLeft:Landroid/widget/Button;

    new-instance v2, Lcom/android/task/TaskDeleteListView$1;

    invoke-direct {v2, p0}, Lcom/android/task/TaskDeleteListView$1;-><init>(Lcom/android/task/TaskDeleteListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/android/task/TaskDeleteListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    .local v0, cancelButton:Landroid/widget/Button;
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 59
    new-instance v1, Lcom/android/task/TaskDeleteListView$2;

    invoke-direct {v1, p0}, Lcom/android/task/TaskDeleteListView$2;-><init>(Lcom/android/task/TaskDeleteListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
