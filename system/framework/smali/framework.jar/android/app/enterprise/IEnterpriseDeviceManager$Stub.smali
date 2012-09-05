.class public abstract Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseDeviceManager.java"

# interfaces
.implements Landroid/app/enterprise/IEnterpriseDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IEnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IEnterpriseDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IEnterpriseDeviceManager"

.field static final TRANSACTION_enforceActiveAdminPermission:I = 0xa

.field static final TRANSACTION_getActiveAdminComponent:I = 0x2

.field static final TRANSACTION_getActiveAdmins:I = 0x3

.field static final TRANSACTION_getAdminRemovable:I = 0x8

.field static final TRANSACTION_getRemoveWarning:I = 0x9

.field static final TRANSACTION_hasAnyActiveAdmin:I = 0xd

.field static final TRANSACTION_hasGrantedPolicy:I = 0x5

.field static final TRANSACTION_isAdminActive:I = 0x1

.field static final TRANSACTION_isAdminRemovable:I = 0x10

.field static final TRANSACTION_packageHasActiveAdmins:I = 0xf

.field static final TRANSACTION_removeActiveAdmin:I = 0x6

.field static final TRANSACTION_removeActiveAdminFromDpm:I = 0xb

.field static final TRANSACTION_sendAdminCommandLocked:I = 0xc

.field static final TRANSACTION_setActiveAdmin:I = 0x4

.field static final TRANSACTION_setAdminRemovable:I = 0x7

.field static final TRANSACTION_submitEnterprisePayload:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;
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
    const-string v1, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/app/enterprise/IEnterpriseDeviceManager;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_1d0

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 46
    :sswitch_a
    const-string v4, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    .line 54
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 59
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    .line 60
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_2d

    move v4, v5

    :cond_2d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 57
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_result:Z
    :cond_31
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .line 66
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 68
    .local v2, _result:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_48

    .line 70
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v2, p3, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 74
    :cond_48
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v2           #_result:Landroid/content/ComponentName;
    :sswitch_4c
    const-string v4, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 88
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_5c
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7d

    .line 91
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 97
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7f

    move v1, v5

    .line 98
    .local v1, _arg1:Z
    :goto_76
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 94
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_7d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6f

    :cond_7f
    move v1, v4

    .line 97
    goto :goto_76

    .line 104
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_81
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a7

    .line 107
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 113
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 115
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v2, :cond_a2

    move v4, v5

    :cond_a2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 110
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_a7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_94

    .line 121
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_a9
    const-string v4, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c4

    .line 124
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 129
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_bc
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 127
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_c4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_bc

    .line 135
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_c6
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e1

    move v0, v5

    .line 138
    .local v0, _arg0:Z
    :goto_d2
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->setAdminRemovable(Z)Z

    move-result v2

    .line 139
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v2, :cond_dc

    move v4, v5

    :cond_dc
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_e1
    move v0, v4

    .line 137
    goto :goto_d2

    .line 145
    :sswitch_e3
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->getAdminRemovable()Z

    move-result v2

    .line 147
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v2, :cond_f2

    move v4, v5

    :cond_f2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 153
    .end local v2           #_result:Z
    :sswitch_f7
    const-string v4, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_120

    .line 156
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 162
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_122

    .line 163
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 168
    .local v1, _arg1:Landroid/os/RemoteCallback;
    :goto_118
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 159
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/RemoteCallback;
    :cond_120
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_10a

    .line 166
    :cond_122
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_118

    .line 174
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_124
    const-string v4, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 183
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_135
    const-string v4, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_150

    .line 186
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 191
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_148
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->removeActiveAdminFromDpm(Landroid/content/ComponentName;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 189
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_150
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_148

    .line 197
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_152
    const-string v4, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->sendAdminCommandLocked(Ljava/lang/String;I)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 208
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_167
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->hasAnyActiveAdmin()Z

    move-result v2

    .line 210
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v2, :cond_176

    move v4, v5

    :cond_176
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 216
    .end local v2           #_result:Z
    :sswitch_17b
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 219
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->submitEnterprisePayload([B)Z

    move-result v2

    .line 220
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v2, :cond_18e

    move v4, v5

    :cond_18e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 226
    .end local v0           #_arg0:[B
    .end local v2           #_result:Z
    :sswitch_193
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    .line 230
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v2, :cond_1a6

    move v4, v5

    :cond_1a6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 236
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_1ab
    const-string v6, "android.app.enterprise.IEnterpriseDeviceManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1cd

    .line 239
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 244
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1be
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v2

    .line 245
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v2, :cond_1c8

    move v4, v5

    :cond_1c8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 242
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_result:Z
    :cond_1cd
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1be

    .line 42
    nop

    :sswitch_data_1d0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_33
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_81
        0x6 -> :sswitch_a9
        0x7 -> :sswitch_c6
        0x8 -> :sswitch_e3
        0x9 -> :sswitch_f7
        0xa -> :sswitch_124
        0xb -> :sswitch_135
        0xc -> :sswitch_152
        0xd -> :sswitch_167
        0xe -> :sswitch_17b
        0xf -> :sswitch_193
        0x10 -> :sswitch_1ab
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
