.class Lcom/android/systemui/statusbar/policy/WimaxSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WimaxSettingButton;
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
    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    const-string v1, "4g_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, state:I
    const-string v1, "WimaxSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->handleStateChanged(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;I)V

    .line 39
    return-void
.end method
