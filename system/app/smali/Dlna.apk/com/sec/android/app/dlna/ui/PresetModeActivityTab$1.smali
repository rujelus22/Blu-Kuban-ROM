.class Lcom/sec/android/app/dlna/ui/PresetModeActivityTab$1;
.super Landroid/os/Handler;
.source "PresetModeActivityTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    .line 187
    :cond_6
    :goto_6
    return-void

    .line 180
    :pswitch_7
    const-string v0, "DLNA"

    const-string v1, "Tabhost.setEnabled(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setEnabled(Z)V

    .line 182
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iput-boolean v2, v0, Lcom/sec/android/app/dlna/DLNAManager;->Server_Started:Z

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab$1;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;)Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 178
    :pswitch_data_38
    .packed-switch 0x457
        :pswitch_7
    .end packed-switch
.end method
