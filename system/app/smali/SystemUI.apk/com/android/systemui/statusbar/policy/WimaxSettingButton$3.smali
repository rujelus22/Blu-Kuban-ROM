.class Lcom/android/systemui/statusbar/policy/WimaxSettingButton$3;
.super Ljava/lang/Object;
.source "WimaxSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->onDisplayWifiConnectedAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)Landroid/app/StatusBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 186
    return-void
.end method
