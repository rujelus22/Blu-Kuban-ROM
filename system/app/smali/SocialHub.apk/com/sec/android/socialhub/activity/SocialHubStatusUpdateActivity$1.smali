.class Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$1;
.super Ljava/lang/Object;
.source "SocialHubStatusUpdateActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->loadPage(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 164
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "onClicked"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clicked!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->imeMgr:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 166
    return-void
.end method
