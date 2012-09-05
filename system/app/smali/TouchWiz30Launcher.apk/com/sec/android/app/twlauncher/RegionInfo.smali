.class Lcom/sec/android/app/twlauncher/RegionInfo;
.super Ljava/lang/Object;
.source "RegionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/RegionInfo$1;,
        Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;
    }
.end annotation


# instance fields
.field private mRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addF(ILandroid/graphics/RectF;)Z
    .registers 5
    .parameter "aId"
    .parameter "aRect"

    .prologue
    .line 37
    new-instance v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;-><init>(Lcom/sec/android/app/twlauncher/RegionInfo;Lcom/sec/android/app/twlauncher/RegionInfo$1;)V

    .line 38
    .local v0, data:Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;
    iput p1, v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->mId:I

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->mRect:Landroid/graphics/RectF;

    .line 40
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    return-void
.end method

.method public getF(Landroid/graphics/PointF;)I
    .registers 7
    .parameter "aPoint"

    .prologue
    .line 50
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_24

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/RegionInfo;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;

    .line 52
    .local v0, data:Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;
    iget-object v2, v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->mRect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 53
    iget v2, v0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->mId:I

    .line 56
    .end local v0           #data:Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;
    :goto_20
    return v2

    .line 50
    .restart local v0       #data:Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 56
    .end local v0           #data:Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;
    :cond_24
    const/4 v2, -0x1

    goto :goto_20
.end method
