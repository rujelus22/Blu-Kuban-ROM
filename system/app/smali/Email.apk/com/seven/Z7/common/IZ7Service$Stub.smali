.class public abstract Lcom/seven/Z7/common/IZ7Service$Stub;
.super Landroid/os/Binder;
.source "IZ7Service.java"

# interfaces
.implements Lcom/seven/Z7/common/IZ7Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/IZ7Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/IZ7Service$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.seven.Z7.common.IZ7Service"

    invoke-virtual {p0, p0, v0}, Lcom/seven/Z7/common/IZ7Service$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/seven/Z7/common/IZ7Service;
    .registers 3
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "com.seven.Z7.common.IZ7Service"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/seven/Z7/common/IZ7Service;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/seven/Z7/common/IZ7Service;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/seven/Z7/common/IZ7Service$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/seven/Z7/common/IZ7Service$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
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
    .line 40
    sparse-switch p1, :sswitch_data_894

    .line 837
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 44
    :sswitch_8
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x1

    goto :goto_7

    .line 49
    :sswitch_11
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/seven/Z7/common/IZ7ServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/seven/Z7/common/IZ7ServiceCallback;

    move-result-object v4

    .line 53
    .local v4, _arg0:Lcom/seven/Z7/common/IZ7ServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3a

    .line 54
    sget-object v3, Lcom/seven/Z7/common/Z7CallbackFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/seven/Z7/common/Z7CallbackFilter;

    .line 59
    .local v5, _arg1:Lcom/seven/Z7/common/Z7CallbackFilter;
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->registerCallback(Lcom/seven/Z7/common/IZ7ServiceCallback;Lcom/seven/Z7/common/Z7CallbackFilter;)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v3, 0x1

    goto :goto_7

    .line 57
    .end local v5           #_arg1:Lcom/seven/Z7/common/Z7CallbackFilter;
    :cond_3a
    const/4 v5, 0x0

    .restart local v5       #_arg1:Lcom/seven/Z7/common/Z7CallbackFilter;
    goto :goto_30

    .line 65
    .end local v4           #_arg0:Lcom/seven/Z7/common/IZ7ServiceCallback;
    .end local v5           #_arg1:Lcom/seven/Z7/common/Z7CallbackFilter;
    :sswitch_3c
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/seven/Z7/common/IZ7ServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/seven/Z7/common/IZ7ServiceCallback;

    move-result-object v4

    .line 68
    .restart local v4       #_arg0:Lcom/seven/Z7/common/IZ7ServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->unregisterCallback(Lcom/seven/Z7/common/IZ7ServiceCallback;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v3, 0x1

    goto :goto_7

    .line 74
    .end local v4           #_arg0:Lcom/seven/Z7/common/IZ7ServiceCallback;
    :sswitch_55
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 77
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->cancelTask(I)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v3, 0x1

    goto :goto_7

    .line 83
    .end local v4           #_arg0:I
    :sswitch_6a
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/common/IZ7Service$Stub;->isNetworkAvailable()Z

    move-result v32

    .line 85
    .local v32, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v32, :cond_82

    const/4 v3, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v3, 0x1

    goto :goto_7

    .line 86
    :cond_82
    const/4 v3, 0x0

    goto :goto_7b

    .line 91
    .end local v32           #_result:Z
    :sswitch_84
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/common/IZ7Service$Stub;->isEngineInitialized()Z

    move-result v32

    .line 93
    .restart local v32       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v32, :cond_9d

    const/4 v3, 0x1

    :goto_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 94
    :cond_9d
    const/4 v3, 0x0

    goto :goto_95

    .line 99
    .end local v32           #_result:Z
    :sswitch_9f
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 104
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->registerThirdPartApp(Ljava/lang/String;I)Z

    move-result v32

    .line 105
    .restart local v32       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v32, :cond_c2

    const/4 v3, 0x1

    :goto_ba
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 106
    :cond_c2
    const/4 v3, 0x0

    goto :goto_ba

    .line 111
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v32           #_result:Z
    :sswitch_c4
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->removeAccount(I)V

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 120
    .end local v4           #_arg0:I
    :sswitch_da
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->refreshData(I)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 129
    .end local v4           #_arg0:I
    :sswitch_f0
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 133
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 134
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->checkContentUpdates(II)I

    move-result v32

    .line 135
    .local v32, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 141
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v32           #_result:I
    :sswitch_112
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 147
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 148
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->setServiceState(III)I

    move-result v32

    .line 149
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 155
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v32           #_result:I
    :sswitch_138
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 159
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 161
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_161

    const/4 v6, 0x1

    .line 162
    .local v6, _arg2:Z
    :goto_14e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->getServiceState(IIZ)I

    move-result v32

    .line 163
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 161
    .end local v6           #_arg2:Z
    .end local v32           #_result:I
    :cond_161
    const/4 v6, 0x0

    goto :goto_14e

    .line 169
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_163
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 173
    .restart local v4       #_arg0:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v33

    .line 174
    .local v33, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 175
    .local v5, _arg1:Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->updateSettings(ILjava/util/Map;)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 181
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/util/Map;
    .end local v33           #cl:Ljava/lang/ClassLoader;
    :sswitch_189
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->setLogLevel(I)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 190
    .end local v4           #_arg0:I
    :sswitch_19f
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/common/IZ7Service$Stub;->zipLogs()Ljava/lang/String;

    move-result-object v32

    .line 192
    .local v32, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 198
    .end local v32           #_result:Ljava/lang/String;
    :sswitch_1b7
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1df

    const/4 v4, 0x1

    .line 202
    .local v4, _arg0:Z
    :goto_1c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e1

    const/4 v5, 0x1

    .line 203
    .local v5, _arg1:Z
    :goto_1cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->checkForUpgrade(ZZ)I

    move-result v32

    .line 204
    .local v32, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 200
    .end local v4           #_arg0:Z
    .end local v5           #_arg1:Z
    .end local v32           #_result:I
    :cond_1df
    const/4 v4, 0x0

    goto :goto_1c5

    .line 202
    .restart local v4       #_arg0:Z
    :cond_1e1
    const/4 v5, 0x0

    goto :goto_1cc

    .line 210
    .end local v4           #_arg0:Z
    :sswitch_1e3
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/common/IZ7Service$Stub;->upgradeDownload()I

    move-result v32

    .line 212
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 218
    .end local v32           #_result:I
    :sswitch_1fb
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/common/IZ7Service$Stub;->clearUpgradeNotification()V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 225
    :sswitch_20b
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 229
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_231

    .line 230
    sget-object v3, Lcom/seven/Z7/common/Z7Preference;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/seven/Z7/common/Z7Preference;

    .line 235
    .local v5, _arg1:Lcom/seven/Z7/common/Z7Preference;
    :goto_226
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->setPreference(ILcom/seven/Z7/common/Z7Preference;)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 233
    .end local v5           #_arg1:Lcom/seven/Z7/common/Z7Preference;
    :cond_231
    const/4 v5, 0x0

    .restart local v5       #_arg1:Lcom/seven/Z7/common/Z7Preference;
    goto :goto_226

    .line 241
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/seven/Z7/common/Z7Preference;
    :sswitch_233
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 245
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26a

    .line 246
    sget-object v3, Lcom/seven/Z7/common/Z7Preference;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/seven/Z7/common/Z7Preference;

    .line 251
    .restart local v5       #_arg1:Lcom/seven/Z7/common/Z7Preference;
    :goto_24e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->getPreference(ILcom/seven/Z7/common/Z7Preference;)Lcom/seven/Z7/common/Z7Preference;

    move-result-object v32

    .line 252
    .local v32, _result:Lcom/seven/Z7/common/Z7Preference;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v32, :cond_26c

    .line 254
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v3, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/seven/Z7/common/Z7Preference;->writeToParcel(Landroid/os/Parcel;I)V

    .line 260
    :goto_267
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 249
    .end local v5           #_arg1:Lcom/seven/Z7/common/Z7Preference;
    .end local v32           #_result:Lcom/seven/Z7/common/Z7Preference;
    :cond_26a
    const/4 v5, 0x0

    .restart local v5       #_arg1:Lcom/seven/Z7/common/Z7Preference;
    goto :goto_24e

    .line 258
    .restart local v32       #_result:Lcom/seven/Z7/common/Z7Preference;
    :cond_26c
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_267

    .line 264
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/seven/Z7/common/Z7Preference;
    .end local v32           #_result:Lcom/seven/Z7/common/Z7Preference;
    :sswitch_273
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 268
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->removePreference(ILjava/lang/String;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 275
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_28d
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 278
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->getPreferences(I)Ljava/util/Map;

    move-result-object v32

    .line 279
    .local v32, _result:Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 281
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 285
    .end local v4           #_arg0:I
    .end local v32           #_result:Ljava/util/Map;
    :sswitch_2ab
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->setMSISDN(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 294
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_2c1
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2eb

    .line 297
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 302
    .local v4, _arg0:Landroid/os/Bundle;
    :goto_2d8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->getAvailableConnectors(Landroid/os/Bundle;)I

    move-result v32

    .line 303
    .local v32, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 300
    .end local v4           #_arg0:Landroid/os/Bundle;
    .end local v32           #_result:I
    :cond_2eb
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/os/Bundle;
    goto :goto_2d8

    .line 309
    .end local v4           #_arg0:Landroid/os/Bundle;
    :sswitch_2ed
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_325

    .line 312
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 317
    .restart local v4       #_arg0:Landroid/os/Bundle;
    :goto_304
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->addAccount(Landroid/os/Bundle;)I

    move-result v32

    .line 318
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    if-eqz v4, :cond_327

    .line 321
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 327
    :goto_322
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 315
    .end local v4           #_arg0:Landroid/os/Bundle;
    .end local v32           #_result:I
    :cond_325
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/os/Bundle;
    goto :goto_304

    .line 325
    .restart local v32       #_result:I
    :cond_327
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_322

    .line 331
    .end local v4           #_arg0:Landroid/os/Bundle;
    .end local v32           #_result:I
    :sswitch_32e
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 335
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 336
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->relogin(ILjava/lang/String;)I

    move-result v32

    .line 337
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 343
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v32           #_result:I
    :sswitch_350
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 346
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->reloginWithDoCerts(I)I

    move-result v32

    .line 347
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 353
    .end local v4           #_arg0:I
    .end local v32           #_result:I
    :sswitch_36e
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_387

    const/4 v4, 0x1

    .line 356
    .local v4, _arg0:Z
    :goto_37c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->pause(Z)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 355
    .end local v4           #_arg0:Z
    :cond_387
    const/4 v4, 0x0

    goto :goto_37c

    .line 362
    :sswitch_389
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 366
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 368
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->isExtraFeatureAvailable(IILjava/lang/String;)Z

    move-result v32

    .line 370
    .local v32, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v32, :cond_3b0

    const/4 v3, 0x1

    :goto_3a8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 371
    :cond_3b0
    const/4 v3, 0x0

    goto :goto_3a8

    .line 376
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v32           #_result:Z
    :sswitch_3b2
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/common/IZ7Service$Stub;->requestSubscriptionStatus()V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 383
    :sswitch_3c2
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/common/IZ7Service$Stub;->isMsisdnValidationRequired()Z

    move-result v32

    .line 385
    .restart local v32       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v32, :cond_3db

    const/4 v3, 0x1

    :goto_3d3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 386
    :cond_3db
    const/4 v3, 0x0

    goto :goto_3d3

    .line 391
    .end local v32           #_result:Z
    :sswitch_3dd
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->validateMSISDN(Ljava/lang/String;)Z

    move-result v32

    .line 395
    .restart local v32       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v32, :cond_3fc

    const/4 v3, 0x1

    :goto_3f4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 396
    :cond_3fc
    const/4 v3, 0x0

    goto :goto_3f4

    .line 401
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v32           #_result:Z
    :sswitch_3fe
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 404
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->submitValidateUrlTask(Ljava/lang/String;)I

    move-result v32

    .line 405
    .local v32, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 411
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v32           #_result:I
    :sswitch_41c
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 414
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->clearNotifications(I)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 420
    .end local v4           #_arg0:I
    :sswitch_432
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 424
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 425
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->clearDownloadNotification(II)V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 431
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_44c
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 437
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 439
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .local v7, _arg3:J
    move-object/from16 v3, p0

    .line 440
    invoke-virtual/range {v3 .. v8}, Lcom/seven/Z7/common/IZ7Service$Stub;->delete(IIIJ)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 446
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:J
    :sswitch_46e
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    sget-object v3, Lcom/seven/Z7/common/Z7EmailId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/seven/Z7/common/Z7EmailId;

    .line 449
    .local v4, _arg0:[Lcom/seven/Z7/common/Z7EmailId;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->massDelete([Lcom/seven/Z7/common/Z7EmailId;)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 455
    .end local v4           #_arg0:[Lcom/seven/Z7/common/Z7EmailId;
    :sswitch_48a
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 459
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 461
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 463
    .local v12, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4b2

    const/4 v7, 0x1

    .local v7, _arg3:Z
    :goto_4a4
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v14, v7

    .line 464
    invoke-virtual/range {v9 .. v14}, Lcom/seven/Z7/common/IZ7Service$Stub;->markRead(IIJZ)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 463
    .end local v7           #_arg3:Z
    :cond_4b2
    const/4 v7, 0x0

    goto :goto_4a4

    .line 470
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v12           #_arg2:J
    :sswitch_4b4
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    sget-object v3, Lcom/seven/Z7/common/Z7EmailId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/seven/Z7/common/Z7EmailId;

    .line 474
    .local v4, _arg0:[Lcom/seven/Z7/common/Z7EmailId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4d7

    const/4 v5, 0x1

    .line 475
    .local v5, _arg1:Z
    :goto_4cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->massMarkRead([Lcom/seven/Z7/common/Z7EmailId;Z)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 474
    .end local v5           #_arg1:Z
    :cond_4d7
    const/4 v5, 0x0

    goto :goto_4cc

    .line 481
    .end local v4           #_arg0:[Lcom/seven/Z7/common/Z7EmailId;
    :sswitch_4d9
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 485
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 487
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 489
    .restart local v12       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg3:I
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v14, v7

    .line 490
    invoke-virtual/range {v9 .. v14}, Lcom/seven/Z7/common/IZ7Service$Stub;->moveMail(IIJI)V

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 496
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v7           #_arg3:I
    .end local v12           #_arg2:J
    :sswitch_4fe
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 500
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 502
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 504
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 505
    .restart local v7       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/seven/Z7/common/IZ7Service$Stub;->sendMessage(IIII)I

    move-result v32

    .line 506
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 512
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    .end local v32           #_result:I
    :sswitch_528
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 516
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 518
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 520
    .restart local v12       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg3:I
    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v14, v7

    .line 521
    invoke-virtual/range {v9 .. v14}, Lcom/seven/Z7/common/IZ7Service$Stub;->handleMeetingRequestAction(IIJI)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 527
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v7           #_arg3:I
    .end local v12           #_arg2:J
    :sswitch_54d
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 531
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 533
    .local v16, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 535
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_583

    const/4 v7, 0x1

    .line 537
    .local v7, _arg3:Z
    :goto_567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, _arg4:Ljava/lang/String;
    move-object/from16 v14, p0

    move v15, v4

    move/from16 v18, v6

    move/from16 v19, v7

    .line 538
    invoke-virtual/range {v14 .. v20}, Lcom/seven/Z7/common/IZ7Service$Stub;->downloadMailBody(IJIZLjava/lang/String;)I

    move-result v32

    .line 539
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 535
    .end local v7           #_arg3:Z
    .end local v20           #_arg4:Ljava/lang/String;
    .end local v32           #_result:I
    :cond_583
    const/4 v7, 0x0

    goto :goto_567

    .line 545
    .end local v4           #_arg0:I
    .end local v6           #_arg2:I
    .end local v16           #_arg1:J
    :sswitch_585
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 549
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 551
    .restart local v16       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 552
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->cancelDownloadMailBody(IJI)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 558
    .end local v4           #_arg0:I
    .end local v6           #_arg2:I
    .end local v16           #_arg1:J
    :sswitch_5a5
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 562
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 564
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 566
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 567
    .local v7, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/seven/Z7/common/IZ7Service$Stub;->downloadMailAttachment(IIILjava/lang/String;)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 573
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    :sswitch_5c7
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 577
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 579
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 580
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->cancelDownloadMailAttachment(III)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 586
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_5e5
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 590
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 591
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->downloadMailContentAttachments(II)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 597
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_5ff
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 601
    .restart local v4       #_arg0:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v33

    .line 602
    .restart local v33       #cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 603
    .local v5, _arg1:Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->updateFolderSyncModes(ILjava/util/Map;)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 609
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/util/Map;
    .end local v33           #cl:Ljava/lang/ClassLoader;
    :sswitch_625
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 613
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 614
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->clearEmailSendFailedNotifications(II)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 620
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_63f
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 623
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->clearEmailNotifications(I)V

    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 629
    .end local v4           #_arg0:I
    :sswitch_655
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_685

    .line 632
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 637
    .local v4, _arg0:Landroid/os/Bundle;
    :goto_66c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->setAccountParameters(Landroid/os/Bundle;)V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v4, :cond_687

    .line 640
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 646
    :goto_682
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 635
    .end local v4           #_arg0:Landroid/os/Bundle;
    :cond_685
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/os/Bundle;
    goto :goto_66c

    .line 644
    :cond_687
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_682

    .line 650
    .end local v4           #_arg0:Landroid/os/Bundle;
    :sswitch_68e
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 653
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->getAccountStatusDetails(I)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 659
    .end local v4           #_arg0:I
    :sswitch_6a4
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->search(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 668
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_6ba
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 671
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->searchMailRecipient(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 677
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_6d0
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/seven/Z7/common/IZ7Service$Stub;->stopSearch()V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 684
    :sswitch_6e0
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v29

    .line 687
    .local v29, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/common/IZ7Service$Stub;->saveSearchResult(J)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 693
    .end local v29           #_arg0:J
    :sswitch_6f8
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 697
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_719

    const/4 v6, 0x1

    .line 700
    .local v6, _arg2:Z
    :goto_70e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->contactSearchRelogin(ILjava/lang/String;Z)V

    .line 701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 699
    .end local v6           #_arg2:Z
    :cond_719
    const/4 v6, 0x0

    goto :goto_70e

    .line 706
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_71b
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    sget-object v3, Lcom/seven/Z7/common/resources/Z7ResourceId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    .line 709
    .local v31, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/seven/Z7/common/resources/Z7ResourceId;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/seven/Z7/common/IZ7Service$Stub;->downloadResourceData(Ljava/util/List;)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 715
    .end local v31           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/seven/Z7/common/resources/Z7ResourceId;>;"
    :sswitch_737
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 719
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 721
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 722
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->downloadMailAllAttachments(IILjava/lang/String;)I

    move-result v32

    .line 723
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 729
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v32           #_result:I
    :sswitch_75d
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 733
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 734
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->cancelDownloadMailAllAttachments(II)V

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 740
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_777
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 744
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 745
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->purgeTrashFolder(II)V

    .line 746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 751
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_791
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    sget-object v3, Lcom/seven/Z7/common/Z7EmailId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/seven/Z7/common/Z7EmailId;

    .line 755
    .local v4, _arg0:[Lcom/seven/Z7/common/Z7EmailId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 757
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 758
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->massMoveMail([Lcom/seven/Z7/common/Z7EmailId;II)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 764
    .end local v4           #_arg0:[Lcom/seven/Z7/common/Z7EmailId;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_7b5
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    sget-object v3, Lcom/seven/Z7/common/Z7EmailId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/seven/Z7/common/Z7EmailId;

    .line 767
    .restart local v4       #_arg0:[Lcom/seven/Z7/common/Z7EmailId;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->cancelMassMoveMail([Lcom/seven/Z7/common/Z7EmailId;)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 773
    .end local v4           #_arg0:[Lcom/seven/Z7/common/Z7EmailId;
    :sswitch_7d1
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 777
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 779
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 781
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 783
    .local v7, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 785
    .local v20, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v27

    .local v27, _arg5:J
    move-object/from16 v21, p0

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v20

    .line 786
    invoke-virtual/range {v21 .. v28}, Lcom/seven/Z7/common/IZ7Service$Stub;->searchMail(IILjava/lang/String;IIJ)I

    move-result v32

    .line 787
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 793
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:I
    .end local v20           #_arg4:I
    .end local v27           #_arg5:J
    .end local v32           #_result:I
    :sswitch_80d
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 797
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 799
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 800
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/seven/Z7/common/IZ7Service$Stub;->loadMoreMails(III)I

    move-result v32

    .line 801
    .restart local v32       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 807
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v32           #_result:I
    :sswitch_833
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 810
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/seven/Z7/common/IZ7Service$Stub;->clearAllDownloadNotifications(I)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 816
    .end local v4           #_arg0:I
    :sswitch_849
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    sget-object v3, Lcom/seven/Z7/common/Z7EmailId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/seven/Z7/common/Z7EmailId;

    .line 820
    .local v4, _arg0:[Lcom/seven/Z7/common/Z7EmailId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_86c

    const/4 v5, 0x1

    .line 821
    .local v5, _arg1:Z
    :goto_861
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->markFavorite([Lcom/seven/Z7/common/Z7EmailId;Z)V

    .line 822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 820
    .end local v5           #_arg1:Z
    :cond_86c
    const/4 v5, 0x0

    goto :goto_861

    .line 827
    .end local v4           #_arg0:[Lcom/seven/Z7/common/Z7EmailId;
    :sswitch_86e
    const-string v3, "com.seven.Z7.common.IZ7Service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    sget-object v3, Lcom/seven/Z7/common/Z7EmailId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/seven/Z7/common/Z7EmailId;

    .line 831
    .restart local v4       #_arg0:[Lcom/seven/Z7/common/Z7EmailId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_891

    const/4 v5, 0x1

    .line 832
    .restart local v5       #_arg1:Z
    :goto_886
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/seven/Z7/common/IZ7Service$Stub;->markReplied([Lcom/seven/Z7/common/Z7EmailId;Z)V

    .line 833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 831
    .end local v5           #_arg1:Z
    :cond_891
    const/4 v5, 0x0

    goto :goto_886

    .line 40
    nop

    :sswitch_data_894
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_55
        0x4 -> :sswitch_6a
        0x5 -> :sswitch_84
        0x6 -> :sswitch_9f
        0x7 -> :sswitch_c4
        0x8 -> :sswitch_da
        0x9 -> :sswitch_f0
        0xa -> :sswitch_112
        0xb -> :sswitch_138
        0xc -> :sswitch_163
        0xd -> :sswitch_189
        0xe -> :sswitch_19f
        0xf -> :sswitch_1b7
        0x10 -> :sswitch_1e3
        0x11 -> :sswitch_1fb
        0x12 -> :sswitch_20b
        0x13 -> :sswitch_233
        0x14 -> :sswitch_273
        0x15 -> :sswitch_28d
        0x16 -> :sswitch_2ab
        0x17 -> :sswitch_2c1
        0x18 -> :sswitch_2ed
        0x19 -> :sswitch_32e
        0x1a -> :sswitch_350
        0x1b -> :sswitch_36e
        0x1c -> :sswitch_389
        0x1d -> :sswitch_3b2
        0x1e -> :sswitch_3c2
        0x1f -> :sswitch_3dd
        0x20 -> :sswitch_3fe
        0x21 -> :sswitch_41c
        0x22 -> :sswitch_432
        0x23 -> :sswitch_44c
        0x24 -> :sswitch_46e
        0x25 -> :sswitch_48a
        0x26 -> :sswitch_4b4
        0x27 -> :sswitch_4d9
        0x28 -> :sswitch_4fe
        0x29 -> :sswitch_528
        0x2a -> :sswitch_54d
        0x2b -> :sswitch_585
        0x2c -> :sswitch_5a5
        0x2d -> :sswitch_5c7
        0x2e -> :sswitch_5e5
        0x2f -> :sswitch_5ff
        0x30 -> :sswitch_625
        0x31 -> :sswitch_63f
        0x32 -> :sswitch_655
        0x33 -> :sswitch_68e
        0x34 -> :sswitch_6a4
        0x35 -> :sswitch_6ba
        0x36 -> :sswitch_6d0
        0x37 -> :sswitch_6e0
        0x38 -> :sswitch_6f8
        0x39 -> :sswitch_71b
        0x3a -> :sswitch_737
        0x3b -> :sswitch_75d
        0x3c -> :sswitch_777
        0x3d -> :sswitch_791
        0x3e -> :sswitch_7b5
        0x3f -> :sswitch_7d1
        0x40 -> :sswitch_80d
        0x41 -> :sswitch_833
        0x42 -> :sswitch_849
        0x43 -> :sswitch_86e
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
