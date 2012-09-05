.class public abstract Lcom/android/emailcommon/service/IPolicyService$Stub;
.super Landroid/os/Binder;
.source "IPolicyService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;
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
    const-string v1, "com.android.emailcommon.service.IPolicyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/emailcommon/service/IPolicyService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IPolicyService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_136

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 42
    :sswitch_a
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    .line 50
    sget-object v6, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    .line 55
    .local v0, _arg0:Lcom/android/emailcommon/service/PolicySet;
    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v3

    .line 56
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_2d

    move v4, v5

    :cond_2d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 53
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Z
    :cond_31
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/emailcommon/service/PolicySet;
    goto :goto_23

    .line 62
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    :sswitch_33
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 65
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->policiesRequired(J)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 71
    .end local v0           #_arg0:J
    :sswitch_43
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 74
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->updatePolicies(J)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 80
    .end local v0           #_arg0:J
    :sswitch_53
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 84
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    move v2, v5

    .line 85
    .local v2, _arg1:Z
    :goto_63
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountHoldFlag(JZ)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v2           #_arg1:Z
    :cond_6a
    move v2, v4

    .line 84
    goto :goto_63

    .line 91
    .end local v0           #_arg0:J
    :sswitch_6c
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7f

    move v0, v5

    .line 94
    .local v0, _arg0:Z
    :goto_78
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setRecoverPasswordState(Z)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_7f
    move v0, v4

    .line 93
    goto :goto_78

    .line 100
    :sswitch_81
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->reducePolicies()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 107
    :sswitch_8e
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActiveAdmin()Z

    move-result v3

    .line 109
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v3, :cond_9d

    move v4, v5

    :cond_9d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 115
    .end local v3           #_result:Z
    :sswitch_a2
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->remoteWipe()V

    goto/16 :goto_9

    .line 121
    :sswitch_ac
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ce

    .line 124
    sget-object v6, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    .line 129
    .local v0, _arg0:Lcom/android/emailcommon/service/PolicySet;
    :goto_bf
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isSupported(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v3

    .line 130
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v3, :cond_c9

    move v4, v5

    :cond_c9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 127
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Z
    :cond_ce
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/emailcommon/service/PolicySet;
    goto :goto_bf

    .line 136
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    :sswitch_d0
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f4

    .line 139
    sget-object v6, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/PolicySet;

    .line 144
    .restart local v0       #_arg0:Lcom/android/emailcommon/service/PolicySet;
    :goto_e3
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    .line 145
    .local v3, _result:Lcom/android/emailcommon/service/PolicySet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v3, :cond_f6

    .line 147
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {v3, p3, v5}, Lcom/android/emailcommon/service/PolicySet;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 142
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Lcom/android/emailcommon/service/PolicySet;
    :cond_f4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/emailcommon/service/PolicySet;
    goto :goto_e3

    .line 151
    .restart local v3       #_result:Lcom/android/emailcommon/service/PolicySet;
    :cond_f6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 157
    .end local v0           #_arg0:Lcom/android/emailcommon/service/PolicySet;
    .end local v3           #_result:Lcom/android/emailcommon/service/PolicySet;
    :sswitch_fb
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    .line 159
    .restart local v3       #_result:Lcom/android/emailcommon/service/PolicySet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v3, :cond_111

    .line 161
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {v3, p3, v5}, Lcom/android/emailcommon/service/PolicySet;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 165
    :cond_111
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 171
    .end local v3           #_result:Lcom/android/emailcommon/service/PolicySet;
    :sswitch_116
    const-string v6, "com.android.emailcommon.service.IPolicyService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 174
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->getAccountPolicy(J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    .line 175
    .restart local v3       #_result:Lcom/android/emailcommon/service/PolicySet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v3, :cond_130

    .line 177
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {v3, p3, v5}, Lcom/android/emailcommon/service/PolicySet;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 181
    :cond_130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_136
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_33
        0x3 -> :sswitch_43
        0x4 -> :sswitch_53
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_81
        0x7 -> :sswitch_8e
        0x8 -> :sswitch_a2
        0x9 -> :sswitch_ac
        0xa -> :sswitch_d0
        0xb -> :sswitch_fb
        0xc -> :sswitch_116
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
