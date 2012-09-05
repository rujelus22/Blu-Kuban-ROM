.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;
.super Landroid/content/BroadcastReceiver;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 580
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 583
    const-string v1, "MiniModeAppsPanel"

    const-string v2, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 589
    :cond_22
    return-void
.end method
