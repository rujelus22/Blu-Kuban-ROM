.class Lcom/android/systemui/statusbar/policy/WimaxSettingButton$7;
.super Ljava/lang/Object;
.source "WimaxSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->onDisplayBTTetheringConnectedAlert()V
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
    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$7;->this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 225
    return-void
.end method
