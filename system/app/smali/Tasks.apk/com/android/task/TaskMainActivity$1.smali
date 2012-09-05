.class Lcom/android/task/TaskMainActivity$1;
.super Ljava/lang/Object;
.source "TaskMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskMainActivity;->listByAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskMainActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/task/TaskMainActivity$1;->this$0:Lcom/android/task/TaskMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 259
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 261
    iget-object v0, p0, Lcom/android/task/TaskMainActivity$1;->this$0:Lcom/android/task/TaskMainActivity;

    #calls: Lcom/android/task/TaskMainActivity;->savePreferences(I)V
    invoke-static {v0, p2}, Lcom/android/task/TaskMainActivity;->access$000(Lcom/android/task/TaskMainActivity;I)V

    .line 263
    iget-object v0, p0, Lcom/android/task/TaskMainActivity$1;->this$0:Lcom/android/task/TaskMainActivity;

    #getter for: Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;
    invoke-static {v0}, Lcom/android/task/TaskMainActivity;->access$100(Lcom/android/task/TaskMainActivity;)Lcom/android/task/TaskMainListView;

    move-result-object v0

    sget-object v1, Lcom/android/task/TaskMainActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/task/TaskMainListView;->setOrderBy(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/task/TaskMainActivity$1;->this$0:Lcom/android/task/TaskMainActivity;

    #getter for: Lcom/android/task/TaskMainActivity;->mView:Lcom/android/task/TaskMainListView;
    invoke-static {v0}, Lcom/android/task/TaskMainActivity;->access$100(Lcom/android/task/TaskMainActivity;)Lcom/android/task/TaskMainListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/task/TaskMainListView;->update()V

    .line 266
    iget-object v0, p0, Lcom/android/task/TaskMainActivity$1;->this$0:Lcom/android/task/TaskMainActivity;

    invoke-virtual {v0}, Lcom/android/task/TaskMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/task/TaskMainActivity$1;->this$0:Lcom/android/task/TaskMainActivity;

    #getter for: Lcom/android/task/TaskMainActivity;->mListByItems:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/task/TaskMainActivity;->access$200(Lcom/android/task/TaskMainActivity;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    return-void
.end method
