.class public abstract Landroid/app/enterprise/IApnSettingsPolicy$Stub;
.super Landroid/os/Binder;
.source "IApnSettingsPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IApnSettingsPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IApnSettingsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IApnSettingsPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IApnSettingsPolicy"

.field static final TRANSACTION_addUpdateApn:I = 0x5

.field static final TRANSACTION_deleteApn:I = 0x2

.field static final TRANSACTION_getApnList:I = 0x3

.field static final TRANSACTION_getApnSettings:I = 0x4

.field static final TRANSACTION_getPreferredApn:I = 0x6

.field static final TRANSACTION_setPreferredApn:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IApnSettingsPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApnSettingsPolicy;
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
    const-string v1, "android.app.enterprise.IApnSettingsPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IApnSettingsPolicy;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/app/enterprise/IApnSettingsPolicy;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/app/enterprise/IApnSettingsPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_b0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 45
    :sswitch_a
    const-string v6, "android.app.enterprise.IApnSettingsPolicy"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v8, "android.app.enterprise.IApnSettingsPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 53
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;->setPreferredApn(J)Z

    move-result v3

    .line 54
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_23

    move v6, v7

    :cond_23
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v0           #_arg0:J
    .end local v3           #_result:Z
    :sswitch_27
    const-string v8, "android.app.enterprise.IApnSettingsPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 63
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;->deleteApn(J)Z

    move-result v3

    .line 64
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_3a

    move v6, v7

    :cond_3a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v0           #_arg0:J
    .end local v3           #_result:Z
    :sswitch_3e
    const-string v6, "android.app.enterprise.IApnSettingsPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;->getApnList()Ljava/util/List;

    move-result-object v5

    .line 72
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 78
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :sswitch_4e
    const-string v8, "android.app.enterprise.IApnSettingsPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 81
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;->getApnSettings(J)Landroid/app/enterprise/ApnSettings;

    move-result-object v3

    .line 82
    .local v3, _result:Landroid/app/enterprise/ApnSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_67

    .line 84
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {v3, p3, v7}, Landroid/app/enterprise/ApnSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 88
    :cond_67
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v0           #_arg0:J
    .end local v3           #_result:Landroid/app/enterprise/ApnSettings;
    :sswitch_6b
    const-string v8, "android.app.enterprise.IApnSettingsPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_91

    move v0, v7

    .line 98
    .local v0, _arg0:Z
    :goto_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_93

    .line 99
    sget-object v6, Landroid/app/enterprise/ApnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/ApnSettings;

    .line 104
    .local v2, _arg1:Landroid/app/enterprise/ApnSettings;
    :goto_85
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;->addUpdateApn(ZLandroid/app/enterprise/ApnSettings;)J

    move-result-wide v3

    .line 105
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_arg1:Landroid/app/enterprise/ApnSettings;
    .end local v3           #_result:J
    :cond_91
    move v0, v6

    .line 96
    goto :goto_77

    .line 102
    .restart local v0       #_arg0:Z
    :cond_93
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/app/enterprise/ApnSettings;
    goto :goto_85

    .line 111
    .end local v0           #_arg0:Z
    .end local v2           #_arg1:Landroid/app/enterprise/ApnSettings;
    :sswitch_95
    const-string v8, "android.app.enterprise.IApnSettingsPolicy"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;->getPreferredApn()Landroid/app/enterprise/ApnSettings;

    move-result-object v3

    .line 113
    .local v3, _result:Landroid/app/enterprise/ApnSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v3, :cond_ab

    .line 115
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v3, p3, v7}, Landroid/app/enterprise/ApnSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 119
    :cond_ab
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    :sswitch_data_b0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_95
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
