.class public Landroid/support/place/theme/ThemeEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final KEY_CONFIG_COMPONENT:Ljava/lang/String; = "configComp"

.field private static final KEY_DEVICE_COMPONENT:Ljava/lang/String; = "deviceComp"

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field private mConfigComponent:Ljava/lang/String;

.field private mDeviceComponent:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 119
    new-instance v0, Landroid/support/place/theme/ThemeEngine$1;

    invoke-direct {v0}, Landroid/support/place/theme/ThemeEngine$1;-><init>()V

    sput-object v0, Landroid/support/place/theme/ThemeEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 132
    new-instance v0, Landroid/support/place/theme/ThemeEngine$2;

    invoke-direct {v0}, Landroid/support/place/theme/ThemeEngine$2;-><init>()V

    sput-object v0, Landroid/support/place/theme/ThemeEngine;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    new-array v0, v0, [B

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 144
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 145
    invoke-virtual {v1, v0}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 146
    invoke-virtual {p0, v1}, Landroid/support/place/theme/ThemeEngine;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/place/theme/ThemeEngine$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/place/theme/ThemeEngine;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/support/place/theme/ThemeEngine;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 82
    instance-of v1, p1, Landroid/support/place/theme/ThemeEngine;

    if-nez v1, :cond_6

    .line 95
    :cond_5
    :goto_5
    return v0

    .line 85
    :cond_6
    check-cast p1, Landroid/support/place/theme/ThemeEngine;

    .line 86
    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, p1, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_10
    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    if-nez v1, :cond_22

    iget-object v1, p1, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_22
    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    if-nez v1, :cond_34

    iget-object v1, p1, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_34
    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getConfigurationComponent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceComponent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    add-int/lit16 v0, v0, 0x20f

    .line 102
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    if-nez v2, :cond_26

    :goto_16
    add-int/2addr v0, v1

    .line 104
    return v0

    .line 100
    :cond_18
    iget-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 102
    :cond_1f
    iget-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    .line 103
    :cond_26
    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    :try_start_1
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_9} :catch_1a

    .line 69
    :goto_9
    :try_start_9
    const-string v0, "deviceComp"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_11} :catch_1e

    .line 74
    :goto_11
    :try_start_11
    const-string v0, "configComp"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_19} :catch_22

    .line 78
    :goto_19
    return-void

    .line 66
    :catch_1a
    move-exception v0

    iput-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    goto :goto_9

    .line 71
    :catch_1e
    move-exception v0

    iput-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    goto :goto_11

    .line 76
    :catch_22
    move-exception v0

    iput-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    goto :goto_19
.end method

.method public setConfigurationComponent(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDeviceComponent(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/support/place/theme/ThemeEngine;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThemeEngine("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 157
    invoke-virtual {p0, v0}, Landroid/support/place/theme/ThemeEngine;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 158
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 159
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 161
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 57
    const-string v0, "displayName"

    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "deviceComp"

    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mDeviceComponent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "configComp"

    iget-object v1, p0, Landroid/support/place/theme/ThemeEngine;->mConfigComponent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
