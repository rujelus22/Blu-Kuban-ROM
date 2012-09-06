.class public abstract Landroid/support/place/connector/security/ISecurityService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/security/ISecurityService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.place.connector.security.ISecurityService"

.field static final TRANSACTION_addCertificate:I = 0x1

.field static final TRANSACTION_addRole:I = 0x2

.field static final TRANSACTION_addTrustedPeerCert:I = 0x9

.field static final TRANSACTION_getAccounts:I = 0x3

.field static final TRANSACTION_getCertificates:I = 0x4

.field static final TRANSACTION_getRoles:I = 0x5

.field static final TRANSACTION_isGuestModeEnabled:I = 0xa

.field static final TRANSACTION_revokeAccount:I = 0x6

.field static final TRANSACTION_revokeCertificate:I = 0x7

.field static final TRANSACTION_revokeRole:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p0, p0, v0}, Landroid/support/place/connector/security/ISecurityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/security/ISecurityService;
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
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/connector/security/ISecurityService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/connector/security/ISecurityService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_114

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    .line 42
    :sswitch_a
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v2, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    .line 50
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 56
    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p0, v0, v2}, Landroid/support/place/connector/security/ISecurityService$Stub;->addCertificate(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 63
    :sswitch_2e
    const-string v2, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_41

    .line 66
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 72
    :cond_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v0, v2}, Landroid/support/place/connector/security/ISecurityService$Stub;->addRole(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 79
    :sswitch_4c
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/ISecurityService$Stub;->getAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 89
    :sswitch_60
    const-string v2, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_73

    .line 92
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 97
    :cond_73
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/ISecurityService$Stub;->getCertificates(Landroid/support/place/connector/security/Account;)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_9

    .line 104
    :sswitch_7e
    const-string v2, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_91

    .line 107
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 112
    :cond_91
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/ISecurityService$Stub;->getRoles(Landroid/support/place/connector/security/Account;)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 119
    :sswitch_9d
    const-string v2, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b0

    .line 122
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 127
    :cond_b0
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/ISecurityService$Stub;->revokeAccount(Landroid/support/place/connector/security/Account;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 133
    :sswitch_b8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Landroid/support/place/connector/security/ISecurityService$Stub;->revokeCertificate(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 142
    :sswitch_c9
    const-string v2, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_dc

    .line 145
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/Account;

    .line 151
    :cond_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {p0, v0, v2}, Landroid/support/place/connector/security/ISecurityService$Stub;->revokeRole(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 158
    :sswitch_e8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {p0, v0, v2}, Landroid/support/place/connector/security/ISecurityService$Stub;->addTrustedPeerCert(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 169
    :sswitch_fd
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroid/support/place/connector/security/ISecurityService$Stub;->isGuestModeEnabled()Z

    move-result v0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v0, :cond_111

    move v0, v1

    :goto_10c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :cond_111
    const/4 v0, 0x0

    goto :goto_10c

    .line 38
    nop

    :sswitch_data_114
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_60
        0x5 -> :sswitch_7e
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b8
        0x8 -> :sswitch_c9
        0x9 -> :sswitch_e8
        0xa -> :sswitch_fd
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
