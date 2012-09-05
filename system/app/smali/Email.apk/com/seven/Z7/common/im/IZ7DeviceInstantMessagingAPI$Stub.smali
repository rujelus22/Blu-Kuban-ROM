.class public abstract Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;
.super Landroid/os/Binder;
.source "IZ7DeviceInstantMessagingAPI.java"

# interfaces
.implements Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p0, p0, v0}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_37e

    .line 461
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 44
    :sswitch_a
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 49
    :sswitch_10
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getGatewayStatus(I)I

    move-result v7

    .line 53
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 59
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_24
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getIMOperationMode(I)I

    move-result v7

    .line 63
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 69
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_38
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->setIMOperationMode(II)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 80
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_4c
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7d

    move v2, v9

    .line 86
    .local v2, _arg1:Z
    :goto_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7f

    move v3, v9

    .line 88
    .local v3, _arg2:Z
    :goto_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_81

    move v4, v9

    .line 90
    .local v4, _arg3:Z
    :goto_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_83

    move v6, v9

    .local v6, _arg5:Z
    :goto_75
    move-object v0, p0

    .line 93
    invoke-virtual/range {v0 .. v6}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->setLoginInfo(IZZZLjava/lang/String;Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Z
    :cond_7d
    move v2, v0

    .line 84
    goto :goto_5c

    .restart local v2       #_arg1:Z
    :cond_7f
    move v3, v0

    .line 86
    goto :goto_63

    .restart local v3       #_arg2:Z
    :cond_81
    move v4, v0

    .line 88
    goto :goto_6a

    .restart local v4       #_arg3:Z
    .restart local v5       #_arg4:Ljava/lang/String;
    :cond_83
    move v6, v0

    .line 92
    goto :goto_75

    .line 99
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_85
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getIMRoster(I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 108
    .end local v1           #_arg0:I
    :sswitch_96
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->modifyRosterEntry(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 121
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_af
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getUserPresence(I)Lcom/seven/Z7/common/im/Z7ImPresence;

    move-result-object v7

    .line 125
    .local v7, _result:Lcom/seven/Z7/common/im/Z7ImPresence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v7, :cond_c9

    .line 127
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v7, p3, v9}, Lcom/seven/Z7/common/im/Z7ImPresence;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 131
    :cond_c9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 137
    .end local v1           #_arg0:I
    .end local v7           #_result:Lcom/seven/Z7/common/im/Z7ImPresence;
    :sswitch_ce
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg4:Ljava/lang/String;
    move-object v0, p0

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->sendIMPresenceUpdate(IILjava/lang/String;ILjava/lang/String;)I

    move-result v7

    .line 149
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 155
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_f4
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 167
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_121

    move v6, v9

    .restart local v6       #_arg5:Z
    :goto_114
    move-object v0, p0

    .line 168
    invoke-virtual/range {v0 .. v6}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->sendIMPresenceUpdateAfterLogin(IILjava/lang/String;ILjava/lang/String;Z)I

    move-result v7

    .line 169
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v6           #_arg5:Z
    .end local v7           #_result:I
    :cond_121
    move v6, v0

    .line 167
    goto :goto_114

    .line 175
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_123
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->sendInstantMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 188
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_13c
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getInstantMessageThread(ILjava/lang/String;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 199
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_151
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->resetIMUnreadMessageCount(ILjava/lang/String;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 210
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_166
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->clearIMThread(ILjava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 221
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_17b
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getSaveThreadFlag(ILjava/lang/String;)Z

    move-result v7

    .line 227
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v7, :cond_192

    move v0, v9

    :cond_192
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 233
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_197
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1b3

    move v3, v9

    .line 240
    .local v3, _arg2:Z
    :goto_1ab
    invoke-virtual {p0, v1, v2, v3}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->setSaveThreadFlag(ILjava/lang/String;Z)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v3           #_arg2:Z
    :cond_1b3
    move v3, v0

    .line 239
    goto :goto_1ab

    .line 246
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_1b5
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->endChat(I)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 255
    .end local v1           #_arg0:I
    :sswitch_1c6
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 259
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 262
    .local v3, _arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->setAvatar(ILjava/lang/String;[B)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 268
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:[B
    :sswitch_1df
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f3

    move v1, v9

    .line 271
    .local v1, _arg0:Z
    :goto_1eb
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->setUIStateActive(Z)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    :cond_1f3
    move v1, v0

    .line 270
    goto :goto_1eb

    .line 277
    :sswitch_1f5
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 281
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 283
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 285
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_215

    move v4, v9

    .line 286
    .local v4, _arg3:Z
    :goto_20d
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->setActiveChat(ILjava/lang/String;IZ)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v4           #_arg3:Z
    :cond_215
    move v4, v0

    .line 285
    goto :goto_20d

    .line 292
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_217
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_232

    .line 295
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 300
    .local v1, _arg0:Landroid/os/Bundle;
    :goto_22a
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->setAccountParameters(Landroid/os/Bundle;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 298
    .end local v1           #_arg0:Landroid/os/Bundle;
    :cond_232
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Bundle;
    goto :goto_22a

    .line 306
    .end local v1           #_arg0:Landroid/os/Bundle;
    :sswitch_234
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->sendGroupInstantMessage(IILjava/lang/String;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 319
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_24d
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .restart local v1       #_arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 324
    .local v8, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 326
    .local v2, _arg1:Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 328
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_275

    move v4, v9

    .line 329
    .restart local v4       #_arg3:Z
    :goto_26d
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->inviteGroupChatBuddies(ILjava/util/List;IZ)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v4           #_arg3:Z
    :cond_275
    move v4, v0

    .line 328
    goto :goto_26d

    .line 335
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/util/List;
    .end local v3           #_arg2:I
    .end local v8           #cl:Ljava/lang/ClassLoader;
    :sswitch_277
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 339
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getGroupChatAttendees(II)[Lcom/seven/Z7/common/im/Z7Attendee;

    move-result-object v7

    .line 341
    .local v7, _result:[Lcom/seven/Z7/common/im/Z7Attendee;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v7, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 347
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v7           #_result:[Lcom/seven/Z7/common/im/Z7Attendee;
    :sswitch_290
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getGroupChatRooms(I)Ljava/util/List;

    move-result-object v7

    .line 351
    .local v7, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 357
    .end local v1           #_arg0:I
    .end local v7           #_result:Ljava/util/List;
    :sswitch_2a5
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->exitGroupChat(II)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 368
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2ba
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 372
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->resetIMUnreadRoomMessageCount(II)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 379
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2cf
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->modifyRosterNickName(ILjava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 392
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_2e8
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->startIMFileTransfer(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 400
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 406
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_305
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 410
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 411
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->cancelIMFileTransfer(II)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 417
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_31a
    const-string v10, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 423
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_33d

    move v3, v9

    .line 424
    .local v3, _arg2:Z
    :goto_32e
    invoke-virtual {p0, v1, v2, v3}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->replyFileTransferInvite(IIZ)Z

    move-result v7

    .line 425
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v7, :cond_338

    move v0, v9

    :cond_338
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v3           #_arg2:Z
    .end local v7           #_result:Z
    :cond_33d
    move v3, v0

    .line 423
    goto :goto_32e

    .line 431
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_33f
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getIMUnreadMessageCount(ILjava/lang/String;)I

    move-result v7

    .line 437
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 443
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_358
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->getTotalIMUnreadMessageCount(I)I

    move-result v7

    .line 447
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 453
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_36d
    const-string v0, "com.seven.Z7.common.im.IZ7DeviceInstantMessagingAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/seven/Z7/common/im/IZ7DeviceInstantMessagingAPI$Stub;->resetTotalIMUnreadMessageCount(I)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 40
    :sswitch_data_37e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_38
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_85
        0x6 -> :sswitch_96
        0x7 -> :sswitch_af
        0x8 -> :sswitch_ce
        0x9 -> :sswitch_f4
        0xa -> :sswitch_123
        0xb -> :sswitch_13c
        0xc -> :sswitch_151
        0xd -> :sswitch_166
        0xe -> :sswitch_17b
        0xf -> :sswitch_197
        0x10 -> :sswitch_1b5
        0x11 -> :sswitch_1c6
        0x12 -> :sswitch_1df
        0x13 -> :sswitch_1f5
        0x14 -> :sswitch_217
        0x15 -> :sswitch_234
        0x16 -> :sswitch_24d
        0x17 -> :sswitch_277
        0x18 -> :sswitch_290
        0x19 -> :sswitch_2a5
        0x1a -> :sswitch_2ba
        0x1b -> :sswitch_2cf
        0x1c -> :sswitch_2e8
        0x1d -> :sswitch_305
        0x1e -> :sswitch_31a
        0x1f -> :sswitch_33f
        0x20 -> :sswitch_358
        0x21 -> :sswitch_36d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
