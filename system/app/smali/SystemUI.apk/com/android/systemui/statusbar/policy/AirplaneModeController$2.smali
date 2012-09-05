.class Lcom/android/systemui/statusbar/policy/AirplaneModeController$2;
.super Ljava/lang/Object;
.source "AirplaneModeController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/AirplaneModeController;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$2;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$2;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$2;->val$value:Z

    if-eqz v0, :cond_f

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$2;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #getter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$200(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 143
    :goto_e
    return-void

    .line 141
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$2;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #getter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$200(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_e
.end method
