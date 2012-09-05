.class public Lcom/google/android/finsky/download/DownloadImpl;
.super Ljava/lang/Object;
.source "DownloadImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/InternalDownload;


# static fields
.field private static final COMPLETED_STATES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/finsky/download/Download$DownloadState;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSTARTED_STATES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/finsky/download/Download$DownloadState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private final mCookieName:Ljava/lang/String;

.field private final mCookieValue:Ljava/lang/String;

.field private final mFileUri:Landroid/net/Uri;

.field private mHttpStatus:I

.field private mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

.field private final mMainObb:Lcom/google/android/finsky/download/obb/Obb;

.field private mNext:Lcom/google/android/finsky/download/InternalDownload;

.field private final mObb:Lcom/google/android/finsky/download/obb/Obb;

.field private final mObbDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

.field private final mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

.field private mSize:J

.field mState:Lcom/google/android/finsky/download/Download$DownloadState;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/download/DownloadImpl;->COMPLETED_STATES:Ljava/util/EnumSet;

    .line 67
    sget-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/download/DownloadImpl;->UNSTARTED_STATES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLcom/google/android/finsky/download/obb/Obb;)V
    .registers 12
    .parameter "url"
    .parameter "title"
    .parameter "properties"
    .parameter "cookieName"
    .parameter "cookieValue"
    .parameter "fileUri"
    .parameter "size"
    .parameter "obb"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObbDownloads:Ljava/util/List;

    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mTitle:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

    .line 116
    if-eqz p3, :cond_2c

    .line 117
    iget-object v0, p3, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 118
    iget-object v0, p3, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 124
    :goto_1a
    iput-object p4, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieName:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieValue:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lcom/google/android/finsky/download/DownloadImpl;->mFileUri:Landroid/net/Uri;

    .line 127
    iput-wide p7, p0, Lcom/google/android/finsky/download/DownloadImpl;->mSize:J

    .line 128
    iput-object p9, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 129
    sget-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/DownloadImpl;->setState(Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 130
    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mNext:Lcom/google/android/finsky/download/InternalDownload;

    .line 131
    return-void

    .line 120
    :cond_2c
    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 121
    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_1a
.end method

.method private addObbDownload(Ljava/util/List;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 5
    .parameter
    .parameter "obb"
    .parameter "obbDownload"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;",
            "Lcom/google/android/finsky/download/obb/Obb;",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, obbDownloads:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/download/InternalDownload;>;"
    if-eqz p3, :cond_f

    .line 335
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-interface {p2, v0}, Lcom/google/android/finsky/download/obb/Obb;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    .line 336
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObbDownloads:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_f
    return-void
.end method

.method private addObbLinks(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 4
    .parameter "mainObbDl"
    .parameter "patchObbDl"

    .prologue
    .line 373
    if-eqz p1, :cond_8

    .line 374
    if-eqz p2, :cond_e

    move-object v0, p2

    .line 375
    .local v0, next:Lcom/google/android/finsky/download/InternalDownload;
    :goto_5
    invoke-interface {p1, v0}, Lcom/google/android/finsky/download/InternalDownload;->setNext(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 379
    .end local v0           #next:Lcom/google/android/finsky/download/InternalDownload;
    :cond_8
    if-eqz p2, :cond_d

    .line 380
    invoke-interface {p2, p0}, Lcom/google/android/finsky/download/InternalDownload;->setNext(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 382
    :cond_d
    return-void

    :cond_e
    move-object v0, p0

    .line 374
    goto :goto_5
.end method

.method private createObbDownload(Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;
    .registers 14
    .parameter "obb"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 347
    if-nez p1, :cond_6

    .line 363
    :cond_5
    :goto_5
    return-object v3

    .line 351
    :cond_6
    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 352
    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/download/obb/ObbState;->shouldDownload(Lcom/google/android/finsky/download/obb/ObbState;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 353
    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-eq v0, v1, :cond_5

    .line 354
    const-string v0, "Skipping obb download with state %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/download/obb/ObbState;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 359
    :cond_2d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    .line 360
    .local v10, context:Landroid/content/Context;
    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v11

    .line 361
    .local v11, tempFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 363
    new-instance v0, Lcom/google/android/finsky/download/DownloadImpl;

    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07015b

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadImpl;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v10, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieValue:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v7

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLcom/google/android/finsky/download/obb/Obb;)V

    move-object v3, v0

    goto :goto_5
.end method


# virtual methods
.method public createDownloadRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRequest;
    .registers 11
    .parameter "notificationpackageName"
    .parameter "notificationClass"

    .prologue
    .line 235
    new-instance v0, Lcom/google/android/finsky/download/DownloadRequest;

    invoke-virtual {p0}, Lcom/google/android/finsky/download/DownloadImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadImpl;->mCookieValue:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/download/DownloadImpl;->mFileUri:Landroid/net/Uri;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/download/DownloadRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 290
    if-ne p1, p0, :cond_4

    .line 291
    const/4 v1, 0x1

    .line 300
    :goto_3
    return v1

    .line 294
    :cond_4
    instance-of v1, p1, Lcom/google/android/finsky/download/DownloadImpl;

    if-nez v1, :cond_a

    .line 295
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 298
    check-cast v0, Lcom/google/android/finsky/download/DownloadImpl;

    .line 300
    .local v0, other:Lcom/google/android/finsky/download/DownloadImpl;
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getActiveObbDownloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObbDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getBytesCompleted()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 173
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 174
    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 175
    iget-wide v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mSize:J

    .line 181
    :cond_11
    :goto_11
    return-wide v0

    .line 176
    :cond_12
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

    if-eqz v2, :cond_11

    .line 177
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

    iget-wide v2, v2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_11

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

    iget-wide v0, v0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    goto :goto_11
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 195
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 196
    sget-object v0, Lcom/google/android/finsky/download/DownloadImpl;->UNSTARTED_STATES:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to fetch content uri when in an unstarted state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mContentUri:Landroid/net/Uri;

    if-nez v0, :cond_21

    .line 203
    const-string v0, "Called getContentUri when content uri is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_21
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHttpStatus()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mHttpStatus:I

    return v0
.end method

.method public getNext()Lcom/google/android/finsky/download/InternalDownload;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mNext:Lcom/google/android/finsky/download/InternalDownload;

    return-object v0
.end method

.method public getObb()Lcom/google/android/finsky/download/obb/Obb;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    return-object v0
.end method

.method public getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;
    .registers 2

    .prologue
    .line 148
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

    return-object v0
.end method

.method public getProgress()Lcom/google/android/finsky/download/DownloadProgress;
    .registers 2

    .prologue
    .line 135
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

    return-object v0
.end method

.method public getRequestedDestination()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mSize:J

    return-wide v0
.end method

.method public getState()Lcom/google/android/finsky/download/Download$DownloadState;
    .registers 2

    .prologue
    .line 227
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappedObb(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/download/obb/Obb;
    .registers 4
    .parameter "obbDownload"

    .prologue
    .line 390
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, downloadUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 392
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 397
    :goto_16
    return-object v1

    .line 394
    :cond_17
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 395
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_16

    .line 397
    :cond_2a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getWrappedObbDownloads()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 321
    .local v1, obbDls:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/download/InternalDownload;>;"
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/download/DownloadImpl;->createObbDownload(Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 322
    .local v0, mainObbDl:Lcom/google/android/finsky/download/InternalDownload;
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/download/DownloadImpl;->createObbDownload(Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v2

    .line 324
    .local v2, patchObbDl:Lcom/google/android/finsky/download/InternalDownload;
    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/download/DownloadImpl;->addObbLinks(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/InternalDownload;)V

    .line 326
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadImpl;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, v1, v3, v0}, Lcom/google/android/finsky/download/DownloadImpl;->addObbDownload(Ljava/util/List;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/InternalDownload;)V

    .line 327
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/finsky/download/DownloadImpl;->addObbDownload(Ljava/util/List;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/InternalDownload;)V

    .line 329
    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public internalGetContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 211
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isCompleted()Z
    .registers 3

    .prologue
    .line 165
    sget-object v0, Lcom/google/android/finsky/download/DownloadImpl;->COMPLETED_STATES:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isObb()Z
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mContentUri:Landroid/net/Uri;

    .line 218
    return-void
.end method

.method public setHttpStatus(I)V
    .registers 2
    .parameter "httpStatus"

    .prologue
    .line 279
    iput p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mHttpStatus:I

    .line 280
    return-void
.end method

.method public setNext(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 2
    .parameter "next"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mNext:Lcom/google/android/finsky/download/InternalDownload;

    .line 408
    return-void
.end method

.method public setProgress(Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 2
    .parameter "progress"

    .prologue
    .line 142
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 143
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mLastProgress:Lcom/google/android/finsky/download/DownloadProgress;

    .line 144
    return-void
.end method

.method public setState(Lcom/google/android/finsky/download/Download$DownloadState;)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/google/android/finsky/download/DownloadImpl;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received state update when already completed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    if-ne v0, p1, :cond_25

    .line 265
    const-string v0, "Duplicate state set for \'%s\' (%s). Already in that state"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :goto_22
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    .line 270
    return-void

    .line 267
    :cond_25
    const-string v0, "%s from %s to %s."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mState:Lcom/google/android/finsky/download/Download$DownloadState;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

    if-eqz v1, :cond_e

    .line 307
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mPackageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

    iget-object v0, v1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    .line 313
    :goto_9
    if-nez v0, :cond_d

    const-string v0, "untitled-download"

    .line 314
    :cond_d
    return-object v0

    .line 308
    :cond_e
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_2c

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obb-for-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadImpl;->mObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 311
    :cond_2c
    const-string v0, "self-update-download"

    goto :goto_9
.end method
