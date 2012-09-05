.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;
.super Landroid/os/Binder;
.source "IVpnService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_4ce

    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_a
    return v7

    .line 45
    :sswitch_b
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 50
    :sswitch_11
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    move-result-object v0

    .line 53
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z

    move-result v3

    .line 54
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_28

    move v6, v7

    :cond_28
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 60
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;
    .end local v3           #_result:Z
    :sswitch_2c
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z

    move-result v3

    .line 64
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_43

    move v6, v7

    :cond_43
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 70
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;
    .end local v3           #_result:Z
    :sswitch_47
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object v0

    .line 73
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result v3

    .line 74
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v3, :cond_5e

    move v6, v7

    :cond_5e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 80
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;
    .end local v3           #_result:Z
    :sswitch_62
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object v0

    .line 83
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result v3

    .line 84
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_79

    move v6, v7

    :cond_79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 90
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;
    .end local v3           #_result:Z
    :sswitch_7d
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    move-result-object v0

    .line 93
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z

    move-result v3

    .line 94
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_94

    move v6, v7

    :cond_94
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 100
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;
    .end local v3           #_result:Z
    :sswitch_99
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    move-result-object v0

    .line 103
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z

    move-result v3

    .line 104
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v3, :cond_b0

    move v6, v7

    :cond_b0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 110
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;
    .end local v3           #_result:Z
    :sswitch_b5
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object v0

    .line 113
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result v3

    .line 114
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_cc

    move v6, v7

    :cond_cc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 120
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
    .end local v3           #_result:Z
    :sswitch_d1
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object v0

    .line 123
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result v3

    .line 124
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_e8

    move v6, v7

    :cond_e8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 130
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
    .end local v3           #_result:Z
    :sswitch_ed
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v0

    .line 133
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v3

    .line 134
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v3, :cond_104

    move v6, v7

    :cond_104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 140
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .end local v3           #_result:Z
    :sswitch_109
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v0

    .line 143
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v3

    .line 144
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v3, :cond_120

    move v6, v7

    :cond_120
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 150
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .end local v3           #_result:Z
    :sswitch_125
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v0

    .line 153
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result v3

    .line 154
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v3, :cond_13c

    move v6, v7

    :cond_13c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 160
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .end local v3           #_result:Z
    :sswitch_141
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v0

    .line 163
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result v3

    .line 164
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v3, :cond_158

    move v6, v7

    :cond_158
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 170
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .end local v3           #_result:Z
    :sswitch_15d
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    move-result-object v0

    .line 173
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z

    move-result v3

    .line 174
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v3, :cond_174

    move v6, v7

    :cond_174
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 180
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
    .end local v3           #_result:Z
    :sswitch_179
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    move-result-object v0

    .line 183
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z

    move-result v3

    .line 184
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v3, :cond_190

    move v6, v7

    :cond_190
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 190
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
    .end local v3           #_result:Z
    :sswitch_195
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v0

    .line 193
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v3

    .line 194
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v3, :cond_1ac

    move v6, v7

    :cond_1ac
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 200
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    .end local v3           #_result:Z
    :sswitch_1b1
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v0

    .line 203
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v3

    .line 204
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v3, :cond_1c8

    move v6, v7

    :cond_1c8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 210
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    .end local v3           #_result:Z
    :sswitch_1cd
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetAppMessages()Ljava/util/List;

    move-result-object v5

    .line 212
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 218
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;>;"
    :sswitch_1de
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ClearAppMessages()V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 225
    :sswitch_1eb
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v3

    .line 227
    .local v3, _result:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v3, :cond_202

    invoke-interface {v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_1fd
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :cond_202
    move-object v6, v8

    goto :goto_1fd

    .line 233
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    :sswitch_204
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetVpnLogger()Lcom/cisco/anyconnect/vpn/android/service/IVpnLogger;

    move-result-object v3

    .line 235
    .local v3, _result:Lcom/cisco/anyconnect/vpn/android/service/IVpnLogger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v3, :cond_216

    invoke-interface {v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnLogger;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_216
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 241
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/IVpnLogger;
    :sswitch_21b
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetClientCertificates()Z

    move-result v3

    .line 243
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v3, :cond_22a

    move v6, v7

    :cond_22a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 249
    .end local v3           #_result:Z
    :sswitch_22f
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->IsConnected()Z

    move-result v3

    .line 251
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v3, :cond_23e

    move v6, v7

    :cond_23e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 257
    .end local v3           #_result:Z
    :sswitch_243
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_265

    .line 260
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 265
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :goto_256
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v3

    .line 266
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v3, :cond_260

    move v6, v7

    :cond_260
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 263
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .end local v3           #_result:Z
    :cond_265
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    goto :goto_256

    .line 272
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :sswitch_267
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_297

    .line 275
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 281
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :goto_27a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_299

    .line 282
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;

    .line 287
    .local v2, _arg1:Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;
    :goto_288
    invoke-virtual {p0, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ConnectWithPrefill(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;)Z

    move-result v3

    .line 288
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v3, :cond_292

    move v6, v7

    :cond_292
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 278
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .end local v2           #_arg1:Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;
    .end local v3           #_result:Z
    :cond_297
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    goto :goto_27a

    .line 285
    :cond_299
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;
    goto :goto_288

    .line 294
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .end local v2           #_arg1:Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;
    :sswitch_29b
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->Disconnect()V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 301
    :sswitch_2a8
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2bc

    move v0, v7

    .line 304
    .local v0, _arg0:Z
    :goto_2b4
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SetBannerResponse(Z)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .end local v0           #_arg0:Z
    :cond_2bc
    move v0, v6

    .line 303
    goto :goto_2b4

    .line 310
    :sswitch_2be
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2d2

    move v0, v7

    .line 313
    .restart local v0       #_arg0:Z
    :goto_2ca
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SetCertBannerResponse(Z)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .end local v0           #_arg0:Z
    :cond_2d2
    move v0, v6

    .line 312
    goto :goto_2ca

    .line 319
    :sswitch_2d4
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2ef

    .line 322
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    .line 327
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;
    :goto_2e7
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 325
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;
    :cond_2ef
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;
    goto :goto_2e7

    .line 333
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;
    :sswitch_2f1
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPreferences()Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;

    move-result-object v3

    .line 335
    .local v3, _result:Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v3, :cond_307

    .line 337
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    invoke-virtual {v3, p3, v7}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 341
    :cond_307
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 347
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    :sswitch_30c
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_32e

    .line 350
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;

    .line 355
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    :goto_31f
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SavePreferences(Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;)Z

    move-result v3

    .line 356
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v3, :cond_329

    move v6, v7

    :cond_329
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 353
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    .end local v3           #_result:Z
    :cond_32e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    goto :goto_31f

    .line 362
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    :sswitch_330
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SetNewTunnelGroup(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 371
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_341
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_355

    move v0, v7

    .line 374
    .local v0, _arg0:Z
    :goto_34d
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->EnableStateNotifications(Z)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .end local v0           #_arg0:Z
    :cond_355
    move v0, v6

    .line 373
    goto :goto_34d

    .line 380
    :sswitch_357
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetLastStats()Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    move-result-object v3

    .line 382
    .local v3, _result:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v3, :cond_36d

    .line 384
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    invoke-virtual {v3, p3, v7}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 388
    :cond_36d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 394
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;
    :sswitch_372
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 397
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RequestImportPKCS12([B)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v3

    .line 398
    .local v3, _result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    if-eqz v3, :cond_38c

    .line 400
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    invoke-virtual {v3, p3, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 404
    :cond_38c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 410
    .end local v0           #_arg0:[B
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :sswitch_391
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 414
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ImportPKCS12WithPassword([BLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v3

    .line 416
    .restart local v3       #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v3, :cond_3af

    .line 418
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {v3, p3, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 422
    :cond_3af
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 428
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :sswitch_3b4
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ShutdownService(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 437
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3c5
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->DeleteCurrentProfile()Z

    move-result v3

    .line 439
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v3, :cond_3d4

    move v6, v7

    :cond_3d4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 445
    .end local v3           #_result:Z
    :sswitch_3d9
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetCurrentProfileContents()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 453
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3ea
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 459
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v3, :cond_401

    move v6, v7

    :cond_401
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 465
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_406
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->EnumerateAllCertificates()Ljava/util/List;

    move-result-object v4

    .line 467
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 473
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;>;"
    :sswitch_417
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 476
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->DeleteCertificates(Ljava/util/List;)Z

    move-result v3

    .line 477
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    if-eqz v3, :cond_42a

    move v6, v7

    :cond_42a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 483
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_result:Z
    :sswitch_42f
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetVpnServiceVersion()I

    move-result v3

    .line 485
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 491
    .end local v3           #_result:I
    :sswitch_440
    const-string v6, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetAnyConnectVersion()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 499
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_451
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ImportDefaultL10nData()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v3

    .line 501
    .local v3, _result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v3, :cond_467

    .line 503
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    invoke-virtual {v3, p3, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 507
    :cond_467
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 513
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :sswitch_46c
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ImportServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v3

    .line 519
    .restart local v3       #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v3, :cond_48a

    .line 521
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    invoke-virtual {v3, p3, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 525
    :cond_48a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 531
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :sswitch_48f
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->DeleteL10nData()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v3

    .line 533
    .restart local v3       #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v3, :cond_4a5

    .line 535
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {v3, p3, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 539
    :cond_4a5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 545
    .end local v3           #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :sswitch_4aa
    const-string v8, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4cc

    .line 548
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    .line 553
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
    :goto_4bd
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z

    move-result v3

    .line 554
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v3, :cond_4c7

    move v6, v7

    :cond_4c7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 551
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
    .end local v3           #_result:Z
    :cond_4cc
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
    goto :goto_4bd

    .line 41
    :sswitch_data_4ce
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_47
        0x4 -> :sswitch_62
        0x5 -> :sswitch_7d
        0x6 -> :sswitch_99
        0x7 -> :sswitch_b5
        0x8 -> :sswitch_d1
        0x9 -> :sswitch_ed
        0xa -> :sswitch_109
        0xb -> :sswitch_125
        0xc -> :sswitch_141
        0xd -> :sswitch_15d
        0xe -> :sswitch_179
        0xf -> :sswitch_195
        0x10 -> :sswitch_1b1
        0x11 -> :sswitch_1cd
        0x12 -> :sswitch_1de
        0x13 -> :sswitch_1eb
        0x14 -> :sswitch_204
        0x15 -> :sswitch_21b
        0x16 -> :sswitch_22f
        0x17 -> :sswitch_243
        0x18 -> :sswitch_267
        0x19 -> :sswitch_29b
        0x1a -> :sswitch_2a8
        0x1b -> :sswitch_2be
        0x1c -> :sswitch_2d4
        0x1d -> :sswitch_2f1
        0x1e -> :sswitch_30c
        0x1f -> :sswitch_330
        0x20 -> :sswitch_341
        0x21 -> :sswitch_357
        0x22 -> :sswitch_372
        0x23 -> :sswitch_391
        0x24 -> :sswitch_3b4
        0x25 -> :sswitch_3c5
        0x26 -> :sswitch_3d9
        0x27 -> :sswitch_3ea
        0x28 -> :sswitch_406
        0x29 -> :sswitch_417
        0x2a -> :sswitch_42f
        0x2b -> :sswitch_440
        0x2c -> :sswitch_451
        0x2d -> :sswitch_46c
        0x2e -> :sswitch_48f
        0x2f -> :sswitch_4aa
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
