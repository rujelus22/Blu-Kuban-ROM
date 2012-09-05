.class Lcom/android/systemui/statusbar/policy/AirplaneModeController$4;
.super Ljava/lang/Object;
.source "AirplaneModeController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$4;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "unused"

    .prologue
    .line 149
    return-void
.end method
