.class Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$4;
.super Ljava/lang/Object;
.source "CreateFolderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$4;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$4;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$4;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->access$002(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$4;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->access$000(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$4;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->access$100(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 149
    return-void
.end method
