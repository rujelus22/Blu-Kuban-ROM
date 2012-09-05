.class Lcom/infraware/common/setting/SettingActivity$5;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/setting/SettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/common/setting/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$5;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$5;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->focusedView:Landroid/view/View;
    invoke-static {v0}, Lcom/infraware/common/setting/SettingActivity;->access$15(Lcom/infraware/common/setting/SettingActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$5;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->focusedView:Landroid/view/View;
    invoke-static {v0}, Lcom/infraware/common/setting/SettingActivity;->access$15(Lcom/infraware/common/setting/SettingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 591
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$5;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/infraware/common/setting/SettingActivity;->access$16(Lcom/infraware/common/setting/SettingActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$5;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->focusedView:Landroid/view/View;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$15(Lcom/infraware/common/setting/SettingActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 593
    :cond_28
    return-void
.end method
