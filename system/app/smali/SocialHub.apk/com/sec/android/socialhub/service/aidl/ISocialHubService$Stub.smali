.class public abstract Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;
.super Landroid/os/Binder;
.source "ISocialHubService.java"

# interfaces
.implements Lcom/sec/android/socialhub/service/aidl/ISocialHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/aidl/ISocialHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/socialhub/service/aidl/ISocialHubService;
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
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 19
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
    sparse-switch p1, :sswitch_data_1aa

    .line 204
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 42
    :sswitch_8
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->removeAccount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 53
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v1, 0x1

    goto :goto_7

    .line 59
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:[Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_2e
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 65
    .restart local v3       #_arg1:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, _arg2:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, _arg3:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, _arg4:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v7, 0x1

    .local v7, _arg5:Z
    :goto_50
    move-object v1, p0

    .line 72
    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v13

    .line 73
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v1, 0x1

    goto :goto_7

    .line 71
    .end local v7           #_arg5:Z
    .end local v13           #_result:I
    :cond_5f
    const/4 v7, 0x0

    goto :goto_50

    .line 79
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:[Ljava/lang/String;
    .end local v4           #_arg2:[Ljava/lang/String;
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_arg4:[Ljava/lang/String;
    :sswitch_61
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_85

    const/4 v4, 0x1

    .line 86
    .local v4, _arg2:Z
    :goto_77
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->requestServerSync(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v13

    .line 87
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v1, 0x1

    goto :goto_7

    .line 85
    .end local v4           #_arg2:Z
    .end local v13           #_result:I
    :cond_85
    const/4 v4, 0x0

    goto :goto_77

    .line 93
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_87
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->requestDBSync(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 99
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 105
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_a5
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, _arg1:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 113
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 115
    .restart local v5       #_arg3:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 117
    .restart local v6       #_arg4:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, _arg5:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg6:I
    move-object v1, p0

    .line 120
    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->updateMessage(Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v13

    .line 121
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 127
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:[Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_arg4:[Ljava/lang/String;
    .end local v7           #_arg5:[Ljava/lang/String;
    .end local v8           #_arg6:I
    .end local v13           #_result:I
    :sswitch_d8
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 133
    .local v3, _arg1:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11f

    .line 144
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 150
    .local v9, _arg7:Landroid/os/ParcelFileDescriptor;
    :goto_10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, _arg8:Ljava/lang/String;
    move-object v1, p0

    .line 151
    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->uploadData(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v13

    .line 152
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 147
    .end local v9           #_arg7:Landroid/os/ParcelFileDescriptor;
    .end local v10           #_arg8:Ljava/lang/String;
    .end local v13           #_result:I
    :cond_11f
    const/4 v9, 0x0

    .restart local v9       #_arg7:Landroid/os/ParcelFileDescriptor;
    goto :goto_10b

    .line 158
    .end local v2           #_arg0:I
    .end local v3           #_arg1:[I
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v8           #_arg6:Ljava/lang/String;
    .end local v9           #_arg7:Landroid/os/ParcelFileDescriptor;
    :sswitch_121
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 162
    .local v11, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v11, v12, v3}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->getContactName(JLjava/lang/String;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    move-result-object v13

    .line 164
    .local v13, _result:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v13, :cond_148

    .line 166
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_145
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 170
    :cond_148
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_145

    .line 176
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    .end local v13           #_result:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    :sswitch_14f
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;

    move-result-object v2

    .line 179
    .local v2, _arg0:Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->registerCallback(Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;)I

    move-result v13

    .line 180
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 186
    .end local v2           #_arg0:Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;
    .end local v13           #_result:I
    :sswitch_16d
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;

    move-result-object v2

    .line 189
    .restart local v2       #_arg0:Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->unregisterCallback(Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 195
    .end local v2           #_arg0:Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;
    :sswitch_185
    const-string v1, "com.sec.android.socialhub.service.aidl.ISocialHubService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a5

    const/4 v2, 0x1

    .line 198
    .local v2, _arg0:Z
    :goto_193
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->setSyncEnabled(Z)Z

    move-result v13

    .line 199
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v13, :cond_1a7

    const/4 v1, 0x1

    :goto_19d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 197
    .end local v2           #_arg0:Z
    .end local v13           #_result:Z
    :cond_1a5
    const/4 v2, 0x0

    goto :goto_193

    .line 200
    .restart local v2       #_arg0:Z
    .restart local v13       #_result:Z
    :cond_1a7
    const/4 v1, 0x0

    goto :goto_19d

    .line 38
    nop

    :sswitch_data_1aa
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_61
        0x4 -> :sswitch_87
        0x5 -> :sswitch_a5
        0x6 -> :sswitch_d8
        0x7 -> :sswitch_121
        0x8 -> :sswitch_14f
        0x9 -> :sswitch_16d
        0xa -> :sswitch_185
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
