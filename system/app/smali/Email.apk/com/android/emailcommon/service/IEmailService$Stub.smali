.class public abstract Lcom/android/emailcommon/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;
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
    const-string v1, "com.android.emailcommon.service.IEmailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 39
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
    sparse-switch p1, :sswitch_data_37c

    .line 387
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 42
    :sswitch_8
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 59
    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55

    const/4 v8, 0x1

    .line 61
    .local v8, _arg5:Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_57

    const/4 v9, 0x1

    .local v9, _arg6:Z
    :goto_3a
    move-object/from16 v2, p0

    .line 62
    invoke-virtual/range {v2 .. v9}, Lcom/android/emailcommon/service/IEmailService$Stub;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;

    move-result-object v33

    .line 63
    .local v33, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v33, :cond_59

    .line 65
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v2, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_53
    const/4 v2, 0x1

    goto :goto_7

    .line 59
    .end local v8           #_arg5:Z
    .end local v9           #_arg6:Z
    .end local v33           #_result:Landroid/os/Bundle;
    :cond_55
    const/4 v8, 0x0

    goto :goto_33

    .line 61
    .restart local v8       #_arg5:Z
    :cond_57
    const/4 v9, 0x0

    goto :goto_3a

    .line 69
    .restart local v9       #_arg6:Z
    .restart local v33       #_result:Landroid/os/Bundle;
    :cond_59
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 75
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:I
    .end local v8           #_arg5:Z
    .end local v9           #_arg6:Z
    .end local v33           #_result:Landroid/os/Bundle;
    :sswitch_60
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 79
    .local v11, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_79

    const/4 v4, 0x1

    .line 80
    .local v4, _arg1:Z
    :goto_72
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->startSync(JZ)V

    .line 81
    const/4 v2, 0x1

    goto :goto_7

    .line 79
    .end local v4           #_arg1:Z
    :cond_79
    const/4 v4, 0x0

    goto :goto_72

    .line 85
    .end local v11           #_arg0:J
    :sswitch_7b
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 88
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->stopSync(J)V

    .line 89
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 93
    .end local v11           #_arg0:J
    :sswitch_8e
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 96
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMore(J)V

    .line 97
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 101
    .end local v11           #_arg0:J
    :sswitch_a1
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 105
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_bb

    const/4 v4, 0x1

    .line 106
    .restart local v4       #_arg1:Z
    :goto_b3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadAttachment(JZ)V

    .line 107
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 105
    .end local v4           #_arg1:Z
    :cond_bb
    const/4 v4, 0x0

    goto :goto_b3

    .line 111
    .end local v11           #_arg0:J
    :sswitch_bd
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 114
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->updateFolderList(J)V

    .line 115
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 119
    .end local v11           #_arg0:J
    :sswitch_d0
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 122
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->getAliasFromMap(J)Ljava/lang/String;

    move-result-object v33

    .line 123
    .local v33, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 129
    .end local v11           #_arg0:J
    .end local v33           #_result:Ljava/lang/String;
    :sswitch_ee
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v3

    .line 132
    .local v3, _arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 138
    .end local v3           #_arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    :sswitch_108
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->setLogging(I)V

    .line 142
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 146
    .end local v3           #_arg0:I
    :sswitch_11b
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 149
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->hostChanged(J)V

    .line 150
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 154
    .end local v11           #_arg0:J
    :sswitch_12e
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_164

    const/4 v6, 0x1

    .line 163
    .local v6, _arg3:Z
    :goto_148
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/emailcommon/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v33

    .line 164
    .local v33, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v33, :cond_166

    .line 166
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v2, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_161
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 162
    .end local v6           #_arg3:Z
    .end local v33           #_result:Landroid/os/Bundle;
    :cond_164
    const/4 v6, 0x0

    goto :goto_148

    .line 170
    .restart local v6       #_arg3:Z
    .restart local v33       #_result:Landroid/os/Bundle;
    :cond_166
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_161

    .line 176
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Z
    .end local v33           #_result:Landroid/os/Bundle;
    :sswitch_16d
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 180
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 181
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    .line 182
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 186
    .end local v4           #_arg1:I
    .end local v11           #_arg0:J
    :sswitch_184
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 190
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 192
    .local v13, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    move-object/from16 v10, p0

    move v15, v5

    .line 193
    invoke-virtual/range {v10 .. v15}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingEditedResponse(JJI)V

    .line 194
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 198
    .end local v5           #_arg2:I
    .end local v11           #_arg0:J
    .end local v13           #_arg1:J
    :sswitch_1a0
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 202
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 203
    .restart local v13       #_arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/android/emailcommon/service/IEmailService$Stub;->moveMessage(JJ)V

    .line 204
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 208
    .end local v11           #_arg0:J
    .end local v13           #_arg1:J
    :sswitch_1b7
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 211
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteAccountPIMData(J)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 217
    .end local v11           #_arg0:J
    :sswitch_1cd
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->getApiLevel()I

    move-result v33

    .line 219
    .local v33, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 225
    .end local v33           #_result:I
    :sswitch_1e5
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 229
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .local v19, _arg2:J
    move-object/from16 v15, p0

    move-wide/from16 v16, v11

    move-object/from16 v18, v4

    .line 232
    invoke-virtual/range {v15 .. v20}, Lcom/android/emailcommon/service/IEmailService$Stub;->folderCreate(JLjava/lang/String;J)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 238
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    .end local v19           #_arg2:J
    :sswitch_207
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 241
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->emptyTrash(J)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 247
    .end local v11           #_arg0:J
    :sswitch_21d
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 251
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendRecoveryPassword(JLjava/lang/String;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 258
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    :sswitch_237
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 261
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->setDeviceInfo(J)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 267
    .end local v11           #_arg0:J
    :sswitch_24d
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 271
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 273
    .restart local v13       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 275
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    move-object/from16 v10, p0

    move-object v15, v5

    move/from16 v16, v6

    .line 276
    invoke-virtual/range {v10 .. v16}, Lcom/android/emailcommon/service/IEmailService$Stub;->moveConversationAlways(JJ[BI)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 282
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v11           #_arg0:J
    .end local v13           #_arg1:J
    :sswitch_272
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 286
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_298

    .line 287
    sget-object v2, Lcom/android/emailcommon/service/OoODataList;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/service/OoODataList;

    .line 292
    .local v4, _arg1:Lcom/android/emailcommon/service/OoODataList;
    :goto_28d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->OoOffice(JLcom/android/emailcommon/service/OoODataList;)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 290
    .end local v4           #_arg1:Lcom/android/emailcommon/service/OoODataList;
    :cond_298
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/android/emailcommon/service/OoODataList;
    goto :goto_28d

    .line 298
    .end local v4           #_arg1:Lcom/android/emailcommon/service/OoODataList;
    .end local v11           #_arg0:J
    :sswitch_29a
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 301
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->changeSmsSettings(J)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 307
    .end local v11           #_arg0:J
    :sswitch_2b0
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMoreCancel()V

    .line 309
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 313
    :sswitch_2bd
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    .line 317
    .local v3, _arg0:[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 319
    .restart local v13       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .restart local v19       #_arg2:J
    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-wide/from16 v17, v13

    .line 320
    invoke-virtual/range {v15 .. v20}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMessageCancel([JJJ)V

    .line 321
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 325
    .end local v3           #_arg0:[J
    .end local v13           #_arg1:J
    .end local v19           #_arg2:J
    :sswitch_2dc
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 328
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->refreshIRMTemplates(J)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 334
    .end local v11           #_arg0:J
    :sswitch_2f2
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 338
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 340
    .restart local v13       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 342
    .restart local v19       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, _arg7:Ljava/lang/String;
    move-object/from16 v21, p0

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    move-wide/from16 v26, v19

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    .line 351
    invoke-virtual/range {v21 .. v32}, Lcom/android/emailcommon/service/IEmailService$Stub;->searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 357
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:Ljava/lang/String;
    .end local v9           #_arg6:Ljava/lang/String;
    .end local v11           #_arg0:J
    .end local v13           #_arg1:J
    .end local v19           #_arg2:J
    .end local v32           #_arg7:Ljava/lang/String;
    :sswitch_332
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 361
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->folderRename(JLjava/lang/String;)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 368
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    :sswitch_34c
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 372
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->folderMove(JLjava/lang/String;)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 379
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    :sswitch_366
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 382
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->folderDelete(J)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 38
    :sswitch_data_37c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_60
        0x3 -> :sswitch_7b
        0x4 -> :sswitch_8e
        0x5 -> :sswitch_a1
        0x6 -> :sswitch_bd
        0x7 -> :sswitch_d0
        0x8 -> :sswitch_ee
        0x9 -> :sswitch_108
        0xa -> :sswitch_11b
        0xb -> :sswitch_12e
        0xc -> :sswitch_16d
        0xd -> :sswitch_184
        0xe -> :sswitch_1a0
        0xf -> :sswitch_1b7
        0x10 -> :sswitch_1cd
        0x11 -> :sswitch_1e5
        0x12 -> :sswitch_207
        0x13 -> :sswitch_21d
        0x14 -> :sswitch_237
        0x15 -> :sswitch_24d
        0x16 -> :sswitch_272
        0x17 -> :sswitch_29a
        0x18 -> :sswitch_2b0
        0x19 -> :sswitch_2bd
        0x1a -> :sswitch_2dc
        0x1b -> :sswitch_2f2
        0x1c -> :sswitch_332
        0x1d -> :sswitch_34c
        0x1e -> :sswitch_366
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
