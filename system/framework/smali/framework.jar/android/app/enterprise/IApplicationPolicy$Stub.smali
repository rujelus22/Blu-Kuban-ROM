.class public abstract Landroid/app/enterprise/IApplicationPolicy$Stub;
.super Landroid/os/Binder;
.source "IApplicationPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IApplicationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IApplicationPolicy"

.field static final TRANSACTION_addAppPackageNameToBlackList:I = 0x2f

.field static final TRANSACTION_addAppPackageNameToWhiteList:I = 0x32

.field static final TRANSACTION_addAppPermissionToBlackList:I = 0x23

.field static final TRANSACTION_addAppSignatureToBlackList:I = 0x26

.field static final TRANSACTION_changeApplicationIcon:I = 0x21

.field static final TRANSACTION_deleteManagedAppInfo:I = 0xd

.field static final TRANSACTION_getAllAppLastUsage:I = 0x1e

.field static final TRANSACTION_getAppInstallationMode:I = 0x38

.field static final TRANSACTION_getAppPackageNamesAllBlackLists:I = 0x31

.field static final TRANSACTION_getAppPackageNamesAllWhiteLists:I = 0x34

.field static final TRANSACTION_getAppPermissionsAllBlackLists:I = 0x35

.field static final TRANSACTION_getAppPermissionsBlackList:I = 0x25

.field static final TRANSACTION_getAppSignatureBlackList:I = 0x28

.field static final TRANSACTION_getAppSignaturesAllBlackLists:I = 0x36

.field static final TRANSACTION_getApplicationCacheSize:I = 0x17

.field static final TRANSACTION_getApplicationCodeSize:I = 0x15

.field static final TRANSACTION_getApplicationCpuUsage:I = 0x19

.field static final TRANSACTION_getApplicationDataSize:I = 0x16

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x22

.field static final TRANSACTION_getApplicationInstallationEnabled:I = 0xe

.field static final TRANSACTION_getApplicationMemoryUsage:I = 0x18

.field static final TRANSACTION_getApplicationName:I = 0x12

.field static final TRANSACTION_getApplicationStateEnabled:I = 0xc

.field static final TRANSACTION_getApplicationStateList:I = 0x2c

.field static final TRANSACTION_getApplicationTotalSize:I = 0x14

.field static final TRANSACTION_getApplicationUninstallationEnabled:I = 0x10

.field static final TRANSACTION_getApplicationVersion:I = 0x13

.field static final TRANSACTION_getApplicationsList:I = 0x9

.field static final TRANSACTION_getAvgNoAppUsagePerMonth:I = 0x1d

.field static final TRANSACTION_getInstalledApplicationsIDList:I = 0x11

.field static final TRANSACTION_getInstalledManagedApplicationsList:I = 0x8

.field static final TRANSACTION_getNetworkStats:I = 0x1f

.field static final TRANSACTION_getTopNCPUUsageAppFromTopCommand:I = 0x1c

.field static final TRANSACTION_getTopNDataUsageApp:I = 0x1b

.field static final TRANSACTION_getTopNMemoryUsageApp:I = 0x1a

.field static final TRANSACTION_installApplication:I = 0x5

.field static final TRANSACTION_isApplicationInstallationEnabled:I = 0xf

.field static final TRANSACTION_isApplicationInstalled:I = 0x3

.field static final TRANSACTION_isApplicationRunning:I = 0x4

.field static final TRANSACTION_isIntentDisabled:I = 0x2e

.field static final TRANSACTION_removeAppPackageNameFromBlackList:I = 0x30

.field static final TRANSACTION_removeAppPackageNameFromWhiteList:I = 0x33

.field static final TRANSACTION_removeAppPermissionFromBlackList:I = 0x24

.field static final TRANSACTION_removeAppSignatureFromBlackList:I = 0x27

.field static final TRANSACTION_removeManagedApplications:I = 0x1

.field static final TRANSACTION_setAppInstallationMode:I = 0x37

.field static final TRANSACTION_setApplicationInstallationDisabled:I = 0xa

.field static final TRANSACTION_setApplicationState:I = 0x7

.field static final TRANSACTION_setApplicationStateList:I = 0x2d

.field static final TRANSACTION_setApplicationUninstallationDisabled:I = 0xb

.field static final TRANSACTION_setAsManagedApp:I = 0x29

.field static final TRANSACTION_startApp:I = 0x2b

.field static final TRANSACTION_stopApp:I = 0x2a

.field static final TRANSACTION_uninstallApplication:I = 0x6

.field static final TRANSACTION_updateDataUsageDb:I = 0x20

.field static final TRANSACTION_wipeApplicationData:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.app.enterprise.IApplicationPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/app/enterprise/IApplicationPolicy;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IApplicationPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    .line 44
    sparse-switch p1, :sswitch_data_58c

    .line 615
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_7
    return v9

    .line 48
    :sswitch_8
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v9, 0x1

    goto :goto_7

    .line 53
    :sswitch_f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 57
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 59
    const/4 v9, 0x1

    goto :goto_7

    .line 63
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_24
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->wipeApplicationData(Ljava/lang/String;)Z

    move-result v3

    .line 67
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v3, :cond_3c

    const/4 v9, 0x1

    :goto_37
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v9, 0x1

    goto :goto_7

    .line 68
    :cond_3c
    const/4 v9, 0x0

    goto :goto_37

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_3e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v3

    .line 77
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v3, :cond_56

    const/4 v9, 0x1

    :goto_51
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v9, 0x1

    goto :goto_7

    .line 78
    :cond_56
    const/4 v9, 0x0

    goto :goto_51

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_58
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationRunning(Ljava/lang/String;)Z

    move-result v3

    .line 87
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v3, :cond_70

    const/4 v9, 0x1

    :goto_6b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v9, 0x1

    goto :goto_7

    .line 88
    :cond_70
    const/4 v9, 0x0

    goto :goto_6b

    .line 93
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_72
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_92

    const/4 v2, 0x1

    .line 98
    .local v2, _arg1:Z
    :goto_82
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->installApplication(Ljava/lang/String;Z)Z

    move-result v3

    .line 99
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v3, :cond_94

    const/4 v9, 0x1

    :goto_8c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 97
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_92
    const/4 v2, 0x0

    goto :goto_82

    .line 100
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_94
    const/4 v9, 0x0

    goto :goto_8c

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_96
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b6

    const/4 v2, 0x1

    .line 110
    .restart local v2       #_arg1:Z
    :goto_a6
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->uninstallApplication(Ljava/lang/String;Z)Z

    move-result v3

    .line 111
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v3, :cond_b8

    const/4 v9, 0x1

    :goto_b0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 109
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_b6
    const/4 v2, 0x0

    goto :goto_a6

    .line 112
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_b8
    const/4 v9, 0x0

    goto :goto_b0

    .line 117
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_ba
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_da

    const/4 v2, 0x1

    .line 122
    .restart local v2       #_arg1:Z
    :goto_ca
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationState(Ljava/lang/String;Z)Z

    move-result v3

    .line 123
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v3, :cond_dc

    const/4 v9, 0x1

    :goto_d4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 121
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :cond_da
    const/4 v2, 0x0

    goto :goto_ca

    .line 124
    .restart local v2       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_dc
    const/4 v9, 0x0

    goto :goto_d4

    .line 129
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_de
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getInstalledManagedApplicationsList()[Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 133
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 137
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_f0
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v3

    .line 141
    .local v3, _result:[Landroid/app/enterprise/ManagedAppInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 143
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 147
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:[Landroid/app/enterprise/ManagedAppInfo;
    :sswitch_107
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_120

    const/4 v2, 0x1

    .line 152
    .restart local v2       #_arg1:Z
    :goto_117
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 151
    .end local v2           #_arg1:Z
    :cond_120
    const/4 v2, 0x0

    goto :goto_117

    .line 158
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_122
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13b

    const/4 v2, 0x1

    .line 163
    .restart local v2       #_arg1:Z
    :goto_132
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 162
    .end local v2           #_arg1:Z
    :cond_13b
    const/4 v2, 0x0

    goto :goto_132

    .line 169
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_13d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 173
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v3, :cond_156

    const/4 v9, 0x1

    :goto_150
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 174
    :cond_156
    const/4 v9, 0x0

    goto :goto_150

    .line 179
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_158
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->deleteManagedAppInfo(Ljava/lang/String;)Z

    move-result v3

    .line 183
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v3, :cond_171

    const/4 v9, 0x1

    :goto_16b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 184
    :cond_171
    const/4 v9, 0x0

    goto :goto_16b

    .line 189
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_173
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 193
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v3, :cond_18c

    const/4 v9, 0x1

    :goto_186
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 194
    :cond_18c
    const/4 v9, 0x0

    goto :goto_186

    .line 199
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_18e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1b5

    .line 204
    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 209
    .local v2, _arg1:Landroid/net/Uri;
    :goto_1a5
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    .line 210
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v3, :cond_1b7

    const/4 v9, 0x1

    :goto_1af
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 207
    .end local v2           #_arg1:Landroid/net/Uri;
    .end local v3           #_result:Z
    :cond_1b5
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/Uri;
    goto :goto_1a5

    .line 211
    .restart local v3       #_result:Z
    :cond_1b7
    const/4 v9, 0x0

    goto :goto_1af

    .line 216
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/Uri;
    .end local v3           #_result:Z
    :sswitch_1b9
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 220
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v3, :cond_1d2

    const/4 v9, 0x1

    :goto_1cc
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 221
    :cond_1d2
    const/4 v9, 0x0

    goto :goto_1cc

    .line 226
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1d4
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 230
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 234
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_1e6
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 244
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1fc
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 254
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_212
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationTotalSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 258
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 264
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_228
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCodeSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 268
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 274
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_23e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationDataSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 278
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 284
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_254
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCacheSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 288
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 290
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 294
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_26a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationMemoryUsage(Ljava/lang/String;)J

    move-result-wide v3

    .line 298
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 304
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_280
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationCpuUsage(Ljava/lang/String;)J

    move-result-wide v3

    .line 308
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 310
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 314
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:J
    :sswitch_296
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2b3

    const/4 v2, 0x1

    .line 319
    .local v2, _arg1:Z
    :goto_2a6
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNMemoryUsageApp(IZ)Ljava/util/List;

    move-result-object v6

    .line 320
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 322
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 318
    .end local v2           #_arg1:Z
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_2b3
    const/4 v2, 0x0

    goto :goto_2a6

    .line 326
    .end local v0           #_arg0:I
    :sswitch_2b5
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 329
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNDataUsageApp(I)Ljava/util/List;

    move-result-object v6

    .line 330
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 332
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 336
    .end local v0           #_arg0:I
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :sswitch_2cb
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2e8

    const/4 v2, 0x1

    .line 341
    .restart local v2       #_arg1:Z
    :goto_2db
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;

    move-result-object v6

    .line 342
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 344
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 340
    .end local v2           #_arg1:Z
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_2e8
    const/4 v2, 0x0

    goto :goto_2db

    .line 348
    .end local v0           #_arg0:I
    :sswitch_2ea
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v3

    .line 350
    .local v3, _result:[Landroid/app/enterprise/AppInfoLastUsage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 352
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 356
    .end local v3           #_result:[Landroid/app/enterprise/AppInfoLastUsage;
    :sswitch_2fd
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v3

    .line 358
    .restart local v3       #_result:[Landroid/app/enterprise/AppInfoLastUsage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v9, 0x1

    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 360
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 364
    .end local v3           #_result:[Landroid/app/enterprise/AppInfoLastUsage;
    :sswitch_310
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getNetworkStats()Ljava/util/List;

    move-result-object v7

    .line 366
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/NetworkStats;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 368
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 372
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/NetworkStats;>;"
    :sswitch_322
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->updateDataUsageDb()V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 379
    :sswitch_330
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 384
    .local v2, _arg1:[B
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->changeApplicationIcon(Ljava/lang/String;[B)Z

    move-result v3

    .line 385
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v3, :cond_34d

    const/4 v9, 0x1

    :goto_347
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 386
    :cond_34d
    const/4 v9, 0x0

    goto :goto_347

    .line 391
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_result:Z
    :sswitch_34f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 394
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v3

    .line 395
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 397
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 401
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:[B
    :sswitch_365
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPermissionToBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 405
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v3, :cond_37e

    const/4 v9, 0x1

    :goto_378
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 406
    :cond_37e
    const/4 v9, 0x0

    goto :goto_378

    .line 411
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_380
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPermissionFromBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 415
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v3, :cond_399

    const/4 v9, 0x1

    :goto_393
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 416
    :cond_399
    const/4 v9, 0x0

    goto :goto_393

    .line 421
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_39b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPermissionsBlackList()[Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 425
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 429
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_3ad
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppSignatureToBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 433
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v3, :cond_3c6

    const/4 v9, 0x1

    :goto_3c0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 434
    :cond_3c6
    const/4 v9, 0x0

    goto :goto_3c0

    .line 439
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_3c8
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 443
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v3, :cond_3e1

    const/4 v9, 0x1

    :goto_3db
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 444
    :cond_3e1
    const/4 v9, 0x0

    goto :goto_3db

    .line 449
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_3e3
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppSignatureBlackList()[Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 453
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 457
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_3f5
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setAsManagedApp(Ljava/lang/String;)Z

    move-result v3

    .line 461
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v3, :cond_40e

    const/4 v9, 0x1

    :goto_408
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 462
    :cond_40e
    const/4 v9, 0x0

    goto :goto_408

    .line 467
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_410
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->stopApp(Ljava/lang/String;)Z

    move-result v3

    .line 471
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v3, :cond_429

    const/4 v9, 0x1

    :goto_423
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 472
    :cond_429
    const/4 v9, 0x0

    goto :goto_423

    .line 477
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_42b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->startApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 483
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v3, :cond_448

    const/4 v9, 0x1

    :goto_442
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 484
    :cond_448
    const/4 v9, 0x0

    goto :goto_442

    .line 489
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_44a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_463

    const/4 v0, 0x1

    .line 492
    .local v0, _arg0:Z
    :goto_456
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getApplicationStateList(Z)[Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 495
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 491
    .end local v0           #_arg0:Z
    .end local v3           #_result:[Ljava/lang/String;
    :cond_463
    const/4 v0, 0x0

    goto :goto_456

    .line 499
    :sswitch_465
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_482

    const/4 v2, 0x1

    .line 504
    .local v2, _arg1:Z
    :goto_475
    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 505
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 507
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 503
    .end local v2           #_arg1:Z
    .end local v3           #_result:[Ljava/lang/String;
    :cond_482
    const/4 v2, 0x0

    goto :goto_475

    .line 511
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_484
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4a7

    .line 514
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 519
    .local v0, _arg0:Landroid/content/Intent;
    :goto_497
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v3

    .line 520
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    if-eqz v3, :cond_4a9

    const/4 v9, 0x1

    :goto_4a1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 517
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v3           #_result:Z
    :cond_4a7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_497

    .line 521
    .restart local v3       #_result:Z
    :cond_4a9
    const/4 v9, 0x0

    goto :goto_4a1

    .line 526
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v3           #_result:Z
    :sswitch_4ab
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 530
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v3, :cond_4c4

    const/4 v9, 0x1

    :goto_4be
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 531
    :cond_4c4
    const/4 v9, 0x0

    goto :goto_4be

    .line 536
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4c6
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 540
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    if-eqz v3, :cond_4df

    const/4 v9, 0x1

    :goto_4d9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 541
    :cond_4df
    const/4 v9, 0x0

    goto :goto_4d9

    .line 546
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4e1
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPackageNamesAllBlackLists()Ljava/util/List;

    move-result-object v5

    .line 548
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 550
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 554
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :sswitch_4f3
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z

    move-result v3

    .line 558
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    if-eqz v3, :cond_50c

    const/4 v9, 0x1

    :goto_506
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 559
    :cond_50c
    const/4 v9, 0x0

    goto :goto_506

    .line 564
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_50e
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z

    move-result v3

    .line 568
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v3, :cond_527

    const/4 v9, 0x1

    :goto_521
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 569
    :cond_527
    const/4 v9, 0x0

    goto :goto_521

    .line 574
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_529
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPackageNamesAllWhiteLists()Ljava/util/List;

    move-result-object v5

    .line 576
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 578
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 582
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :sswitch_53b
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppPermissionsAllBlackLists()Ljava/util/List;

    move-result-object v5

    .line 584
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 586
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 590
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :sswitch_54d
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppSignaturesAllBlackLists()Ljava/util/List;

    move-result-object v5

    .line 592
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 594
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 598
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :sswitch_55f
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 601
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->setAppInstallationMode(I)Z

    move-result v3

    .line 602
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v3, :cond_578

    const/4 v9, 0x1

    :goto_572
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 603
    :cond_578
    const/4 v9, 0x0

    goto :goto_572

    .line 608
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_57a
    const-string v9, "android.app.enterprise.IApplicationPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->getAppInstallationMode()I

    move-result v3

    .line 610
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 44
    :sswitch_data_58c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_58
        0x5 -> :sswitch_72
        0x6 -> :sswitch_96
        0x7 -> :sswitch_ba
        0x8 -> :sswitch_de
        0x9 -> :sswitch_f0
        0xa -> :sswitch_107
        0xb -> :sswitch_122
        0xc -> :sswitch_13d
        0xd -> :sswitch_158
        0xe -> :sswitch_173
        0xf -> :sswitch_18e
        0x10 -> :sswitch_1b9
        0x11 -> :sswitch_1d4
        0x12 -> :sswitch_1e6
        0x13 -> :sswitch_1fc
        0x14 -> :sswitch_212
        0x15 -> :sswitch_228
        0x16 -> :sswitch_23e
        0x17 -> :sswitch_254
        0x18 -> :sswitch_26a
        0x19 -> :sswitch_280
        0x1a -> :sswitch_296
        0x1b -> :sswitch_2b5
        0x1c -> :sswitch_2cb
        0x1d -> :sswitch_2ea
        0x1e -> :sswitch_2fd
        0x1f -> :sswitch_310
        0x20 -> :sswitch_322
        0x21 -> :sswitch_330
        0x22 -> :sswitch_34f
        0x23 -> :sswitch_365
        0x24 -> :sswitch_380
        0x25 -> :sswitch_39b
        0x26 -> :sswitch_3ad
        0x27 -> :sswitch_3c8
        0x28 -> :sswitch_3e3
        0x29 -> :sswitch_3f5
        0x2a -> :sswitch_410
        0x2b -> :sswitch_42b
        0x2c -> :sswitch_44a
        0x2d -> :sswitch_465
        0x2e -> :sswitch_484
        0x2f -> :sswitch_4ab
        0x30 -> :sswitch_4c6
        0x31 -> :sswitch_4e1
        0x32 -> :sswitch_4f3
        0x33 -> :sswitch_50e
        0x34 -> :sswitch_529
        0x35 -> :sswitch_53b
        0x36 -> :sswitch_54d
        0x37 -> :sswitch_55f
        0x38 -> :sswitch_57a
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
