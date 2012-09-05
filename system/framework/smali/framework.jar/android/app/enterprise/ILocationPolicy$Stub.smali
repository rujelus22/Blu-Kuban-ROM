.class public abstract Landroid/app/enterprise/ILocationPolicy$Stub;
.super Landroid/os/Binder;
.source "ILocationPolicy.java"

# interfaces
.implements Landroid/app/enterprise/ILocationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/ILocationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/ILocationPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.ILocationPolicy"

.field static final TRANSACTION_forceLocationProvidersEnable:I = 0x2

.field static final TRANSACTION_getAllLocationProviders:I = 0x7

.field static final TRANSACTION_getIndividualLocationProvider:I = 0x5

.field static final TRANSACTION_isLocationProviderBlocked:I = 0x6

.field static final TRANSACTION_isLocationProvidersEnableForced:I = 0x1

.field static final TRANSACTION_setIndividualLocationProvider:I = 0x4

.field static final TRANSACTION_setLocationProviders:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/ILocationPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILocationPolicy;
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
    const-string v1, "android.app.enterprise.ILocationPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/app/enterprise/ILocationPolicy;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/app/enterprise/ILocationPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/ILocationPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_bc

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 46
    :sswitch_a
    const-string v4, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v6, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/enterprise/ILocationPolicy$Stub;->isLocationProvidersEnableForced()Z

    move-result v2

    .line 53
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_1f

    move v4, v5

    :cond_1f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 59
    .end local v2           #_result:Z
    :sswitch_23
    const-string v6, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    move v0, v5

    .line 62
    .local v0, _arg0:Z
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ILocationPolicy$Stub;->forceLocationProvidersEnable(Z)Z

    move-result v2

    .line 63
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_39

    move v4, v5

    :cond_39
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_3d
    move v0, v4

    .line 61
    goto :goto_2f

    .line 69
    :sswitch_3f
    const-string v6, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    move v0, v5

    .line 72
    .restart local v0       #_arg0:Z
    :goto_4b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ILocationPolicy$Stub;->setLocationProviders(Z)Z

    move-result v2

    .line 73
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_55

    move v4, v5

    :cond_55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_59
    move v0, v4

    .line 71
    goto :goto_4b

    .line 79
    :sswitch_5b
    const-string v6, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_79

    move v1, v5

    .line 84
    .local v1, _arg1:Z
    :goto_6b
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ILocationPolicy$Stub;->setIndividualLocationProvider(Ljava/lang/String;Z)Z

    move-result v2

    .line 85
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v2, :cond_75

    move v4, v5

    :cond_75
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_79
    move v1, v4

    .line 83
    goto :goto_6b

    .line 91
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7b
    const-string v6, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ILocationPolicy$Stub;->getIndividualLocationProvider(Ljava/lang/String;)Z

    move-result v2

    .line 95
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_8e

    move v4, v5

    :cond_8e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_93
    const-string v6, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/ILocationPolicy$Stub;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v2

    .line 105
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v2, :cond_a6

    move v4, v5

    :cond_a6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 111
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_ab
    const-string v4, "android.app.enterprise.ILocationPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/enterprise/ILocationPolicy$Stub;->getAllLocationProviders()Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 42
    :sswitch_data_bc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_7b
        0x6 -> :sswitch_93
        0x7 -> :sswitch_ab
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
