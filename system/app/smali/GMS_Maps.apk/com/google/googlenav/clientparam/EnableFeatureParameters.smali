.class public final Lcom/google/googlenav/clientparam/EnableFeatureParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile isActivePlaceSuggestionsEnabled:Z

.field private volatile isAndroidNativeNetworkLocationProviderEnabled:Z

.field private volatile isBicyclingEnabled:Z

.field private volatile isBuzzEnabled:Z

.field private volatile isCheckinAddPlaceEnabled:Z

.field private volatile isDownloadMapAreaEnabled:Z

.field private volatile isGaiaLoginEnabled:Z

.field private volatile isGooglePlusEnabled:Z

.field private volatile isKmlSearchEnabled:Z

.field private volatile isLatitudeEnabled:Z

.field private volatile isMyMapsEnabled:Z

.field private volatile isOffersFeatureSwitcherEnabled:Z

.field private volatile isOfflineMapsEnabled:Z

.field private volatile isPersonalizedSmartMapsDisabled:Z

.field private volatile isPertileEnabled:Z

.field private volatile isPhotoUploadEnabled:Z

.field private volatile isRasterMapsEnabled:Z

.field private volatile isRatingsReviewTextEnabled:Z

.field private volatile isRoadLayersEnabled:Z

.field private volatile isSesameMapDataEditsEnabled:Z

.field private volatile isStarringSyncEnabled:Z

.field private volatile isTilePrefetchingEnabled:Z

.field private volatile isUserGeneratedContentEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isGaiaLoginEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isLatitudeEnabled:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isBuzzEnabled:Z

    .line 49
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isUserGeneratedContentEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isSesameMapDataEditsEnabled:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isMyMapsEnabled:Z

    .line 53
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRatingsReviewTextEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isStarringSyncEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isKmlSearchEnabled:Z

    .line 56
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isBicyclingEnabled:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isAndroidNativeNetworkLocationProviderEnabled:Z

    .line 58
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isTilePrefetchingEnabled:Z

    .line 59
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isActivePlaceSuggestionsEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isCheckinAddPlaceEnabled:Z

    .line 61
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isGooglePlusEnabled:Z

    .line 62
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isDownloadMapAreaEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPhotoUploadEnabled:Z

    .line 69
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPersonalizedSmartMapsDisabled:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPertileEnabled:Z

    .line 73
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRoadLayersEnabled:Z

    .line 75
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRasterMapsEnabled:Z

    .line 77
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOffersFeatureSwitcherEnabled:Z

    .line 79
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOfflineMapsEnabled:Z

    .line 88
    invoke-direct {p0, p1}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->mergeFlags(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 89
    return-void
.end method

.method public static getDefaultProto()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 280
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method

.method private mergeFlags(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isGaiaLoginEnabled:Z

    if-eqz v0, :cond_136

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_136

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isGaiaLoginEnabled:Z

    .line 113
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isLatitudeEnabled:Z

    if-eqz v0, :cond_139

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_139

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isLatitudeEnabled:Z

    .line 115
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isBuzzEnabled:Z

    if-eqz v0, :cond_13c

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_13c

    move v0, v1

    :goto_29
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isBuzzEnabled:Z

    .line 117
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isUserGeneratedContentEnabled:Z

    if-eqz v0, :cond_13f

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_13f

    move v0, v1

    :goto_37
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isUserGeneratedContentEnabled:Z

    .line 120
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isSesameMapDataEditsEnabled:Z

    if-eqz v0, :cond_142

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_142

    move v0, v1

    :goto_45
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isSesameMapDataEditsEnabled:Z

    .line 123
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isMyMapsEnabled:Z

    if-eqz v0, :cond_145

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_145

    move v0, v1

    :goto_53
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isMyMapsEnabled:Z

    .line 125
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRatingsReviewTextEnabled:Z

    if-eqz v0, :cond_148

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_148

    move v0, v1

    :goto_62
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRatingsReviewTextEnabled:Z

    .line 128
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isStarringSyncEnabled:Z

    if-eqz v0, :cond_14b

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_14b

    move v0, v1

    :goto_70
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isStarringSyncEnabled:Z

    .line 131
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isKmlSearchEnabled:Z

    if-eqz v0, :cond_14e

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_14e

    move v0, v1

    :goto_7f
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isKmlSearchEnabled:Z

    .line 134
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isBicyclingEnabled:Z

    if-eqz v0, :cond_151

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_151

    move v0, v1

    :goto_8e
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isBicyclingEnabled:Z

    .line 137
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isAndroidNativeNetworkLocationProviderEnabled:Z

    if-eqz v0, :cond_154

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_154

    move v0, v1

    :goto_9d
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isAndroidNativeNetworkLocationProviderEnabled:Z

    .line 141
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isTilePrefetchingEnabled:Z

    if-eqz v0, :cond_157

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_157

    move v0, v1

    :goto_ac
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isTilePrefetchingEnabled:Z

    .line 144
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isActivePlaceSuggestionsEnabled:Z

    if-eqz v0, :cond_15a

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_15a

    move v0, v1

    :goto_bb
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isActivePlaceSuggestionsEnabled:Z

    .line 148
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isCheckinAddPlaceEnabled:Z

    if-eqz v0, :cond_15d

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_15d

    move v0, v1

    :goto_ca
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isCheckinAddPlaceEnabled:Z

    .line 151
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isGooglePlusEnabled:Z

    if-eqz v0, :cond_160

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_160

    move v0, v1

    :goto_d9
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isGooglePlusEnabled:Z

    .line 154
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isDownloadMapAreaEnabled:Z

    if-eqz v0, :cond_163

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_163

    move v0, v1

    :goto_e8
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isDownloadMapAreaEnabled:Z

    .line 159
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPersonalizedSmartMapsDisabled:Z

    .line 162
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPhotoUploadEnabled:Z

    if-eqz v0, :cond_165

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_165

    move v0, v1

    :goto_ff
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPhotoUploadEnabled:Z

    .line 165
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPertileEnabled:Z

    if-eqz v0, :cond_167

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_167

    move v0, v1

    :goto_10e
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPertileEnabled:Z

    .line 167
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRasterMapsEnabled:Z

    if-eqz v0, :cond_169

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_169

    move v0, v1

    :goto_11d
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRasterMapsEnabled:Z

    .line 171
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOffersFeatureSwitcherEnabled:Z

    .line 174
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOfflineMapsEnabled:Z

    if-eqz v0, :cond_16b

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_16b

    :goto_133
    iput-boolean v1, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOfflineMapsEnabled:Z

    .line 177
    return-void

    :cond_136
    move v0, v2

    .line 110
    goto/16 :goto_d

    :cond_139
    move v0, v2

    .line 113
    goto/16 :goto_1b

    :cond_13c
    move v0, v2

    .line 115
    goto/16 :goto_29

    :cond_13f
    move v0, v2

    .line 117
    goto/16 :goto_37

    :cond_142
    move v0, v2

    .line 120
    goto/16 :goto_45

    :cond_145
    move v0, v2

    .line 123
    goto/16 :goto_53

    :cond_148
    move v0, v2

    .line 125
    goto/16 :goto_62

    :cond_14b
    move v0, v2

    .line 128
    goto/16 :goto_70

    :cond_14e
    move v0, v2

    .line 131
    goto/16 :goto_7f

    :cond_151
    move v0, v2

    .line 134
    goto/16 :goto_8e

    :cond_154
    move v0, v2

    .line 137
    goto/16 :goto_9d

    :cond_157
    move v0, v2

    .line 141
    goto/16 :goto_ac

    :cond_15a
    move v0, v2

    .line 144
    goto/16 :goto_bb

    :cond_15d
    move v0, v2

    .line 148
    goto/16 :goto_ca

    :cond_160
    move v0, v2

    .line 151
    goto/16 :goto_d9

    :cond_163
    move v0, v2

    .line 154
    goto :goto_e8

    :cond_165
    move v0, v2

    .line 162
    goto :goto_ff

    :cond_167
    move v0, v2

    .line 165
    goto :goto_10e

    :cond_169
    move v0, v2

    .line 167
    goto :goto_11d

    :cond_16b
    move v1, v2

    .line 174
    goto :goto_133
.end method


# virtual methods
.method public isActivePlaceSuggestionsEnabled()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isActivePlaceSuggestionsEnabled:Z

    return v0
.end method

.method public isAndroidNativeNetworkLocationProviderEnabled()Z
    .registers 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isAndroidNativeNetworkLocationProviderEnabled:Z

    return v0
.end method

.method public isBicyclingEnabled()Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isBicyclingEnabled:Z

    return v0
.end method

.method public isBuzzEnabled()Z
    .registers 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isBuzzEnabled:Z

    return v0
.end method

.method public isCheckinAddPlaceEnabled()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isCheckinAddPlaceEnabled:Z

    return v0
.end method

.method public isDownloadMapAreaEnabled()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isDownloadMapAreaEnabled:Z

    return v0
.end method

.method public isGaiaLoginEnabled()Z
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isGaiaLoginEnabled:Z

    return v0
.end method

.method public isGooglePlusEnabled()Z
    .registers 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isGooglePlusEnabled:Z

    return v0
.end method

.method public isKmlSearchEnabled()Z
    .registers 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isKmlSearchEnabled:Z

    return v0
.end method

.method public isLatitudeEnabled()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isLatitudeEnabled:Z

    return v0
.end method

.method public isMyMapsEnabled()Z
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isMyMapsEnabled:Z

    return v0
.end method

.method public isOffersFeatureSwitcherEnabled()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOffersFeatureSwitcherEnabled:Z

    return v0
.end method

.method public isOfflineMapsEnabled()Z
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOfflineMapsEnabled:Z

    return v0
.end method

.method public isPersonalizedSmartMapsDisabled()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPersonalizedSmartMapsDisabled:Z

    return v0
.end method

.method public isPertileEnabled()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPertileEnabled:Z

    return v0
.end method

.method public isPhotoUploadEnabled()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isPhotoUploadEnabled:Z

    return v0
.end method

.method public isRasterMapsEnabled()Z
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRasterMapsEnabled:Z

    return v0
.end method

.method public isRatingsReviewTextEnabled()Z
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRatingsReviewTextEnabled:Z

    return v0
.end method

.method public isRoadLayersEnabled()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isRoadLayersEnabled:Z

    return v0
.end method

.method public isSesameMapDataEditsEnabled()Z
    .registers 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isSesameMapDataEditsEnabled:Z

    return v0
.end method

.method public isStarringSyncEnabled()Z
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isStarringSyncEnabled:Z

    return v0
.end method

.method public isTilePrefetchingEnabled()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isTilePrefetchingEnabled:Z

    return v0
.end method

.method public isUserGeneratedContentEnabled()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isUserGeneratedContentEnabled:Z

    return v0
.end method

.method public mergeEnabledFeatures(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->mergeFlags(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 102
    return-void
.end method
