.class public Lcom/google/android/apps/books/app/ReadingAccessManager;
.super Ljava/lang/Object;
.source "ReadingAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ReadingAccessManager$1;,
        Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;,
        Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;,
        Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReader:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private mRunning:Z

.field private mShouldReleaseAccessLock:Z

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .parameter "reader"
    .parameter "account"
    .parameter "volumeId"
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "missing reader"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mReader:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    .line 99
    const-string v0, "missing account"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mAccount:Landroid/accounts/Account;

    .line 100
    const-string v0, "missing volume ID"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;

    .line 101
    const-string v0, "missing Context"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter(Landroid/content/Context;)Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getApiaryClient(Landroid/content/Context;)Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 105
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/books/app/ReadingAccessManager$HandlerCallback;-><init>(Lcom/google/android/apps/books/app/ReadingAccessManager;Lcom/google/android/apps/books/app/ReadingAccessManager$1;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/ReadingAccessManager;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/api/ApiaryClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mReader:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/app/ReadingAccessManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mRunning:Z

    return v0
.end method


# virtual methods
.method public maybeReleaseAccessLock(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mShouldReleaseAccessLock:Z

    if-eqz v2, :cond_18

    .line 127
    :try_start_5
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 128
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->createReleaseIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    .line 131
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mShouldReleaseAccessLock:Z

    .line 134
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_18
    return-void

    .line 131
    :catchall_19
    move-exception v2

    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mShouldReleaseAccessLock:Z

    throw v2
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mRunning:Z

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    :cond_10
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mRunning:Z

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    return-void
.end method
