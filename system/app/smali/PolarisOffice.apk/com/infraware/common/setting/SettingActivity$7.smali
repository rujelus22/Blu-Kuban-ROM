.class Lcom/infraware/common/setting/SettingActivity$7;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$7;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 611
    if-eqz p2, :cond_f

    .line 612
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 613
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$7;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #setter for: Lcom/infraware/common/setting/SettingActivity;->focusedView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/infraware/common/setting/SettingActivity;->access$17(Lcom/infraware/common/setting/SettingActivity;Landroid/view/View;)V

    .line 615
    :cond_f
    return-void
.end method
