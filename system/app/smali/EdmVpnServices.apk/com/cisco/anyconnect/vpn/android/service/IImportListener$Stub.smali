.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;
.super Landroid/os/Binder;
.source "IImportListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IImportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
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
    const-string v1, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_4a

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    .line 45
    :sswitch_a
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    move v0, v1

    .line 53
    .local v0, _arg0:Z
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->ImportDefaultL10nDataCB(Z)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 59
    .end local v0           #_arg0:Z
    :sswitch_23
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    move v0, v1

    .line 62
    .restart local v0       #_arg0:Z
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->ImportServerL10nDataCB(Z)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 68
    .end local v0           #_arg0:Z
    :sswitch_36
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    move v0, v1

    .line 71
    .restart local v0       #_arg0:Z
    :cond_42
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->DeleteL10nDataCB(Z)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 41
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
