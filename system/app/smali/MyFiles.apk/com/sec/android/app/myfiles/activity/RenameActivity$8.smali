.class Lcom/sec/android/app/myfiles/activity/RenameActivity$8;
.super Ljava/lang/Object;
.source "RenameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/RenameActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$8;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$8;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/RenameActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->access$000(Lcom/sec/android/app/myfiles/activity/RenameActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$8;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/RenameActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->access$100(Lcom/sec/android/app/myfiles/activity/RenameActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 244
    return-void
.end method
