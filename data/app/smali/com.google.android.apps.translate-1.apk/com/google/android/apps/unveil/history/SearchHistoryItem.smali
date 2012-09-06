.class public Lcom/google/android/apps/unveil/history/SearchHistoryItem;
.super Lcom/google/android/apps/unveil/history/ItemModel;
.source "SearchHistoryItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;
    }
.end annotation


# instance fields
.field private final isSearchable:Z

.field private final isShared:Z

.field private final lat:Ljava/lang/Double;

.field private final lng:Ljava/lang/Double;

.field private final locationDescription:Ljava/lang/String;

.field private final momentId:Ljava/lang/String;

.field private final note:Ljava/lang/String;

.field private final thumbnailUrl:Ljava/lang/String;

.field private final timestamp:J

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .registers 13
    .parameter "momentId"
    .parameter "title"
    .parameter "url"
    .parameter "timestamp"
    .parameter "thumbnail"
    .parameter "note"
    .parameter "isShared"
    .parameter "isSearchable"
    .parameter "location"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/ItemModel;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->momentId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->title:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->url:Ljava/lang/String;

    .line 55
    iput-wide p4, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->timestamp:J

    .line 56
    iput-object p6, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->thumbnailUrl:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->note:Ljava/lang/String;

    .line 58
    iput-boolean p8, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->isShared:Z

    .line 59
    iput-boolean p9, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->isSearchable:Z

    .line 60
    iput-object p10, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->locationDescription:Ljava/lang/String;

    .line 61
    iput-object p11, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->lat:Ljava/lang/Double;

    .line 62
    iput-object p12, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->lng:Ljava/lang/Double;

    .line 63
    return-void
.end method

.method private degToE6(D)I
    .registers 7
    .parameter "d"

    .prologue
    .line 126
    const-wide v0, 0x412e848000000000L

    .line 127
    .local v0, MICRO_TO_DEG:D
    const-wide v2, 0x412e848000000000L

    mul-double/2addr v2, p1

    double-to-int v2, v2

    return v2
.end method


# virtual methods
.method public getGeoPoint()Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->lat:Ljava/lang/Double;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->lng:Ljava/lang/Double;

    if-nez v0, :cond_a

    .line 116
    :cond_8
    const/4 v0, 0x0

    .line 118
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;

    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->lat:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->degToE6(D)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->degToE6(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;-><init>(II)V

    goto :goto_9
.end method

.method public getLat()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public getLng()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->lng:Ljava/lang/Double;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->locationDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMomentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->momentId:Ljava/lang/String;

    return-object v0
.end method

.method public getMomentUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSearchable()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->isSearchable:Z

    return v0
.end method

.method public isShared()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->isShared:Z

    return v0
.end method
