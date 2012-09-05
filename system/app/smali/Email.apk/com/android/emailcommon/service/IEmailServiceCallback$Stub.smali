.class public abstract Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IEmailServiceCallback.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailServiceCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailServiceCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
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
    .line 38
    sparse-switch p1, :sswitch_data_190

    .line 223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 42
    :sswitch_8
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 51
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 53
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    .local v6, _arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxListStatus(JII)V

    .line 55
    const/4 v1, 0x1

    goto :goto_7

    .line 59
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_29
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 63
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 66
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 67
    const/4 v1, 0x1

    goto :goto_7

    .line 71
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_41
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 75
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 77
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 79
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg3:I
    move-object v1, p0

    .line 80
    invoke-virtual/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    .line 81
    const/4 v1, 0x1

    goto :goto_7

    .line 85
    .end local v2           #_arg0:J
    .end local v4           #_arg1:J
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    :sswitch_5e
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 91
    .restart local v4       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 95
    .restart local v7       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg4:I
    move-object v1, p0

    .line 96
    invoke-virtual/range {v1 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->sendMessageStatus(JJLjava/lang/String;II)V

    .line 97
    const/4 v1, 0x1

    goto :goto_7

    .line 101
    .end local v2           #_arg0:J
    .end local v4           #_arg1:J
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:I
    .end local v8           #_arg4:I
    :sswitch_7f
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 105
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .local v4, _arg1:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->moveItemStatus(JI)V

    .line 107
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 111
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    :sswitch_94
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 115
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 117
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 119
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c2

    .line 120
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .local v7, _arg3:Landroid/os/Bundle;
    :goto_b7
    move-object v9, p0

    move-wide v10, v2

    move v12, v4

    move v13, v6

    move-object v14, v7

    .line 125
    invoke-virtual/range {v9 .. v14}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->oOOfStatus(JIILandroid/os/Bundle;)V

    .line 126
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 123
    .end local v7           #_arg3:Landroid/os/Bundle;
    :cond_c2
    const/4 v7, 0x0

    .restart local v7       #_arg3:Landroid/os/Bundle;
    goto :goto_b7

    .line 130
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Landroid/os/Bundle;
    :sswitch_c4
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 136
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 137
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->folderCommandStatus(IJI)V

    .line 138
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 142
    .end local v2           #_arg0:I
    .end local v4           #_arg1:J
    .end local v6           #_arg2:I
    :sswitch_dd
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 146
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 149
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->emptyTrashStatus(JII)V

    .line 150
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 154
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_f6
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 158
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 161
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadMoreStatus(JII)V

    .line 162
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 166
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_10f
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 170
    .local v2, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 172
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 174
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 175
    .local v7, _arg3:I
    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->moveConvAlwaysStatus([BIII)V

    .line 176
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 180
    .end local v2           #_arg0:[B
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    :sswitch_12c
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 184
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 186
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 187
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->setDeviceInfoStatus(JII)V

    .line 188
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 192
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_145
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->deviceInfoStatus(I)V

    .line 196
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 200
    .end local v2           #_arg0:I
    :sswitch_156
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 204
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 206
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 207
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->refreshIRMTemplatesStatus(JII)V

    .line 208
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 212
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_16f
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v2, 0x1

    .line 216
    .local v2, _arg0:Z
    :goto_17d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 218
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .local v13, _arg2:J
    move-object v9, p0

    move v10, v2

    move-wide v11, v4

    .line 219
    invoke-virtual/range {v9 .. v14}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 220
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 214
    .end local v2           #_arg0:Z
    .end local v4           #_arg1:J
    .end local v13           #_arg2:J
    :cond_18e
    const/4 v2, 0x0

    goto :goto_17d

    .line 38
    :sswitch_data_190
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_29
        0x3 -> :sswitch_41
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_94
        0x7 -> :sswitch_c4
        0x8 -> :sswitch_dd
        0x9 -> :sswitch_f6
        0xa -> :sswitch_10f
        0xb -> :sswitch_12c
        0xc -> :sswitch_145
        0xd -> :sswitch_156
        0xe -> :sswitch_16f
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
