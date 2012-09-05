.class Lcom/samsung/wimax/rc/WiMAXRCActivity$2;
.super Ljava/lang/Object;
.source "WiMAXRCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/rc/WiMAXRCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/rc/WiMAXRCActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 74
    const-string v2, "WiMAXRCActivity"

    const-string v3, "Start button clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    const/4 v3, 0x1

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->showRssi:Z
    invoke-static {v2, v3}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$002(Lcom/samsung/wimax/rc/WiMAXRCActivity;Z)Z

    .line 78
    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static {v2}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$300(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    .line 80
    .local v0, WiMAXInfo:Landroid/net/fourG/wimax/Wimax4GInfo;
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x78

    if-le v2, v3, :cond_96

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v2

    const/16 v3, -0x18

    if-le v2, v3, :cond_96

    .line 81
    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sRssi:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$102(Lcom/samsung/wimax/rc/WiMAXRCActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sCinr:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$202(Lcom/samsung/wimax/rc/WiMAXRCActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    const-string v2, "WiMAXRCActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSignalChanged called with RSSI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sRssi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$100(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CINR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sCinr:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$200(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_6f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsung.wimax.RSSI_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "RSSIValue"

    iget-object v3, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sRssi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$100(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v2, "CINRValue"

    iget-object v3, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sCinr:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$200(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    invoke-virtual {v2}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void

    .line 86
    .end local v1           #intent:Landroid/content/Intent;
    :cond_96
    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    const-string v3, " - "

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sRssi:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$102(Lcom/samsung/wimax/rc/WiMAXRCActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    const-string v3, " - "

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sCinr:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$202(Lcom/samsung/wimax/rc/WiMAXRCActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    const-string v2, "WiMAXRCActivity"

    const-string v3, "handleSignalChanged called with RSSI and CINR = \'-\' "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f
.end method
