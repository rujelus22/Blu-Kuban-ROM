.class Lcom/android/task/TaskEditActivity$18;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->dialogTaskAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskEditActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v0, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v0, v0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/TaskAccount;

    iget v0, v0, Lcom/android/task/TaskAccount;->key:I

    #setter for: Lcom/android/task/TaskEditActivity;->mAccountKey:I
    invoke-static {v1, v0}, Lcom/android/task/TaskEditActivity;->access$2802(Lcom/android/task/TaskEditActivity;I)I

    .line 1383
    iget-object v1, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v0, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v0, v0, Lcom/android/task/TaskEditActivity;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/TaskAccount;

    iget-object v0, v0, Lcom/android/task/TaskAccount;->syncAccount:Ljava/lang/String;

    #setter for: Lcom/android/task/TaskEditActivity;->mAccountName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/task/TaskEditActivity;->access$2902(Lcom/android/task/TaskEditActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mTaskAccountIconSet:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$3000(Lcom/android/task/TaskEditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$1600(Lcom/android/task/TaskEditActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mAccountKey:I
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$2800(Lcom/android/task/TaskEditActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1385
    iget-object v0, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mTaskAccountTypeTextSet:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/task/TaskEditActivity;->access$3200(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/task/TaskEditActivity$18;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mTask_account_items:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/task/TaskEditActivity;->access$3100(Lcom/android/task/TaskEditActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1388
    return-void
.end method
