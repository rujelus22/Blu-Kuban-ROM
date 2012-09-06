.class public abstract Landroid/support/place/connector/security/IAccountManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/security/IAccountManager;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.place.connector.security.IAccountManager"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_configure:I = 0x3

.field static final TRANSACTION_onGuestModeChanged:I = 0x6

.field static final TRANSACTION_revoke:I = 0x2

.field static final TRANSACTION_setSecurityService:I = 0x4

.field static final TRANSACTION_updateRoles:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {p0, p0, v0}, Landroid/support/place/connector/security/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/security/IAccountManager;
    .registers 3
    .parameter

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
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/connector/security/IAccountManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/connector/security/IAccountManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_cc

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 42
    :sswitch_b
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 47
    :sswitch_11
    const-string v3, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 52
    sget-object v0, Landroid/support/place/rpc/RpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 57
    :cond_28
    invoke-virtual {p0, v3, v0}, Landroid/support/place/connector/security/IAccountManager$Stub;->authenticate(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)Landroid/support/place/connector/security/AccountWithRoles;

    move-result-object v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_38

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v0, p3, v1}, Landroid/support/place/connector/security/AccountWithRoles;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 64
    :cond_38
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 70
    :sswitch_3c
    const-string v2, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4f

    .line 73
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 78
    :cond_4f
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/IAccountManager$Stub;->revoke(Landroid/support/place/connector/security/Account;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 84
    :sswitch_56
    const-string v3, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_69

    .line 87
    sget-object v0, Landroid/support/place/rpc/RpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 92
    :cond_69
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/IAccountManager$Stub;->configure(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v0, :cond_79

    .line 95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v0, p3, v1}, Landroid/support/place/rpc/RpcData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 99
    :cond_79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 105
    :sswitch_7d
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/security/ISecurityService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/security/ISecurityService;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/IAccountManager$Stub;->setSecurityService(Landroid/support/place/connector/security/ISecurityService;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 114
    :sswitch_92
    const-string v2, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a5

    .line 117
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 123
    :cond_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 126
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/place/connector/security/IAccountManager$Stub;->updateRoles(Landroid/support/place/connector/security/Account;Ljava/util/List;Ljava/util/List;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 132
    :sswitch_b5
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c9

    move v0, v1

    .line 135
    :goto_c1
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/IAccountManager$Stub;->onGuestModeChanged(Z)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_c9
    move v0, v2

    .line 134
    goto :goto_c1

    .line 38
    nop

    :sswitch_data_cc
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_56
        0x4 -> :sswitch_7d
        0x5 -> :sswitch_92
        0x6 -> :sswitch_b5
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
