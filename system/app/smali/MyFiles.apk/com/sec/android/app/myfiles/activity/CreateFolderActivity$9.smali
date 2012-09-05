.class Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$9;
.super Ljava/lang/Object;
.source "CreateFolderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->onResume()V
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
    .line 242
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$9;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$9;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->access$000(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$9;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->access$100(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 245
    return-void
.end method
