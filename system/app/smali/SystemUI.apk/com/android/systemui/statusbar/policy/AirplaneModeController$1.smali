.class Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AirplaneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6
    .parameter "serviceState"

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    move v0, v1

    .line 72
    .local v0, inAirplaneMode:Z
    :goto_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #setter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$002(Lcom/android/systemui/statusbar/policy/AirplaneModeController;Z)Z

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #getter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$100(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/widget/CompoundButton;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #getter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$100(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 74
    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #getter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$200(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 75
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #getter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$200(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v2

    if-eqz v0, :cond_35

    :goto_2f
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 79
    :cond_32
    return-void

    .line 71
    .end local v0           #inAirplaneMode:Z
    :cond_33
    const/4 v0, 0x0

    goto :goto_9

    .line 75
    .restart local v0       #inAirplaneMode:Z
    :cond_35
    const/4 v1, 0x2

    goto :goto_2f
.end method
