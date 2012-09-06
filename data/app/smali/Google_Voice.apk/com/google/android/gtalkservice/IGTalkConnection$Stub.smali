.class public abstract Lcom/google/android/gtalkservice/IGTalkConnection$Stub;
.super Landroid/os/Binder;
.source "IGTalkConnection.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IGTalkConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IGTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IGTalkConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IGTalkConnection"

.field static final TRANSACTION_clearConnectionStatistics:I = 0xe

.field static final TRANSACTION_createImSessionForProvider:I = 0x5

.field static final TRANSACTION_createImSessionForProviderId:I = 0x6

.field static final TRANSACTION_getConnectionUptime:I = 0xd

.field static final TRANSACTION_getDefaultImSession:I = 0x8

.field static final TRANSACTION_getDeviceId:I = 0x3

.field static final TRANSACTION_getImSessionForAccountId:I = 0x7

.field static final TRANSACTION_getJid:I = 0x2

.field static final TRANSACTION_getLastActivityFromServerTime:I = 0x9

.field static final TRANSACTION_getLastActivityToServerTime:I = 0xa

.field static final TRANSACTION_getNumberOfConnectionsAttempted:I = 0xc

.field static final TRANSACTION_getNumberOfConnectionsMade:I = 0xb

.field static final TRANSACTION_getUsername:I = 0x1

.field static final TRANSACTION_isConnected:I = 0x4

.field static final TRANSACTION_sendHeartbeat:I = 0x10

.field static final TRANSACTION_sendHttpRequest:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gtalkservice/IGTalkConnection;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/google/android/gtalkservice/IGTalkConnection;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/google/android/gtalkservice/IGTalkConnection$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_140

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 47
    :sswitch_a
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 60
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_20
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getJid()Ljava/lang/String;

    move-result-object v3

    .line 62
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 68
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_30
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 70
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 76
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_40
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->isConnected()Z

    move-result v3

    .line 78
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_53

    move v5, v6

    :goto_4f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_53
    const/4 v5, 0x0

    goto :goto_4f

    .line 84
    .end local v3           #_result:Z
    :sswitch_55
    const-string v7, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->createImSessionForProvider(Ljava/lang/String;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v3

    .line 88
    .local v3, _result:Lcom/google/android/gtalkservice/IImSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_6b

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_6b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Lcom/google/android/gtalkservice/IImSession;
    :sswitch_6f
    const-string v7, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 97
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->createImSessionForProviderId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v3

    .line 98
    .restart local v3       #_result:Lcom/google/android/gtalkservice/IImSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v3, :cond_85

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_85
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    .line 104
    .end local v0           #_arg0:J
    .end local v3           #_result:Lcom/google/android/gtalkservice/IImSession;
    :sswitch_89
    const-string v7, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 107
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v3

    .line 108
    .restart local v3       #_result:Lcom/google/android/gtalkservice/IImSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_9f

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_9f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 114
    .end local v0           #_arg0:J
    .end local v3           #_result:Lcom/google/android/gtalkservice/IImSession;
    :sswitch_a4
    const-string v7, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v3

    .line 116
    .restart local v3       #_result:Lcom/google/android/gtalkservice/IImSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v3, :cond_b6

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_b6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 122
    .end local v3           #_result:Lcom/google/android/gtalkservice/IImSession;
    :sswitch_bb
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getLastActivityFromServerTime()J

    move-result-wide v3

    .line 124
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 130
    .end local v3           #_result:J
    :sswitch_cc
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getLastActivityToServerTime()J

    move-result-wide v3

    .line 132
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 138
    .end local v3           #_result:J
    :sswitch_dd
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getNumberOfConnectionsMade()I

    move-result v3

    .line 140
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 146
    .end local v3           #_result:I
    :sswitch_ee
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getNumberOfConnectionsAttempted()I

    move-result v3

    .line 148
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 154
    .end local v3           #_result:I
    :sswitch_ff
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->getConnectionUptime()I

    move-result v3

    .line 156
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 162
    .end local v3           #_result:I
    :sswitch_110
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->clearConnectionStatistics()V

    goto/16 :goto_9

    .line 168
    :sswitch_11a
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 172
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gtalkservice/IHttpRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IHttpRequestCallback;

    move-result-object v2

    .line 173
    .local v2, _arg1:Lcom/google/android/gtalkservice/IHttpRequestCallback;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 179
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:Lcom/google/android/gtalkservice/IHttpRequestCallback;
    :sswitch_133
    const-string v5, "com.google.android.gtalkservice.IGTalkConnection"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;->sendHeartbeat()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 43
    :sswitch_data_140
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_55
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_89
        0x8 -> :sswitch_a4
        0x9 -> :sswitch_bb
        0xa -> :sswitch_cc
        0xb -> :sswitch_dd
        0xc -> :sswitch_ee
        0xd -> :sswitch_ff
        0xe -> :sswitch_110
        0xf -> :sswitch_11a
        0x10 -> :sswitch_133
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
