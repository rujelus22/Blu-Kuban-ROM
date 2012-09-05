.class public Lcom/google/android/apps/books/service/ContentFetchService;
.super Landroid/app/IntentService;
.source "ContentFetchService.java"

# interfaces
.implements Lcom/google/android/apps/books/service/FetchService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;,
        Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;,
        Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;,
        Lcom/google/android/apps/books/service/ContentFetchService$Action;
    }
.end annotation


# static fields
.field private static sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# instance fields
.field private mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mBinder:Landroid/os/IBinder;

.field private mConfig:Lcom/google/android/apps/books/util/Config;

.field private mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private mManifestFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mMyEbooksFetcher:Lcom/google/android/apps/books/sync/MyEbooksFetcher;

.field private mMyEbooksVolumesFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mPageFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mResourceFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

.field private final mSectionContentCallbackLock:Ljava/lang/Object;

.field private mSectionFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mVolumeCoverFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mVolumeFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 160
    const-string v0, "ContentFetchService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallbackLock:Ljava/lang/Object;

    .line 555
    new-instance v0, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;-><init>(Lcom/google/android/apps/books/service/ContentFetchService;)V

    iput-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mBinder:Landroid/os/IBinder;

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->setIntentRedelivery(Z)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/service/ContentFetchService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    return-object v0
.end method

.method private static buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3
    .parameter "intent"

    .prologue
    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 372
    return-object v0
.end method

.method public static createFetchIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/accounts/Account;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    const-string v0, "missing context"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "missing uri"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "missing receiver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.books.action.FETCH"

    const-class v2, Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {v0, v1, p1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    const-string v1, "com.google.android.apps.books.extra.RESULT_RECEIVER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method public static createReleaseIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 154
    const-string v0, "missing context"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "missing uri"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.books.action.RELEASE_ACCESS"

    const-class v2, Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {v0, v1, p1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static declared-synchronized newPullParserLocked()Lorg/xmlpull/v1/XmlPullParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 124
    const-class v1, Lcom/google/android/apps/books/service/ContentFetchService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/books/service/ContentFetchService;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_d

    .line 125
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/service/ContentFetchService;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 127
    :cond_d
    sget-object v0, Lcom/google/android/apps/books/service/ContentFetchService;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onHandleFetchIntent(Landroid/content/Intent;)V
    .registers 12
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 284
    .local v5, uri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v1

    .line 285
    .local v1, match:I
    sparse-switch v1, :sswitch_data_b0

    .line 359
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to fetch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 287
    :sswitch_25
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 288
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, volumeId:Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 362
    :goto_30
    return-void

    .line 295
    .end local v0           #account:Landroid/accounts/Account;
    .end local v6           #volumeId:Ljava/lang/String;
    :sswitch_31
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 296
    .restart local v0       #account:Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .restart local v6       #volumeId:Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 298
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_30

    .line 304
    .end local v0           #account:Landroid/accounts/Account;
    .end local v6           #volumeId:Ljava/lang/String;
    :sswitch_40
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 305
    .restart local v0       #account:Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 306
    .restart local v6       #volumeId:Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 307
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_30

    .line 313
    .end local v0           #account:Landroid/accounts/Account;
    .end local v6           #volumeId:Ljava/lang/String;
    :sswitch_4f
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 314
    .restart local v0       #account:Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 315
    .restart local v6       #volumeId:Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 316
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_30

    .line 321
    .end local v0           #account:Landroid/accounts/Account;
    .end local v6           #volumeId:Ljava/lang/String;
    :sswitch_5e
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 322
    .restart local v0       #account:Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .restart local v6       #volumeId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, sectionId:Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 325
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 326
    invoke-virtual {p0, v6, v4, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_30

    .line 331
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #sectionId:Ljava/lang/String;
    .end local v6           #volumeId:Ljava/lang/String;
    :sswitch_74
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 332
    .restart local v0       #account:Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 333
    .restart local v6       #volumeId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, resId:Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 335
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 336
    invoke-virtual {p0, v6, v3, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_30

    .line 341
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #resId:Ljava/lang/String;
    .end local v6           #volumeId:Ljava/lang/String;
    :sswitch_8a
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 342
    .restart local v0       #account:Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 343
    .restart local v6       #volumeId:Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 344
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_30

    .line 349
    .end local v0           #account:Landroid/accounts/Account;
    .end local v6           #volumeId:Ljava/lang/String;
    :sswitch_99
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 350
    .restart local v0       #account:Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 351
    .restart local v6       #volumeId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, pageId:Ljava/lang/String;
    invoke-virtual {p0, v6, v0, v7}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 353
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 354
    invoke-virtual {p0, v6, v2, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensurePageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_30

    .line 285
    nop

    :sswitch_data_b0
    .sparse-switch
        0x78 -> :sswitch_25
        0x96 -> :sswitch_31
        0x97 -> :sswitch_31
        0xc8 -> :sswitch_40
        0xc9 -> :sswitch_40
        0xca -> :sswitch_5e
        0xcd -> :sswitch_4f
        0xce -> :sswitch_4f
        0x12e -> :sswitch_74
        0x190 -> :sswitch_8a
        0x192 -> :sswitch_99
    .end sparse-switch
.end method

.method private onHandleReleaseAccessIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    .line 259
    invoke-static {p0}, Lcom/google/android/apps/books/util/BooksGservicesHelper;->shouldReleaseAccessLock(Landroid/content/Context;)Z

    move-result v3

    .line 260
    .local v3, releaseLock:Z
    if-nez v3, :cond_17

    .line 261
    const-string v6, "ContentFetchService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 262
    const-string v6, "ContentFetchService"

    const-string v7, "Gservices configured not to release access lock"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_16
    :goto_16
    return-void

    .line 267
    :cond_17
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 268
    .local v4, uri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v2

    .line 269
    .local v2, match:I
    const/16 v6, 0x25a

    if-eq v2, v6, :cond_3c

    .line 270
    const-string v6, "ContentFetchService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad match for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 273
    :cond_3c
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 274
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, volumeId:Ljava/lang/String;
    :try_start_44
    invoke-virtual {p0, v0, v5}, Lcom/google/android/apps/books/service/ContentFetchService;->releaseAccessLock(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_16

    .line 277
    :catch_48
    move-exception v1

    .line 278
    .local v1, e:Ljava/io/IOException;
    const-string v6, "ContentFetchService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error releasing access for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method


# virtual methods
.method public ensureMyEbooksCollection(Landroid/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksFetcher:Lcom/google/android/apps/books/sync/MyEbooksFetcher;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->ensureMyEbooksCollection(Landroid/accounts/Account;)V

    .line 380
    return-void
.end method

.method public ensureMyEbooksVolumes(Landroid/accounts/Account;Z)V
    .registers 7
    .parameter "account"
    .parameter "forceUpdate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v2, 0x7

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 388
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksVolumesFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x2c7

    invoke-virtual {v1, v0, p1, v2, p2}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 389
    return-void
.end method

.method public ensurePageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 8
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 426
    invoke-static {p3, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 427
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mPageFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x192

    invoke-virtual {v1, v0, p3, v2, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 428
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 429
    return-void
.end method

.method public ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 8
    .parameter "volumeId"
    .parameter "resId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 419
    invoke-static {p3, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 420
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mResourceFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x12e

    invoke-virtual {v1, v0, p3, v2, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 422
    return-void
.end method

.method public ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 8
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 412
    invoke-static {p3, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 413
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0xca

    invoke-virtual {v1, v0, p3, v2, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 414
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 415
    return-void
.end method

.method public ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 7
    .parameter "volumeId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 399
    invoke-static {p2, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 400
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mVolumeCoverFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x96

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 402
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 403
    return-void
.end method

.method public ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 7
    .parameter "volumeId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {p2, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 407
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mManifestFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x78

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 408
    return-void
.end method

.method public ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V
    .registers 7
    .parameter "volumeId"
    .parameter "account"
    .parameter "forceUpdate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {p2, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 394
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mVolumeFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x78

    invoke-virtual {v1, v0, p2, v2, p3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 395
    return-void
.end method

.method public fetchHighlightedPageAsBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 22
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .parameter "query"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 439
    .local v3, pageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v7

    .line 441
    .local v7, k_sData:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v11}, Lcom/google/android/apps/books/sync/PageContentFetcher;->fetchPageContent(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/util/SessionKeyFactory;)Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 444
    .local v15, entity:Lorg/apache/http/HttpEntity;
    :try_start_30
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 445
    .local v9, input:Ljava/io/InputStream;
    if-eqz v7, :cond_48

    .line 447
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, v7, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v12, p3

    move-object/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgrade(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 451
    :cond_48
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v9, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 452
    .local v14, bitmap:Landroid/graphics/Bitmap;
    if-nez v14, :cond_60

    .line 453
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "unable to decode bitmap"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_59

    .line 459
    .end local v9           #input:Ljava/io/InputStream;
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    :catchall_59
    move-exception v4

    if-eqz v15, :cond_5f

    .line 460
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_5f
    throw v4

    .line 459
    .restart local v9       #input:Ljava/io/InputStream;
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    :cond_60
    if-eqz v15, :cond_65

    .line 460
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_65
    return-object v14
.end method

.method public getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 18

    .prologue
    .line 166
    invoke-super/range {p0 .. p0}, Landroid/app/IntentService;->onCreate()V

    .line 168
    move-object/from16 v15, p0

    .line 169
    .local v15, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 171
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getApplication()Landroid/app/Application;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/books/app/BooksApplication;

    .line 172
    .local v13, app:Lcom/google/android/apps/books/app/BooksApplication;
    invoke-virtual {v13}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 173
    invoke-virtual {v13}, Lcom/google/android/apps/books/app/BooksApplication;->getApiaryClient()Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 174
    const-string v1, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    .line 177
    .local v14, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 179
    .local v16, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v13}, Lcom/google/android/apps/books/app/BooksApplication;->getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v10

    .line 181
    .local v10, fileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;
    new-instance v4, Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-direct {v4, v15}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    .line 184
    .local v4, accountState:Lcom/google/android/apps/books/sync/SyncAccountsState;
    invoke-static {v15}, Lcom/google/android/apps/books/app/BooksApplication;->getSessionKeyFactory(Landroid/content/Context;)Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 185
    invoke-static {v15}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 187
    new-instance v1, Lcom/google/android/apps/books/sync/MyEbooksFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v13}, Lcom/google/android/apps/books/app/BooksApplication;->getSyncUi()Lcom/google/android/apps/books/service/SyncService$SyncUi;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;-><init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/sync/SyncAccountsState;Lcom/google/android/apps/books/api/ApiaryClient;Lcom/google/android/apps/books/util/Config;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/service/SyncService$SyncUi;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksFetcher:Lcom/google/android/apps/books/sync/MyEbooksFetcher;

    .line 189
    new-instance v1, Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksFetcher:Lcom/google/android/apps/books/sync/MyEbooksFetcher;

    invoke-direct {v1, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/Fetcher;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksVolumesFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 190
    new-instance v1, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v3, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    invoke-direct {v3, v2, v5, v6}, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;-><init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;)V

    invoke-direct {v1, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/Fetcher;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mVolumeFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface {v1}, Lcom/google/android/apps/books/common/BooksContext;->getVolumeCoverFetchDispatcher()Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mVolumeCoverFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 196
    new-instance v1, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mConfig:Lcom/google/android/apps/books/util/Config;

    invoke-direct {v3, v5, v2, v6}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;)V

    invoke-direct {v1, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/Fetcher;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mManifestFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 199
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 202
    .local v12, decryptResources:Z
    new-instance v1, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v5, Lcom/google/android/apps/books/sync/SectionContentFetcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object v7, v2

    move-object/from16 v8, v16

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/books/sync/SectionContentFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Landroid/util/DisplayMetrics;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V

    invoke-direct {v1, v5}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/Fetcher;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 204
    new-instance v1, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v5, Lcom/google/android/apps/books/sync/ResourceContentFetcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object v7, v14

    move-object v8, v2

    invoke-direct/range {v5 .. v12}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;Z)V

    invoke-direct {v1, v5}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/Fetcher;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResourceFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 207
    new-instance v1, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v6, Lcom/google/android/apps/books/sync/PageContentFetcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object v8, v2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/books/sync/PageContentFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V

    invoke-direct {v1, v6}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/Fetcher;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mPageFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 209
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 253
    :goto_6
    return-void

    .line 220
    :cond_7
    const-string v4, "com.google.android.apps.books.action.RELEASE_ACCESS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/service/ContentFetchService;->onHandleReleaseAccessIntent(Landroid/content/Intent;)V

    goto :goto_6

    .line 225
    :cond_13
    const-string v4, "com.google.android.apps.books.action.FETCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 226
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to handle action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :cond_34
    const-string v4, "com.google.android.apps.books.extra.RESULT_RECEIVER"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 231
    .local v2, receiver:Landroid/os/ResultReceiver;
    const-string v4, "Fetch requests must include receiver"

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :try_start_41
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/service/ContentFetchService;->onHandleFetchIntent(Landroid/content/Intent;)V

    .line 235
    const-string v4, "ContentFetchService"

    const-string v5, "onHandleFetchIntent(), sending RESULT_SUCCESS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v4, 0x1

    invoke-static {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_53
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_41 .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_53} :catch_87

    goto :goto_6

    .line 238
    :catch_54
    move-exception v1

    .line 239
    .local v1, e:Lorg/apache/http/client/HttpResponseException;
    const-string v4, "ContentFetchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem during Action.FETCH request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    .line 242
    .local v3, statusCode:I
    const/16 v4, 0x191

    if-ne v3, v4, :cond_7e

    .line 243
    const/4 v4, 0x4

    invoke-static {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_6

    .line 245
    :cond_7e
    const/4 v4, 0x3

    invoke-static {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_6

    .line 248
    .end local v1           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v3           #statusCode:I
    :catch_87
    move-exception v1

    .line 249
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ContentFetchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem during Action.FETCH request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v4, 0x2

    invoke-static {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_6
.end method

.method public releaseAccessLock(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 11
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    const-string v4, "ContentFetchService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 499
    const-string v4, "ContentFetchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Releasing access lock for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_2b
    iget-object v4, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v1

    .line 503
    .local v1, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    invoke-static {}, Lcom/google/android/apps/books/util/OceanUris;->getMyVolumesUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 504
    .local v3, uriBuilder:Landroid/net/Uri$Builder;
    const-string v4, "access"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 505
    const-string v4, "cp-ksver"

    iget-object v5, v1, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 507
    invoke-static {}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->newInstance()Lcom/google/android/apps/books/util/OceanXmlBuilder;

    move-result-object v0

    .line 508
    .local v0, builder:Lcom/google/android/apps/books/util/OceanXmlBuilder;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->startVolumeEntry(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->endEntry()V

    .line 510
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->buildPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 512
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    iget-object v4, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc9

    aput v7, v5, v6

    invoke-virtual {v4, v2, p1, v5}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    .line 513
    return-void
.end method
