.class public final Lcom/cooliris/media/DisplaySlot;
.super Ljava/lang/Object;
.source "DisplaySlot.java"


# static fields
.field private static final CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

.field private static final CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

.field private static final LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;


# instance fields
.field private mLocation:Ljava/lang/String;

.field private mLocationImage:Lcom/cooliris/media/StringTexture;

.field private mSetRef:Lcom/cooliris/media/MediaSet;

.field private mTitle:Ljava/lang/String;

.field private mTitleImage:Lcom/cooliris/media/StringTexture;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v2, 0x40

    const/16 v1, 0x20

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x3fc0

    .line 35
    new-instance v0, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    .line 37
    new-instance v0, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    .line 39
    new-instance v0, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/cooliris/media/DisplaySlot;->LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    .line 42
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v6, v0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 43
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    const/high16 v3, 0x4180

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 44
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput-boolean v6, v0, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    .line 45
    sget-object v3, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b0

    const/16 v0, 0x80

    :goto_38
    iput v0, v3, Lcom/cooliris/media/StringTexture$Config;->width:I

    .line 46
    sget-object v3, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b3

    move v0, v1

    :goto_43
    iput v0, v3, Lcom/cooliris/media/StringTexture$Config;->height:I

    .line 47
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    const/4 v3, 0x3

    iput v3, v0, Lcom/cooliris/media/StringTexture$Config;->yalignment:I

    .line 48
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v7, v0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 50
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v6, v0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 51
    sget-object v3, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b5

    const/16 v0, 0x80

    :goto_5c
    iput v0, v3, Lcom/cooliris/media/StringTexture$Config;->width:I

    .line 52
    sget-object v3, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b8

    move v0, v1

    :goto_67
    iput v0, v3, Lcom/cooliris/media/StringTexture$Config;->height:I

    .line 53
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    const/4 v3, 0x3

    iput v3, v0, Lcom/cooliris/media/StringTexture$Config;->yalignment:I

    .line 54
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    const/high16 v3, 0x4180

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 55
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput-boolean v6, v0, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    .line 56
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v7, v0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 58
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v6, v0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 59
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    const/high16 v3, 0x4140

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 60
    sget-object v3, Lcom/cooliris/media/DisplaySlot;->LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_ba

    const/16 v0, 0x80

    :goto_96
    iput v0, v3, Lcom/cooliris/media/StringTexture$Config;->width:I

    .line 61
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_bd

    :goto_a0
    iput v1, v0, Lcom/cooliris/media/StringTexture$Config;->height:I

    .line 62
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    const/high16 v1, 0x4140

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 63
    sget-object v0, Lcom/cooliris/media/DisplaySlot;->LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v7, v0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 64
    return-void

    .line 45
    :cond_b0
    const/16 v0, 0x100

    goto :goto_38

    :cond_b3
    move v0, v2

    .line 46
    goto :goto_43

    .line 51
    :cond_b5
    const/16 v0, 0x100

    goto :goto_5c

    :cond_b8
    move v0, v2

    .line 52
    goto :goto_67

    .line 60
    :cond_ba
    const/16 v0, 0x100

    goto :goto_96

    :cond_bd
    move v1, v2

    .line 61
    goto :goto_a0
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTextureForString(Ljava/lang/String;Ljava/util/HashMap;Lcom/cooliris/media/StringTexture$Config;)Lcom/cooliris/media/StringTexture;
    .registers 6
    .parameter "string"
    .parameter
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cooliris/media/StringTexture;",
            ">;",
            "Lcom/cooliris/media/StringTexture$Config;",
            ")",
            "Lcom/cooliris/media/StringTexture;"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, textureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/cooliris/media/StringTexture;>;"
    const/4 v0, 0x0

    .line 92
    .local v0, texture:Lcom/cooliris/media/StringTexture;
    if-eqz p2, :cond_f

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 93
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #texture:Lcom/cooliris/media/StringTexture;
    check-cast v0, Lcom/cooliris/media/StringTexture;

    .line 95
    .restart local v0       #texture:Lcom/cooliris/media/StringTexture;
    :cond_f
    if-nez v0, :cond_1b

    .line 96
    new-instance v0, Lcom/cooliris/media/StringTexture;

    .end local v0           #texture:Lcom/cooliris/media/StringTexture;
    invoke-direct {v0, p1, p3}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    .line 97
    .restart local v0       #texture:Lcom/cooliris/media/StringTexture;
    if-eqz p2, :cond_1b

    .line 98
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1b
    return-object v0
.end method


# virtual methods
.method public getLocationImage(Lcom/cooliris/media/ReverseGeocoder;Ljava/util/HashMap;)Lcom/cooliris/media/StringTexture;
    .registers 6
    .parameter "reverseGeocoder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cooliris/media/ReverseGeocoder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cooliris/media/StringTexture;",
            ">;)",
            "Lcom/cooliris/media/StringTexture;"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, textureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/cooliris/media/StringTexture;>;"
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    iget-object v1, v1, Lcom/cooliris/media/MediaSet;->mTitleString:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 123
    :cond_a
    const/4 v1, 0x0

    .line 138
    :goto_b
    return-object v1

    .line 125
    :cond_c
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mLocationImage:Lcom/cooliris/media/StringTexture;

    if-nez v1, :cond_3a

    .line 126
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    iget-boolean v1, v1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    if-nez v1, :cond_22

    if-eqz p1, :cond_22

    .line 127
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    invoke-virtual {p1, v1}, Lcom/cooliris/media/ReverseGeocoder;->enqueue(Lcom/cooliris/media/MediaSet;)V

    .line 128
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    .line 130
    :cond_22
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    iget-boolean v1, v1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    if-eqz v1, :cond_3a

    .line 131
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    iget-object v0, v1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 132
    .local v0, geocodedLocation:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 133
    iput-object v0, p0, Lcom/cooliris/media/DisplaySlot;->mLocation:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mLocation:Ljava/lang/String;

    sget-object v2, Lcom/cooliris/media/DisplaySlot;->LOCATION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {p0, v1, p2, v2}, Lcom/cooliris/media/DisplaySlot;->getTextureForString(Ljava/lang/String;Ljava/util/HashMap;Lcom/cooliris/media/StringTexture$Config;)Lcom/cooliris/media/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mLocationImage:Lcom/cooliris/media/StringTexture;

    .line 138
    .end local v0           #geocodedLocation:Ljava/lang/String;
    :cond_3a
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mLocationImage:Lcom/cooliris/media/StringTexture;

    goto :goto_b
.end method

.method public getMediaSet()Lcom/cooliris/media/MediaSet;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    return-object v0
.end method

.method public getTitleImage(Ljava/util/HashMap;)Lcom/cooliris/media/StringTexture;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cooliris/media/StringTexture;",
            ">;)",
            "Lcom/cooliris/media/StringTexture;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, textureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/cooliris/media/StringTexture;>;"
    iget-object v2, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    if-nez v2, :cond_6

    .line 106
    const/4 v0, 0x0

    .line 117
    :cond_5
    :goto_5
    return-object v0

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/cooliris/media/DisplaySlot;->mTitleImage:Lcom/cooliris/media/StringTexture;

    .line 109
    .local v0, texture:Lcom/cooliris/media/StringTexture;
    iget-object v2, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    iget-object v1, v2, Lcom/cooliris/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    .line 110
    .local v1, title:Ljava/lang/String;
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/cooliris/media/DisplaySlot;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 111
    iget-object v2, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    iget-wide v2, v2, Lcom/cooliris/media/MediaSet;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    iget-wide v2, v2, Lcom/cooliris/media/MediaSet;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    sget-object v2, Lcom/cooliris/media/DisplaySlot;->CAPTION_STYLE:Lcom/cooliris/media/StringTexture$Config;

    :goto_2e
    invoke-direct {p0, v1, p1, v2}, Lcom/cooliris/media/DisplaySlot;->getTextureForString(Ljava/lang/String;Ljava/util/HashMap;Lcom/cooliris/media/StringTexture$Config;)Lcom/cooliris/media/StringTexture;

    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/cooliris/media/DisplaySlot;->mTitleImage:Lcom/cooliris/media/StringTexture;

    .line 115
    iput-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mTitle:Ljava/lang/String;

    goto :goto_5

    .line 111
    :cond_37
    sget-object v2, Lcom/cooliris/media/DisplaySlot;->CLUSTER_STYLE:Lcom/cooliris/media/StringTexture$Config;

    goto :goto_2e
.end method

.method public hasValidLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    if-eqz v1, :cond_c

    .line 83
    iget-object v1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    iget-object v1, v1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 85
    :cond_c
    return v0
.end method

.method public setMediaSet(Lcom/cooliris/media/MediaSet;)V
    .registers 4
    .parameter "set"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    iput-object p1, p0, Lcom/cooliris/media/DisplaySlot;->mSetRef:Lcom/cooliris/media/MediaSet;

    .line 68
    iput-object v0, p0, Lcom/cooliris/media/DisplaySlot;->mTitle:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/cooliris/media/DisplaySlot;->mTitleImage:Lcom/cooliris/media/StringTexture;

    .line 70
    iput-object v0, p0, Lcom/cooliris/media/DisplaySlot;->mLocationImage:Lcom/cooliris/media/StringTexture;

    .line 71
    iget-object v0, p1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 72
    iput-boolean v1, p1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    .line 73
    iput-boolean v1, p1, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    .line 75
    :cond_12
    return-void
.end method
