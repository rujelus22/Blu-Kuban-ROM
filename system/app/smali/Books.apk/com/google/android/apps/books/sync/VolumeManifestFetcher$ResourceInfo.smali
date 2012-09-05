.class Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
.super Ljava/lang/Object;
.source "VolumeManifestFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/sync/VolumeManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceInfo"
.end annotation


# instance fields
.field private final mMimeType:Ljava/lang/String;

.field private final mResourceID:Ljava/lang/String;

.field private final mResourceUrl:Ljava/lang/String;

.field private mSegmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "resourceUrl"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mResourceUrl:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mMimeType:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mResourceUrl:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mResourceID:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mResourceID:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mResourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mSegmentId:Ljava/lang/String;

    return-object v0
.end method

.method public setSegmentId(Ljava/lang/String;)V
    .registers 2
    .parameter "segmentId"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->mSegmentId:Ljava/lang/String;

    .line 216
    return-void
.end method
