.class Lcom/samsung/wimax/rc/WiMAXRCActivity$1;
.super Ljava/lang/Object;
.source "WiMAXRCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wimax/rc/WiMAXRCActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 53
    iput-object p1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 56
    const-string v1, "WiMAXRCActivity"

    const-string v2, "Stop button clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->showRssi:Z
    invoke-static {v1, v2}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$002(Lcom/samsung/wimax/rc/WiMAXRCActivity;Z)Z

    .line 60
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    const-string v2, "CL"

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sRssi:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$102(Lcom/samsung/wimax/rc/WiMAXRCActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    const-string v2, "CL"

    #setter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sCinr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$202(Lcom/samsung/wimax/rc/WiMAXRCActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsung.wimax.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RSSIValue"

    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sRssi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$100(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "CINRValue"

    iget-object v2, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    #getter for: Lcom/samsung/wimax/rc/WiMAXRCActivity;->sCinr:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->access$200(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;->this$0:Lcom/samsung/wimax/rc/WiMAXRCActivity;

    invoke-virtual {v1}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
