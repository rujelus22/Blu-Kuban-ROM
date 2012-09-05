.class Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;
.super Landroid/bluetooth/AvrcpProxy;
.source "AvrcpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/avrcp/AvrcpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvrcpProxyTunnel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/avrcp/AvrcpService;


# direct methods
.method public constructor <init>(Lcom/samsung/avrcp/AvrcpService;)V
    .registers 2
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    .line 674
    invoke-direct {p0}, Landroid/bluetooth/AvrcpProxy;-><init>()V

    .line 675
    return-void
.end method


# virtual methods
.method public getElementAttributes()[Landroid/os/ElementAttributeParcel;
    .registers 2

    .prologue
    .line 691
    const-string v0, "AvrcpProxyTunnel - getElementAttributes()"

    #calls: Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$000(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    invoke-virtual {v0}, Lcom/samsung/avrcp/AvrcpService;->getElementAttributes()[Landroid/os/ElementAttributeParcel;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStatus()Landroid/os/PlayStatusParcel;
    .registers 2

    .prologue
    .line 679
    const-string v0, "AvrcpProxyTunnel - getPlayStatus()"

    #calls: Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$000(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    #calls: Lcom/samsung/avrcp/AvrcpService;->getPlayStatus()Landroid/os/PlayStatusParcel;
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$100(Lcom/samsung/avrcp/AvrcpService;)Landroid/os/PlayStatusParcel;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;
    .registers 2

    .prologue
    .line 709
    const-string v0, "AvrcpProxyTunnel - getPlayerSettingVal()"

    #calls: Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$000(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    invoke-virtual {v0}, Lcom/samsung/avrcp/AvrcpService;->getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEvents()Landroid/os/SupportedEventsParcel;
    .registers 2

    .prologue
    .line 685
    const-string v0, "AvrcpProxyTunnel - getSupportedEvents()"

    #calls: Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$000(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    invoke-virtual {v0}, Lcom/samsung/avrcp/AvrcpService;->getSupportedEvents()Landroid/os/SupportedEventsParcel;

    move-result-object v0

    return-object v0
.end method

.method public listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;
    .registers 2

    .prologue
    .line 697
    const-string v0, "AvrcpProxyTunnel - listPlayerSettingAttrs()"

    #calls: Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$000(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    invoke-virtual {v0}, Lcom/samsung/avrcp/AvrcpService;->listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;
    .registers 3
    .parameter "attrId"

    .prologue
    .line 703
    const-string v0, "AvrcpProxyTunnel - listPlayerSettingVals()"

    #calls: Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$000(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    invoke-virtual {v0, p1}, Lcom/samsung/avrcp/AvrcpService;->listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public setPlayerSettingVal(BB)V
    .registers 4
    .parameter "attr"
    .parameter "val"

    .prologue
    .line 715
    const-string v0, "AvrcpProxyTunnel - setPlayerSettingVal()"

    #calls: Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$000(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/avrcp/AvrcpService;->setPlayerSettingVal(BB)V

    .line 717
    return-void
.end method

.method public updatePlayerSettingVals()Z
    .registers 2

    .prologue
    .line 721
    const-string v0, "AvrcpProxyTunnel - updatePlayerSettingVals()"

    #calls: Lcom/samsung/avrcp/AvrcpService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/avrcp/AvrcpService;->access$000(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/samsung/avrcp/AvrcpService$AvrcpProxyTunnel;->this$0:Lcom/samsung/avrcp/AvrcpService;

    invoke-virtual {v0}, Lcom/samsung/avrcp/AvrcpService;->updatePlayerSettingVals()Z

    move-result v0

    return v0
.end method
