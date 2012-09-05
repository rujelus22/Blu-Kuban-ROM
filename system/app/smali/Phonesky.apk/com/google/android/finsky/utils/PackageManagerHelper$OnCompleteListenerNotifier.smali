.class Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;
.super Landroid/os/AsyncTask;
.source "PackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PackageManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCompleteListenerNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field private final mDoNotifications:Z

.field private final mExpectedSignature:Ljava/lang/String;

.field private final mExpectedSize:J

.field private final mIsUpdate:Z

.field private final mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

.field private final mTitle:Ljava/lang/String;

.field private volatile mVerified:Z


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;Z)V
    .registers 9
    .parameter "contentUri"
    .parameter "title"
    .parameter "expectedSize"
    .parameter "expectedSignature"
    .parameter "doNotifications"
    .parameter "postInstallCallback"
    .parameter "isUpdate"

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    .line 102
    iput-object p2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    .line 103
    iput-wide p3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    .line 104
    iput-object p5, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSignature:Ljava/lang/String;

    .line 105
    iput-boolean p6, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    .line 106
    iput-object p7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    .line 107
    iput-boolean p8, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsUpdate:Z

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLcom/google/android/finsky/utils/PackageManagerHelper$1;)V
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p8}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mIsUpdate:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    return-object v0
.end method

.method private static verifyApk(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;)Z
    .registers 11
    .parameter "context"
    .parameter "contentUri"
    .parameter "expectedSize"
    .parameter "expectedSignature"

    .prologue
    const/4 v4, 0x0

    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, input:Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_45
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_f} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_34

    .line 116
    .end local v1           #input:Ljava/io/InputStream;
    .local v2, input:Ljava/io/InputStream;
    :try_start_f
    invoke-static {v2, p4, p2, p3}, Lcom/google/android/finsky/utils/Sha1Util;->verify(Ljava/io/InputStream;Ljava/lang/String;J)Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_55
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_5b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_58

    move-result v3

    .line 122
    if-eqz v2, :cond_18

    .line 124
    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    :cond_18
    :goto_18
    move-object v1, v2

    .line 127
    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    :goto_19
    return v3

    .line 125
    .end local v1           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    :catch_1a
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    const-string v5, "IOException in finally block."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 117
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    :catch_23
    move-exception v0

    .line 122
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_24
    if-eqz v1, :cond_29

    .line 124
    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2b

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_29
    :goto_29
    move v3, v4

    .line 127
    goto :goto_19

    .line 125
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_2b
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    const-string v3, "IOException in finally block."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    .line 119
    .end local v0           #e:Ljava/io/IOException;
    :catch_34
    move-exception v0

    .line 122
    .restart local v0       #e:Ljava/io/IOException;
    :goto_35
    if-eqz v1, :cond_3a

    .line 124
    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3c

    :cond_3a
    :goto_3a
    move v3, v4

    .line 127
    goto :goto_19

    .line 125
    :catch_3c
    move-exception v0

    .line 126
    const-string v3, "IOException in finally block."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3a

    .line 122
    .end local v0           #e:Ljava/io/IOException;
    :catchall_45
    move-exception v3

    :goto_46
    if-eqz v1, :cond_4b

    .line 124
    :try_start_48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 127
    :cond_4b
    :goto_4b
    throw v3

    .line 125
    :catch_4c
    move-exception v0

    .line 126
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "IOException in finally block."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b

    .line 122
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    :catchall_55
    move-exception v3

    move-object v1, v2

    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    goto :goto_46

    .line 119
    .end local v1           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    :catch_58
    move-exception v0

    move-object v1, v2

    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    goto :goto_35

    .line 117
    .end local v1           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    :catch_5b
    move-exception v0

    move-object v1, v2

    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    goto :goto_24
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .registers 10
    .parameter "params"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    iget-wide v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_50

    .line 135
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 136
    const-string v0, "Performing verification of \'%s\' (expectedSize=%d)..."

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_22
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSize:J

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mExpectedSignature:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->verifyApk(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z

    .line 141
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_49

    .line 142
    const-string v0, "Verification of \'%s\' finished (result=%s)."

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-boolean v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/finsky/download/Storage;->getFileUriForContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 145
    :cond_50
    const-string v0, "Signature check not required."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iput-boolean v6, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z

    goto :goto_49
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .registers 12
    .parameter "fileUri"

    .prologue
    const/4 v9, 0x0

    .line 153
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    invoke-interface {v7, v8}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Landroid/net/Uri;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 155
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    iget-boolean v7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mVerified:Z

    if-nez v7, :cond_31

    .line 156
    const-string v7, "Signature check failed, aborting installation."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->cleanupInstallFailure()V

    .line 158
    iget-boolean v7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    if-eqz v7, :cond_29

    .line 159
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x2

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    .line 162
    :cond_29
    iget-object v7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const-string v8, "signature-check"

    invoke-interface {v7, v9, v8}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    .line 246
    :goto_30
    return-void

    .line 167
    :cond_31
    const/4 v1, 0x2

    .line 168
    .local v1, installFlags:I
    if-nez v0, :cond_69

    .line 170
    const-string v7, "Installing package with no associated asset."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_72

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, packageName:Ljava/lang/String;
    :goto_41
    #calls: Lcom/google/android/finsky/utils/PackageManagerHelper;->isAlreadyInstalled(Ljava/lang/String;)Z
    invoke-static {v5}, Lcom/google/android/finsky/utils/PackageManagerHelper;->access$100(Ljava/lang/String;)Z

    move-result v2

    .line 177
    .local v2, isAlreadyInstalled:Z
    new-instance v4, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;

    invoke-direct {v4, p0, v5, v2, v0}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier$1;-><init>(Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;Ljava/lang/String;ZLcom/google/android/finsky/local/LocalAsset;)V

    .line 235
    .local v4, observer:Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;
    iget-boolean v7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mDoNotifications:Z

    if-eqz v7, :cond_5b

    .line 236
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v3

    .line 237
    .local v3, notifier:Lcom/google/android/finsky/utils/Notifier;
    iget-object v7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mTitle:Ljava/lang/String;

    invoke-interface {v3, v7, v5, v2}, Lcom/google/android/finsky/utils/Notifier;->showInstallingMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    .end local v3           #notifier:Lcom/google/android/finsky/utils/Notifier;
    :cond_5b
    if-nez p1, :cond_75

    iget-object v6, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mContentUri:Landroid/net/Uri;

    .line 240
    .local v6, uri:Landroid/net/Uri;
    :goto_5f
    if-eqz v6, :cond_77

    .line 241
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-static {v7, v6, v4, v1}, Lcom/google/android/finsky/utils/PackageManagerUtils;->installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;I)V

    goto :goto_30

    .line 171
    .end local v2           #isAlreadyInstalled:Z
    .end local v4           #observer:Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_69
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->isForwardLocked()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 172
    or-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 175
    :cond_72
    const-string v5, ""

    goto :goto_41

    .restart local v2       #isAlreadyInstalled:Z
    .restart local v4       #observer:Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;
    .restart local v5       #packageName:Ljava/lang/String;
    :cond_75
    move-object v6, p1

    .line 239
    goto :goto_5f

    .line 243
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_77
    const/4 v7, -0x3

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    .line 244
    iget-object v7, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->mPostInstallCallback:Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    const-string v8, "invalid-uri"

    invoke-interface {v7, v9, v8}, Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;->installCompleted(ZLjava/lang/String;)V

    goto :goto_30
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
