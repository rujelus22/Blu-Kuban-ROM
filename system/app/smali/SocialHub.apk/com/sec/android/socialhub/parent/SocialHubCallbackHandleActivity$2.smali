.class Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;
.super Ljava/lang/Object;
.source "SocialHubCallbackHandleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_26

    .line 211
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMEFocused:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->access$000(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 213
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMEFocused:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->access$000(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_27

    .line 215
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMEFocused:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->access$000(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 227
    :cond_26
    :goto_26
    return-void

    .line 219
    :cond_27
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "run()"

    const-string v2, "mIMEFocused is not EditText"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 224
    :cond_31
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "run()"

    const-string v2, "mIMEFocused is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
