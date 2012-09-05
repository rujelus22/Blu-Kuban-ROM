.class Lcom/android/systemui/statusbar/policy/WimaxSettingButton$5;
.super Ljava/lang/Object;
.source "WimaxSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 194
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 200
    :cond_15
    return-void
.end method
