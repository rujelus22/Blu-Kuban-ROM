.class public Lcom/sec/android/app/dlna/ControlPointInfo;
.super Ljava/lang/Object;
.source "ControlPointInfo.java"

# interfaces
.implements Lcom/samsung/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private contentState:I

.field private context:Landroid/content/Context;

.field private dmrState:I

.field private dmsState:I

.field private listeners:Lcom/samsung/util/ListenerList;

.field private selectedDMR:Lcom/samsung/api/DeviceItem;

.field private selectedDMS:Lcom/samsung/api/DeviceItem;

.field private selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x65

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->TAG:Ljava/lang/String;

    .line 16
    const-string v0, "ControlPointInfo."

    iput-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->CLASS_NAME:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmsState:I

    .line 33
    iput v1, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmrState:I

    .line 37
    iput v1, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->contentState:I

    .line 39
    iput-object v2, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->listeners:Lcom/samsung/util/ListenerList;

    .line 41
    iput-object v2, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->listeners:Lcom/samsung/util/ListenerList;

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private getStateString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 251
    packed-switch p1, :pswitch_data_12

    .line 261
    const-string v0, "getStateString-__-;"

    :goto_5
    return-object v0

    .line 253
    :pswitch_6
    const-string v0, "CONNECTION_ALIVE"

    goto :goto_5

    .line 255
    :pswitch_9
    const-string v0, "CONNECTION_DEAD"

    goto :goto_5

    .line 257
    :pswitch_c
    const-string v0, "CONNECTION_GONE"

    goto :goto_5

    .line 259
    :pswitch_f
    const-string v0, "CONNECTION_REVIVE"

    goto :goto_5

    .line 251
    :pswitch_data_12
    .packed-switch 0x65
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private getTypeString(I)Ljava/lang/String;
    .registers 3
    .parameter "contentType"

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_10

    .line 246
    const-string v0, "getTypeString-__-;"

    :goto_5
    return-object v0

    .line 240
    :pswitch_6
    const-string v0, "TYPE_DMS"

    goto :goto_5

    .line 242
    :pswitch_9
    const-string v0, "TYPE_DMR"

    goto :goto_5

    .line 244
    :pswitch_c
    const-string v0, "TYPE_CONTENT"

    goto :goto_5

    .line 238
    nop

    :pswitch_data_10
    .packed-switch 0xc9
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private switchState(II)V
    .registers 8
    .parameter "contentType"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x66

    .line 266
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlPointInfo.switchState : contentType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/sec/android/app/dlna/ControlPointInfo;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    packed-switch p1, :pswitch_data_4a

    .line 291
    :goto_30
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/dlna/ControlPointInfo;->notifyControlPointInfoChanged(II)V

    .line 292
    return-void

    .line 271
    :pswitch_34
    if-ne p2, v3, :cond_38

    .line 272
    iput-object v4, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    .line 273
    :cond_38
    iput p2, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmsState:I

    goto :goto_30

    .line 277
    :pswitch_3b
    if-ne p2, v3, :cond_3f

    .line 278
    iput-object v4, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    .line 279
    :cond_3f
    iput p2, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmrState:I

    goto :goto_30

    .line 283
    :pswitch_42
    if-ne p2, v3, :cond_46

    .line 284
    iput-object v4, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 285
    :cond_46
    iput p2, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->contentState:I

    goto :goto_30

    .line 269
    nop

    :pswitch_data_4a
    .packed-switch 0xc9
        :pswitch_34
        :pswitch_3b
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method public addControlPointInfoChangeListener(Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->listeners:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public deviceAdded(Lcom/samsung/upnp/Device;)V
    .registers 6
    .parameter "dev"

    .prologue
    const/16 v3, 0x68

    .line 181
    if-nez p1, :cond_5

    .line 201
    :cond_4
    :goto_4
    return-void

    .line 184
    :cond_5
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceAdded called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getRemoteInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 187
    const/16 v0, 0xc9

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    .line 189
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getRemoteInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 191
    const/16 v0, 0xca

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    .line 193
    :cond_73
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getSelectedDevice()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getSelectedDevice()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getSelectedDevice()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getRemoteInterfaceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    const/16 v0, 0xcb

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    goto/16 :goto_4
.end method

.method public deviceRemoved(Lcom/samsung/upnp/Device;)V
    .registers 6
    .parameter "dev"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x66

    .line 204
    const-string v0, "DLNA"

    const-string v1, "deviceRemoved called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-nez p1, :cond_d

    .line 225
    :cond_c
    :goto_c
    return-void

    .line 208
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 209
    const-string v0, "DLNA"

    const-string v1, "*** selectedDMS is null ***"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput-object v3, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    .line 211
    const/16 v0, 0xc9

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    .line 213
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 214
    const-string v0, "DLNA"

    const-string v1, "*** selectedDMR is null ***"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput-object v3, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    .line 216
    const/16 v0, 0xca

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    .line 218
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getSelectedDevice()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getSelectedDevice()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 220
    const-string v0, "DLNA"

    const-string v1, "***contents null?? ***203"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput-object v3, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 222
    const/16 v0, 0xcb

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    goto :goto_c
.end method

.method public getItem()Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method public getPlayer()Lcom/samsung/api/DeviceItem;
    .registers 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ControlPointInfo;->isPlayerOnline()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    .line 167
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getPlayerName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    if-nez v0, :cond_7

    .line 156
    const-string v0, ""

    .line 160
    :goto_6
    return-object v0

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->context:Landroid/content/Context;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 160
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getServer()Lcom/samsung/api/DeviceItem;
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ControlPointInfo;->isServerOnline()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    .line 151
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getServerName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    if-nez v0, :cond_7

    .line 140
    const-string v0, ""

    .line 144
    :goto_6
    return-object v0

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->context:Landroid/content/Context;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 144
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public isContentOnline()Z
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->contentState:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->contentState:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPlayerOnline()Z
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmrState:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmrState:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isServerOnline()Z
    .registers 3

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmsState:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmsState:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isServerWaiting()Z
    .registers 3

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmsState:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected notifyControlPointInfoChanged(II)V
    .registers 6
    .parameter "type"
    .parameter "state"

    .prologue
    .line 229
    iget-object v2, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->listeners:Lcom/samsung/util/ListenerList;

    invoke-virtual {v2}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, listener:Ljava/lang/Object;
    instance-of v2, v1, Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;

    if-eqz v2, :cond_6

    .line 231
    check-cast v1, Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;->OnControlPointInfoChanged(II)V

    goto :goto_6

    .line 235
    :cond_1a
    return-void
.end method

.method public removeControlPointInfoChangeListener(Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->listeners:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public removePlayer()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    .line 49
    return-void
.end method

.method public removeServer()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    .line 53
    return-void
.end method

.method public selectItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 126
    const-string v0, "DLNA"

    const-string v1, "selectItem called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-nez p1, :cond_18

    .line 128
    const-string v0, "DLNA"

    const-string v1, "selectItem: item NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 131
    const/16 v0, 0x66

    iput v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->contentState:I

    .line 136
    :goto_17
    return-void

    .line 133
    :cond_18
    iput-object p1, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 134
    const/16 v0, 0xcb

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    goto :goto_17
.end method

.method public selectPlayer(Lcom/samsung/api/DeviceItem;)V
    .registers 4
    .parameter "dmr"

    .prologue
    .line 113
    const-string v0, "DLNA"

    const-string v1, "selectPlayer called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-nez p1, :cond_18

    .line 115
    const-string v0, "DLNA"

    const-string v1, "selectPlayer: Player NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    .line 118
    const/16 v0, 0x66

    iput v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmrState:I

    .line 123
    :goto_17
    return-void

    .line 120
    :cond_18
    iput-object p1, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMR:Lcom/samsung/api/DeviceItem;

    .line 121
    const/16 v0, 0xca

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    goto :goto_17
.end method

.method public selectServer(Lcom/samsung/api/DeviceItem;)V
    .registers 4
    .parameter "dms"

    .prologue
    .line 100
    const-string v0, "DLNA"

    const-string v1, "selectServer called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-nez p1, :cond_18

    .line 102
    const-string v0, "DLNA"

    const-string v1, "selectServer: server NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    .line 105
    const/16 v0, 0x66

    iput v0, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->dmsState:I

    .line 110
    :goto_17
    return-void

    .line 107
    :cond_18
    iput-object p1, p0, Lcom/sec/android/app/dlna/ControlPointInfo;->selectedDMS:Lcom/samsung/api/DeviceItem;

    .line 108
    const/16 v0, 0xc9

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    goto :goto_17
.end method

.method public setConnectionDisconnected()V
    .registers 4

    .prologue
    const/16 v2, 0x67

    .line 69
    const-string v0, "DLNA"

    const-string v1, "setConnectionDisconnected called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/16 v0, 0xc9

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    .line 71
    const/16 v0, 0xca

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    .line 72
    const/16 v0, 0xcb

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/dlna/ControlPointInfo;->switchState(II)V

    .line 73
    return-void
.end method
