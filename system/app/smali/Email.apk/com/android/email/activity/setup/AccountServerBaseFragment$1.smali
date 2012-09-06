.class Lcom/android/email/activity/setup/AccountServerBaseFragment$1;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;->makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 264
    if-eqz p2, :cond_24

    .line 266
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 268
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 269
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 273
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_23
    return-void

    .line 271
    :cond_24
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_23
.end method
