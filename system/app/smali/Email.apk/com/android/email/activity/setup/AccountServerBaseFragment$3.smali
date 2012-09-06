.class Lcom/android/email/activity/setup/AccountServerBaseFragment$3;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$3;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 297
    const/4 v3, 0x6

    if-ne p2, v3, :cond_c

    .line 299
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$3;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 300
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_d

    .line 310
    .end local v0           #context:Landroid/content/Context;
    :cond_c
    :goto_c
    return v2

    .line 303
    .restart local v0       #context:Landroid/content/Context;
    :cond_d
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 305
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 306
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$3;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 308
    :cond_2a
    const/4 v2, 0x1

    goto :goto_c
.end method
