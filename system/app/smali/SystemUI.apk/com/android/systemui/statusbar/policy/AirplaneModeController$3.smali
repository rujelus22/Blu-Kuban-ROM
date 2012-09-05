.class Lcom/android/systemui/statusbar/policy/AirplaneModeController$3;
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
    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$3;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$3;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$3;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$3;->val$value:Z

    #calls: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->setAirplaneMode(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$300(Lcom/android/systemui/statusbar/policy/AirplaneModeController;Z)V

    .line 133
    return-void
.end method
