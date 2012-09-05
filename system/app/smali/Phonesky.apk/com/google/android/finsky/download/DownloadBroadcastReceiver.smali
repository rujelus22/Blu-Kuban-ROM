.class public Lcom/google/android/finsky/download/DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBroadcastReceiver.java"


# static fields
.field private static sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadBroadcastReceiver;Landroid/net/Uri;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->getHttpStatusForUri(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/google/android/finsky/download/DownloadQueueImpl;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    return-object v0
.end method

.method private getHttpStatusForUri(Landroid/net/Uri;)I
    .registers 6
    .parameter "destinationUri"

    .prologue
    .line 116
    sget-object v2, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-virtual {v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getDownloadManager()Lcom/google/android/finsky/download/DownloadManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/finsky/download/DownloadManager;->queryStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    .line 119
    :cond_13
    const/4 v1, -0x1

    .line 124
    :goto_14
    return v1

    .line 121
    :cond_15
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 123
    .local v1, httpStatus:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_14
.end method

.method public static initialize(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
    .registers 1
    .parameter "downloadQueue"

    .prologue
    .line 29
    sput-object p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    .line 30
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 34
    const-string v6, "Intent received at DownloadBroadcastReceiver"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 37
    .local v2, contentUri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, action:Ljava/lang/String;
    sget-object v6, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getExisting(Landroid/net/Uri;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v4

    .line 40
    .local v4, download:Lcom/google/android/finsky/download/InternalDownload;
    if-nez v4, :cond_4c

    .line 41
    const-string v6, "DownloadBroadcastReceiver could not find download in queue."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-string v6, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 52
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object p1

    .line 54
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 55
    .local v3, currentAccount:Landroid/accounts/Account;
    if-nez v3, :cond_3b

    .line 58
    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {p1, v6}, Lcom/google/android/finsky/api/AccountHandler;->getAccountFromPreferences(Landroid/content/Context;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;)Landroid/accounts/Account;

    move-result-object v3

    .line 61
    :cond_3b
    if-eqz v3, :cond_4b

    .line 62
    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 63
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 64
    .local v5, myAppsIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    .end local v0           #accountName:Ljava/lang/String;
    .end local v3           #currentAccount:Landroid/accounts/Account;
    .end local v5           #myAppsIntent:Landroid/content/Intent;
    :cond_4b
    :goto_4b
    return-void

    .line 71
    :cond_4c
    new-instance v6, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;-><init>(Lcom/google/android/finsky/download/DownloadBroadcastReceiver;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/net/Uri;

    aput-object v2, v7, v8

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4b
.end method
