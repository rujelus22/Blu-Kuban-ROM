.class public abstract Landroid/app/enterprise/IRoamingPolicy$Stub;
.super Landroid/os/Binder;
.source "IRoamingPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IRoamingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IRoamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IRoamingPolicy"

.field static final TRANSACTION_isRoamingDataEnabled:I = 0x6

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x4

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x2

.field static final TRANSACTION_setRoamingData:I = 0x5

.field static final TRANSACTION_setRoamingPush:I = 0x3

.field static final TRANSACTION_setRoamingSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.app.enterprise.IRoamingPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/app/enterprise/IRoamingPolicy;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IRoamingPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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

    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_9e

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 46
    :sswitch_a
    const-string v3, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v4, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    move v0, v2

    .line 54
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingSync(Z)Z

    move-result v1

    .line 55
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v1, :cond_26

    move v3, v2

    :cond_26
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_2a
    move v0, v3

    .line 53
    goto :goto_1c

    .line 61
    :sswitch_2c
    const-string v4, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingSyncEnabled()Z

    move-result v1

    .line 63
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v1, :cond_3b

    move v3, v2

    :cond_3b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 69
    .end local v1           #_result:Z
    :sswitch_3f
    const-string v4, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    move v0, v2

    .line 72
    .restart local v0       #_arg0:Z
    :goto_4b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingPush(Z)Z

    move-result v1

    .line 73
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v1, :cond_55

    move v3, v2

    :cond_55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_59
    move v0, v3

    .line 71
    goto :goto_4b

    .line 79
    :sswitch_5b
    const-string v4, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingPushEnabled()Z

    move-result v1

    .line 81
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v1, :cond_6a

    move v3, v2

    :cond_6a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v1           #_result:Z
    :sswitch_6e
    const-string v4, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_88

    move v0, v2

    .line 90
    .restart local v0       #_arg0:Z
    :goto_7a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->setRoamingData(Z)Z

    move-result v1

    .line 91
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_84

    move v3, v2

    :cond_84
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_88
    move v0, v3

    .line 89
    goto :goto_7a

    .line 97
    :sswitch_8a
    const-string v4, "android.app.enterprise.IRoamingPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->isRoamingDataEnabled()Z

    move-result v1

    .line 99
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v1, :cond_99

    move v3, v2

    :cond_99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 42
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_8a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
