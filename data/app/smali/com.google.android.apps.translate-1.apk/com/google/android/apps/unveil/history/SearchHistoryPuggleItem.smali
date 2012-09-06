.class public Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;
.super Lcom/google/android/apps/unveil/history/SearchHistoryItem;
.source "SearchHistoryPuggleItem.java"


# instance fields
.field private final box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private final textRestrict:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)V
    .registers 15
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
    .parameter "textRestrict"
    .parameter "box"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p12}, Lcom/google/android/apps/unveil/history/SearchHistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 24
    iput-object p13, p0, Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;->textRestrict:Ljava/lang/String;

    .line 25
    iput-object p14, p0, Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;->box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 26
    return-void
.end method


# virtual methods
.method public getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;->box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;->textRestrict:Ljava/lang/String;

    return-object v0
.end method

.method public hasBox()Z
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;->box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
