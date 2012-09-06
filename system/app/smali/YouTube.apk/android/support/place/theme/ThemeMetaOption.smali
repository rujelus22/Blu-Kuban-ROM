.class public Landroid/support/place/theme/ThemeMetaOption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field public static final MODE_BOUNCING:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_TRANSIENT:I = 0x1

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    new-instance v0, Landroid/support/place/theme/ThemeMetaOption$1;

    invoke-direct {v0}, Landroid/support/place/theme/ThemeMetaOption$1;-><init>()V

    sput-object v0, Landroid/support/place/theme/ThemeMetaOption;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 93
    new-instance v0, Landroid/support/place/theme/ThemeMetaOption$2;

    invoke-direct {v0}, Landroid/support/place/theme/ThemeMetaOption$2;-><init>()V

    sput-object v0, Landroid/support/place/theme/ThemeMetaOption;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    new-array v0, v0, [B

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 105
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 106
    invoke-virtual {v1, v0}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 107
    invoke-virtual {p0, v1}, Landroid/support/place/theme/ThemeMetaOption;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/place/theme/ThemeMetaOption$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/place/theme/ThemeMetaOption;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/support/place/theme/ThemeMetaOption;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    instance-of v1, p1, Landroid/support/place/theme/ThemeMetaOption;

    if-nez v1, :cond_6

    .line 59
    :cond_5
    :goto_5
    return v0

    .line 57
    :cond_6
    check-cast p1, Landroid/support/place/theme/ThemeMetaOption;

    .line 59
    iget v1, p0, Landroid/support/place/theme/ThemeMetaOption;->mMode:I

    iget v2, p1, Landroid/support/place/theme/ThemeMetaOption;->mMode:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Landroid/support/place/theme/ThemeMetaOption;->mMode:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Landroid/support/place/theme/ThemeMetaOption;->mMode:I

    add-int/lit16 v0, v0, 0x193

    .line 66
    return v0
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/place/theme/ThemeMetaOption;->mMode:I

    .line 49
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput p1, p0, Landroid/support/place/theme/ThemeMetaOption;->mMode:I

    .line 40
    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/support/place/theme/ThemeMetaOption;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThemeMetaOption("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/place/theme/ThemeMetaOption;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 117
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 118
    invoke-virtual {p0, v0}, Landroid/support/place/theme/ThemeMetaOption;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 119
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 120
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 122
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 44
    const-string v0, "mode"

    iget v1, p0, Landroid/support/place/theme/ThemeMetaOption;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 45
    return-void
.end method
