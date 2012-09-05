.class public final Lcom/google/android/apps/books/provider/BooksContract$Files;
.super Ljava/lang/Object;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Files"
.end annotation


# static fields
.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3066
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "files"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Files;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCoverFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;
    .registers 7
    .parameter "baseDir"
    .parameter "uri"

    .prologue
    .line 3129
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3130
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 3131
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildVolumeDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3132
    .local v1, volumeDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "cover.png"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method public static buildCoverThumbnailFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;
    .registers 7
    .parameter "baseDir"
    .parameter "uri"

    .prologue
    .line 3140
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3141
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 3142
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildVolumeDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3143
    .local v1, volumeDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "cover_thumbnail.png"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method public static buildPageContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 3119
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildVolumeDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3120
    .local v1, volumeDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "pages"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3121
    .local v0, typeDir:Ljava/io/File;
    return-object v0
.end method

.method public static buildPageContentFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "uri"

    .prologue
    .line 3231
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3232
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 3233
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3234
    .local v1, pageId:Ljava/lang/String;
    invoke-static {p0, v0, v2, v1}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildPageContentFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method public static buildPageContentFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "accountName"
    .parameter "volumeId"
    .parameter "pageId"

    .prologue
    .line 3242
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildPageContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildResContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 3109
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildVolumeDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3110
    .local v1, volumeDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "res2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3111
    .local v0, typeDir:Ljava/io/File;
    return-object v0
.end method

.method public static buildResContentFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "uri"

    .prologue
    .line 3169
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3170
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 3171
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3172
    .local v1, resId:Ljava/lang/String;
    invoke-static {p0, v0, v2, v1}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildResContentFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method public static buildResContentFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .parameter "baseDir"
    .parameter "accountName"
    .parameter "volumeId"
    .parameter "resId"

    .prologue
    .line 3223
    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Files;->resourceIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3224
    .local v0, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildResContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildSectionContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 3099
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildVolumeDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3100
    .local v1, volumeDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "segments"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3101
    .local v0, typeDir:Ljava/io/File;
    return-object v0
.end method

.method public static buildSectionContentFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "uri"

    .prologue
    .line 3150
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3151
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 3152
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3153
    .local v1, sectionId:Ljava/lang/String;
    invoke-static {p0, v0, v2, v1}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildSectionContentFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method public static buildSectionContentFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "accountName"
    .parameter "volumeId"
    .parameter "sectionId"

    .prologue
    .line 3161
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildSectionContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildVolumeDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "baseDir"
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 3089
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildVolumesDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3090
    .local v1, volumesDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3091
    .local v0, volumeDir:Ljava/io/File;
    return-object v0
.end method

.method public static buildVolumesDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "baseDir"
    .parameter "accountName"

    .prologue
    .line 3082
    new-instance v1, Ljava/io/File;

    const-string v3, "accounts"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3083
    .local v1, acctsDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3084
    .local v0, acctDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "volumes"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3085
    .local v2, volumesDir:Ljava/io/File;
    return-object v2
.end method

.method public static resourceIdToFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "resourceId"

    .prologue
    .line 3201
    const/16 v5, 0xa

    :try_start_2
    invoke-static {p0, v5}, Lcom/google/android/apps/books/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 3203
    .local v4, resourceUrlBytes:[B
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3206
    .local v3, resourceUrl:Ljava/lang/String;
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3207
    .local v0, digest:Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 3210
    .local v1, digestBytes:[B
    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/google/android/apps/books/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_22} :catch_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_22} :catch_2d

    move-result-object v5

    return-object v5

    .line 3211
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v1           #digestBytes:[B
    .end local v3           #resourceUrl:Ljava/lang/String;
    .end local v4           #resourceUrlBytes:[B
    :catch_24
    move-exception v2

    .line 3212
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Missing SHA-1 digest"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3213
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2d
    move-exception v2

    .line 3214
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Missing UTF-8 charset"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static urlToResourceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "resourceUrl"

    .prologue
    .line 3180
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 3182
    :catch_d
    move-exception v0

    .line 3183
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported encoding UTF-8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
