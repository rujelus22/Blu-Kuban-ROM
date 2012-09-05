.class Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;
.super Ljava/lang/Object;
.source "VolumeManifestFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/sync/VolumeManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialResources"
.end annotation


# instance fields
.field private final mResourceInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->mResourceInfos:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->mUniqueInfos:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;-><init>()V

    return-void
.end method


# virtual methods
.method public addResource(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->mResourceInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->mUniqueInfos:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->getResourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->mUniqueInfos:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->getResourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_1a
    return-void
.end method

.method public getAllResources()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->mResourceInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUniqueResources()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->mUniqueInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
