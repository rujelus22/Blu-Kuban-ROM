.class public Landroid/support/place/theme/Theme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field private static final KEY_META_OPTION:Ljava/lang/String; = "metaOption"

.field private static final KEY_OPTIONS:Ljava/lang/String; = "options"

.field private static final KEY_THEME_ENGINE:Ljava/lang/String; = "engine"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

.field private mOptions:Landroid/support/place/rpc/RpcData;

.field private mThemeEngine:Landroid/support/place/theme/ThemeEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 160
    new-instance v0, Landroid/support/place/theme/Theme$1;

    invoke-direct {v0}, Landroid/support/place/theme/Theme$1;-><init>()V

    sput-object v0, Landroid/support/place/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 173
    new-instance v0, Landroid/support/place/theme/Theme$2;

    invoke-direct {v0}, Landroid/support/place/theme/Theme$2;-><init>()V

    sput-object v0, Landroid/support/place/theme/Theme;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

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
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    new-array v0, v0, [B

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 185
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 186
    invoke-virtual {v1, v0}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 187
    invoke-virtual {p0, v1}, Landroid/support/place/theme/Theme;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/place/theme/Theme$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/place/theme/Theme;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/support/place/theme/Theme;->readFromRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 111
    instance-of v1, p1, Landroid/support/place/theme/Theme;

    if-nez v1, :cond_6

    .line 132
    :cond_5
    :goto_5
    return v0

    .line 115
    :cond_6
    check-cast p1, Landroid/support/place/theme/Theme;

    .line 117
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, p1, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_10
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    if-nez v1, :cond_22

    iget-object v1, p1, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    if-nez v1, :cond_5

    :cond_22
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    iget-object v2, p1, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    invoke-virtual {v1, v2}, Landroid/support/place/theme/ThemeEngine;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    if-nez v1, :cond_34

    iget-object v1, p1, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    if-nez v1, :cond_5

    :cond_34
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    iget-object v2, p1, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    if-nez v1, :cond_46

    iget-object v1, p1, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    if-nez v1, :cond_5

    :cond_46
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    iget-object v2, p1, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    invoke-virtual {v1, v2}, Landroid/support/place/theme/ThemeMetaOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEngine()Landroid/support/place/theme/ThemeEngine;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    return-object v0
.end method

.method public getMetaOption()Landroid/support/place/theme/ThemeMetaOption;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    return-object v0
.end method

.method public getOptions()Landroid/support/place/rpc/RpcData;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_20

    move v0, v1

    :goto_6
    add-int/lit16 v0, v0, 0x20f

    .line 139
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    if-nez v0, :cond_27

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    if-nez v0, :cond_2e

    move v0, v1

    :goto_17
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    if-nez v2, :cond_35

    :goto_1e
    add-int/2addr v0, v1

    .line 142
    return v0

    .line 137
    :cond_20
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 139
    :cond_27
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    invoke-virtual {v0}, Landroid/support/place/theme/ThemeEngine;->hashCode()I

    move-result v0

    goto :goto_f

    .line 140
    :cond_2e
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_17

    .line 141
    :cond_35
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    invoke-virtual {v1}, Landroid/support/place/theme/ThemeMetaOption;->hashCode()I

    move-result v1

    goto :goto_1e
.end method

.method public readFromRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 88
    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    .line 92
    :goto_11
    const-string v0, "engine"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 93
    new-instance v0, Landroid/support/place/theme/ThemeEngine;

    const-string v1, "engine"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/theme/ThemeEngine;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v0, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    .line 97
    :goto_26
    const-string v0, "options"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 98
    const-string v0, "options"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    .line 102
    :goto_36
    const-string v0, "metaOption"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 103
    new-instance v0, Landroid/support/place/theme/ThemeMetaOption;

    const-string v1, "metaOption"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/theme/ThemeMetaOption;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v0, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    .line 107
    :goto_4b
    return-void

    .line 90
    :cond_4c
    iput-object v2, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    goto :goto_11

    .line 95
    :cond_4f
    iput-object v2, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    goto :goto_26

    .line 100
    :cond_52
    iput-object v2, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    goto :goto_36

    .line 105
    :cond_55
    iput-object v2, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    goto :goto_4b
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setEngine(Landroid/support/place/theme/ThemeEngine;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    .line 48
    return-void
.end method

.method public setMetaOption(Landroid/support/place/theme/ThemeMetaOption;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    .line 64
    return-void
.end method

.method public setOptions(Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    .line 56
    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/support/place/theme/Theme;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Theme(displayName("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/place/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), engine("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/place/theme/Theme;->getEngine()Landroid/support/place/theme/ThemeEngine;

    move-result-object v0

    if-nez v0, :cond_50

    const-string v0, "null"

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), options("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/place/theme/Theme;->getOptions()Landroid/support/place/rpc/RpcData;

    move-result-object v0

    if-nez v0, :cond_59

    const-string v0, "null"

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), metaOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/place/theme/Theme;->getMetaOption()Landroid/support/place/theme/ThemeMetaOption;

    move-result-object v0

    if-nez v0, :cond_62

    const-string v0, "null"

    :goto_41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    invoke-virtual {p0}, Landroid/support/place/theme/Theme;->getEngine()Landroid/support/place/theme/ThemeEngine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/theme/ThemeEngine;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_59
    invoke-virtual {p0}, Landroid/support/place/theme/Theme;->getOptions()Landroid/support/place/rpc/RpcData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_62
    invoke-virtual {p0}, Landroid/support/place/theme/Theme;->getMetaOption()Landroid/support/place/theme/ThemeMetaOption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/theme/ThemeMetaOption;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 197
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 198
    invoke-virtual {p0, v0}, Landroid/support/place/theme/Theme;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 199
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 200
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 202
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 69
    const-string v0, "displayName"

    iget-object v1, p0, Landroid/support/place/theme/Theme;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_b
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    if-eqz v0, :cond_1e

    .line 72
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 73
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mThemeEngine:Landroid/support/place/theme/ThemeEngine;

    invoke-virtual {v1, v0}, Landroid/support/place/theme/ThemeEngine;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 74
    const-string v1, "engine"

    invoke-virtual {p1, v1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 76
    :cond_1e
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    if-eqz v0, :cond_29

    .line 77
    const-string v0, "options"

    iget-object v1, p0, Landroid/support/place/theme/Theme;->mOptions:Landroid/support/place/rpc/RpcData;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 79
    :cond_29
    iget-object v0, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    if-eqz v0, :cond_3c

    .line 80
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 81
    iget-object v1, p0, Landroid/support/place/theme/Theme;->mMetaOption:Landroid/support/place/theme/ThemeMetaOption;

    invoke-virtual {v1, v0}, Landroid/support/place/theme/ThemeMetaOption;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 82
    const-string v1, "metaOption"

    invoke-virtual {p1, v1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 84
    :cond_3c
    return-void
.end method
