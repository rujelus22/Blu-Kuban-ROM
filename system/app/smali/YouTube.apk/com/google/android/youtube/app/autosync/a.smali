.class public final Lcom/google/android/youtube/app/autosync/a;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/youtube/app/YouTubeApplication;

.field private final d:Landroid/accounts/AccountManager;

.field private final e:Ljava/util/concurrent/CountDownLatch;

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sync_ongoing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/app/autosync/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-direct {p0, p1, v2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 68
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "youTubeApplication can\'t be null"

    invoke-static {p2, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/app/autosync/a;->b:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/google/android/youtube/app/autosync/a;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 72
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/autosync/a;->d:Landroid/accounts/AccountManager;

    .line 73
    const-string v0, "youtube"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/autosync/a;->f:Landroid/content/SharedPreferences;

    .line 74
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/autosync/a;->e:Ljava/util/concurrent/CountDownLatch;

    .line 75
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 4
    .parameter

    .prologue
    .line 293
    const-string v0, "youtube"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    const-string v1, "user_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/app/autosync/a;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 3
    .parameter

    .prologue
    .line 299
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private static a(Landroid/accounts/Account;)V
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 310
    const-string v0, "com.google.android.youtube.autosync"

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 311
    const-string v0, "com.google.android.youtube.autosync"

    invoke-static {p0, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 312
    const-string v0, "com.google.android.youtube.autosync"

    invoke-static {p0, v0, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 313
    return-void
.end method

.method public static a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 4
    .parameter

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autosync_policy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/app/autosync/a;->a(Lcom/google/android/youtube/app/YouTubeApplication;Z)V

    .line 253
    return-void
.end method

.method public static a(Lcom/google/android/youtube/app/YouTubeApplication;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 264
    invoke-static {p0}, Lcom/google/android/youtube/app/autosync/a;->b(Landroid/content/Context;)V

    .line 266
    if-eqz p1, :cond_21

    .line 267
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/app/autosync/a;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_21

    .line 269
    const-string v1, "com.google.android.youtube.autosync"

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 270
    const-string v1, "com.google.android.youtube.autosync"

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 271
    const-string v1, "com.google.android.youtube.autosync"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 274
    :cond_21
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 303
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_14

    aget-object v3, v1, v0

    .line 305
    invoke-static {v3}, Lcom/google/android/youtube/app/autosync/a;->a(Landroid/accounts/Account;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 307
    :cond_14
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 322
    const-string v1, "youtube"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 324
    const-string v2, "autosync_policy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/google/android/youtube/app/autosync/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/autosync/a;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/app/k;->a:Lcom/google/android/youtube/app/l;

    .line 83
    invoke-static {p1}, Lcom/google/android/youtube/app/autosync/a;->a(Landroid/accounts/Account;)V

    .line 111
    return-void
.end method
