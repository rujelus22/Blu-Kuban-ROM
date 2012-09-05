.class public Lcom/google/android/apps/books/api/OceanApiaryUrls;
.super Ljava/lang/Object;
.source "OceanApiaryUrls.java"


# static fields
.field private static CPKSVER:Ljava/lang/String;

.field public static DEVELOPER_KEY:Ljava/lang/String;

.field private static NONCE:Ljava/lang/String;

.field private static SOURCE:Ljava/lang/String;

.field private static VOLUME_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "key"

    sput-object v0, Lcom/google/android/apps/books/api/OceanApiaryUrls;->DEVELOPER_KEY:Ljava/lang/String;

    .line 24
    const-string v0, "cpksver"

    sput-object v0, Lcom/google/android/apps/books/api/OceanApiaryUrls;->CPKSVER:Ljava/lang/String;

    .line 25
    const-string v0, "nonce"

    sput-object v0, Lcom/google/android/apps/books/api/OceanApiaryUrls;->NONCE:Ljava/lang/String;

    .line 26
    const-string v0, "source"

    sput-object v0, Lcom/google/android/apps/books/api/OceanApiaryUrls;->SOURCE:Ljava/lang/String;

    .line 27
    const-string v0, "volumeId"

    sput-object v0, Lcom/google/android/apps/books/api/OceanApiaryUrls;->VOLUME_ID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static forAddVolumeToMyEBooksShelf(Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 2
    .parameter "volumeId"

    .prologue
    .line 83
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forAddVolumeToShelf(Ljava/lang/String;I)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    return-object v0
.end method

.method public static forAddVolumeToShelf(Ljava/lang/String;I)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 5
    .parameter "volumeId"
    .parameter "shelf"

    .prologue
    .line 87
    invoke-static {}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRoot()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v1

    .line 88
    .local v1, result:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/GoogleUrl;->getPathParts()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "mylibrary"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v2, "bookshelves"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v2, "addVolume"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->VOLUME_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-object v1
.end method

.method public static forFetchVolume(Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 4
    .parameter "volumeId"

    .prologue
    .line 70
    invoke-static {}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRoot()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v1

    .line 71
    .local v1, result:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/GoogleUrl;->getPathParts()Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "volumes"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v1
.end method

.method public static forMyEBooksAndSyncLicenses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 6
    .parameter "cpksver"
    .parameter "nonce"
    .parameter "source"

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRoot()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v1

    .line 55
    .local v1, result:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/GoogleUrl;->getPathParts()Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "myconfig"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v2, "syncVolumeLicenses"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->CPKSVER:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->NONCE:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->SOURCE:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v1
.end method

.method public static forReleaseDownloadAccess(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 5
    .parameter "volumeId"
    .parameter "cpksver"

    .prologue
    .line 154
    invoke-static {}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRoot()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v1

    .line 155
    .local v1, result:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/GoogleUrl;->getPathParts()Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "myconfig"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v2, "releaseDownloadAccess"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->CPKSVER:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v2, "volumeIds"

    invoke-virtual {v1, v2, p0}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v1
.end method

.method public static forRemovingVolumeFromMyEBooksShelf(Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 2
    .parameter "volumeId"

    .prologue
    .line 103
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRemovingVolumeFromShelf(Ljava/lang/String;I)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    return-object v0
.end method

.method public static forRemovingVolumeFromShelf(Ljava/lang/String;I)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 5
    .parameter "volumeId"
    .parameter "shelf"

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRoot()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v1

    .line 114
    .local v1, result:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/GoogleUrl;->getPathParts()Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "mylibrary"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v2, "bookshelves"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v2, "removeVolume"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->VOLUME_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object v1
.end method

.method public static forRequestAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 7
    .parameter "volumeId"
    .parameter "cpksver"
    .parameter "nonce"
    .parameter "source"

    .prologue
    .line 135
    invoke-static {}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRoot()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v1

    .line 136
    .local v1, result:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/GoogleUrl;->getPathParts()Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "myconfig"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v2, "requestAccess"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->CPKSVER:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->NONCE:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->SOURCE:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->VOLUME_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-object v1
.end method

.method public static forRoot()Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/api/client/googleapis/GoogleUrl;

    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseApiaryUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static forSetReadingPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 8
    .parameter "volumeId"
    .parameter "position"
    .parameter "timestamp"
    .parameter "action"

    .prologue
    .line 173
    invoke-static {}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRoot()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v1

    .line 174
    .local v1, result:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/GoogleUrl;->getPathParts()Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, pathParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "mylibrary"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v2, "readingpositions"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v2, "setPosition"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v2, "timestamp"

    invoke-virtual {v1, v2, p2}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v2, "position"

    invoke-virtual {v1, v2, p1}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v2, "action"

    const-string v3, "next-page"

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-object v1
.end method
