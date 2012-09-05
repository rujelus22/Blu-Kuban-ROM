.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;
.super Landroid/os/Binder;
.source "IVpnConnectionList.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
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
    const-string v1, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_c4

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 45
    :sswitch_a
    const-string v3, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v3, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->GetAllNames()Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_9

    .line 58
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_20
    const-string v5, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->CreateNew()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v1

    .line 60
    .local v1, _result:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_35

    .line 62
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v1, p3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 66
    :cond_35
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v1           #_result:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :sswitch_39
    const-string v5, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5a

    .line 75
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 80
    .local v0, _arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :goto_4c
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v1

    .line 81
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v1, :cond_56

    move v3, v4

    :cond_56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .end local v1           #_result:Z
    :cond_5a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    goto :goto_4c

    .line 87
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :sswitch_5c
    const-string v3, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7a

    .line 90
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 95
    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :goto_6f
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v1

    .line 96
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 93
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .end local v1           #_result:I
    :cond_7a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    goto :goto_6f

    .line 102
    .end local v0           #_arg0:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :sswitch_7c
    const-string v5, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->SetActive(Ljava/lang/String;)Z

    move-result v1

    .line 106
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v1, :cond_8f

    move v3, v4

    :cond_8f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_94
    const-string v3, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->GetActive()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 120
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a5
    const-string v5, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v1

    .line 124
    .local v1, _result:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v1, :cond_bf

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {v1, p3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 130
    :cond_bf
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    :sswitch_data_c4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_39
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_7c
        0x6 -> :sswitch_94
        0x7 -> :sswitch_a5
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
