.class public Lcom/google/android/apps/books/api/ApiaryVolume;
.super Ljava/lang/Object;
.source "ApiaryVolume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;,
        Lcom/google/android/apps/books/api/ApiaryVolume$AccessViewStatus;,
        Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;,
        Lcom/google/android/apps/books/api/ApiaryVolume$SaleInfo;,
        Lcom/google/android/apps/books/api/ApiaryVolume$ReadingPosition;,
        Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;,
        Lcom/google/android/apps/books/api/ApiaryVolume$ImageLinks;,
        Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;
    }
.end annotation


# static fields
.field private static final sNewToOldViewabilityMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public saleInfo:Lcom/google/android/apps/books/api/ApiaryVolume$SaleInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public userInfo:Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 200
    sget-object v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->ALL_PAGES:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    const-string v1, "http://schemas.google.com/books/2008#view_all_pages"

    sget-object v2, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->PARTIAL:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    const-string v3, "http://schemas.google.com/books/2008#view_partial"

    sget-object v4, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->NO_PAGES:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    const-string v5, "http://schemas.google.com/books/2008#view_no_pages"

    sget-object v6, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->UNKNOWN:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    const-string v7, "http://schemas.google.com/books/2008#view_unknown"

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/api/ApiaryVolume;->sNewToOldViewabilityMap:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method private parseTime(Ljava/lang/String;)J
    .registers 7
    .parameter "value"

    .prologue
    .line 275
    new-instance v1, Landroid/text/format/Time;

    const-string v2, "UTC"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {v1, p1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    move-result v0

    .line 277
    .local v0, parsed:Z
    if-nez v0, :cond_26

    .line 278
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_26
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method private prepareCoverUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "thumbnailUrl"

    .prologue
    .line 286
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "zoom"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "edge"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "l"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "h"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/google/android/apps/books/util/UriUtils;->dropQueryParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toOldStyleOpenAccessValue(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 3
    .parameter "isPublicDomain"

    .prologue
    .line 290
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 292
    const-string v0, "http://schemas.google.com/books/2008#enabled"

    .line 294
    :goto_b
    return-object v0

    :cond_c
    const-string v0, "http://schemas.google.com/books/2008#disabled"

    goto :goto_b
.end method


# virtual methods
.method public toContentValues()Landroid/content/ContentValues;
    .registers 7

    .prologue
    .line 214
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v1, result:Landroid/content/ContentValues;
    const-string v3, "volume_id"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->etag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 219
    const-string v3, "version"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->etag:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1b
    const-string v3, "title"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->authors:Ljava/util/List;

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->authors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_44

    .line 225
    const-string v4, "creator"

    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->authors:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_44
    const-string v3, "publisher"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->publisher:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v3, "date"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->publishedDate:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "description"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "content_version"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->contentVersion:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->imageLinks:Lcom/google/android/apps/books/api/ApiaryVolume$ImageLinks;

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->imageLinks:Lcom/google/android/apps/books/api/ApiaryVolume$ImageLinks;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$ImageLinks;->thumbnail:Ljava/lang/String;

    if-eqz v3, :cond_85

    .line 235
    const-string v3, "cover_url"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->imageLinks:Lcom/google/android/apps/books/api/ApiaryVolume$ImageLinks;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$ImageLinks;->thumbnail:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/api/ApiaryVolume;->prepareCoverUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_85
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->userInfo:Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->userInfo:Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;->readingPosition:Lcom/google/android/apps/books/api/ApiaryVolume$ReadingPosition;

    if-eqz v3, :cond_ad

    .line 243
    const-string v3, "position"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->userInfo:Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;->readingPosition:Lcom/google/android/apps/books/api/ApiaryVolume$ReadingPosition;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$ReadingPosition;->textPosition:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v3, "last_access"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->userInfo:Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;->readingPosition:Lcom/google/android/apps/books/api/ApiaryVolume$ReadingPosition;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$ReadingPosition;->updated:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/api/ApiaryVolume;->parseTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    :cond_ad
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->accessViewStatus:Ljava/lang/String;

    if-eqz v3, :cond_d0

    .line 248
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->accessViewStatus:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/books/api/ApiaryVolume$AccessViewStatus;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/api/ApiaryVolume$AccessViewStatus;

    move-result-object v0

    .line 250
    .local v0, accessViewStatus:Lcom/google/android/apps/books/api/ApiaryVolume$AccessViewStatus;
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->saleInfo:Lcom/google/android/apps/books/api/ApiaryVolume$SaleInfo;

    if-eqz v3, :cond_d0

    sget-object v3, Lcom/google/android/apps/books/api/ApiaryVolume$AccessViewStatus;->SAMPLE:Lcom/google/android/apps/books/api/ApiaryVolume$AccessViewStatus;

    if-ne v0, v3, :cond_d0

    .line 251
    const-string v3, "buy_url"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->saleInfo:Lcom/google/android/apps/books/api/ApiaryVolume$SaleInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$SaleInfo;->buyLink:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v0           #accessViewStatus:Lcom/google/android/apps/books/api/ApiaryVolume$AccessViewStatus;
    :cond_d0
    const-string v3, "open_access"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->publicDomain:Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/api/ApiaryVolume;->toOldStyleOpenAccessValue(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->viewability:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    move-result-object v2

    .line 261
    .local v2, viewability:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;
    const-string v4, "viewability"

    sget-object v3, Lcom/google/android/apps/books/api/ApiaryVolume;->sNewToOldViewabilityMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->textToSpeechPermission:Ljava/lang/String;

    if-eqz v3, :cond_101

    .line 264
    const-string v3, "tts_permission"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->textToSpeechPermission:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_101
    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v3, v3, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->canonicalVolumeLink:Ljava/lang/String;

    if-eqz v3, :cond_110

    .line 268
    const-string v3, "canonical_url"

    iget-object v4, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v4, v4, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->canonicalVolumeLink:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_110
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiaryVolume [ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeInfo = [ title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v1, v1, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v0, v0, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->authors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v1, v1, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->contentVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v1, v1, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publishedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v1, v1, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->publishedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->volumeInfo:Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;

    iget-object v1, v1, Lcom/google/android/apps/books/api/ApiaryVolume$VolumeInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], accessInfo = [ accessViewStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v1, v1, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->accessViewStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v0, v0, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->downloadAccess:Lcom/google/android/apps/books/api/DownloadAccessResponse;

    if-nez v0, :cond_a3

    const-string v0, ""

    :goto_94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a3
    iget-object v0, p0, Lcom/google/android/apps/books/api/ApiaryVolume;->accessInfo:Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;

    iget-object v0, v0, Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;->downloadAccess:Lcom/google/android/apps/books/api/DownloadAccessResponse;

    invoke-virtual {v0}, Lcom/google/android/apps/books/api/DownloadAccessResponse;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_94
.end method
