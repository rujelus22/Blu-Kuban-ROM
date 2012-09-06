.class public LarC;
.super Ljava/lang/Object;
.source "UserFeedbackReportBuilder.java"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private a:LarF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "com.google"

    sput-object v0, LarC;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(LarF;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, LarC;->a:LarF;

    .line 61
    return-void
.end method

.method private a(Larz;)LasG;
    .registers 3
    .parameter

    .prologue
    .line 90
    new-instance v0, LarE;

    invoke-direct {v0, p1}, LarE;-><init>(Larz;)V

    .line 91
    invoke-virtual {v0}, LarE;->a()LasG;

    move-result-object v0

    return-object v0
.end method

.method private a()Ljava/io/File;
    .registers 4

    .prologue
    .line 230
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LarC;->a:LarF;

    invoke-virtual {v1}, LarF;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "reports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_25

    .line 233
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create directory structure for base directory provided"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_25
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "-d"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    if-eqz p1, :cond_25

    .line 246
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_25
    invoke-direct {p0, v0}, LarC;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 255
    .line 256
    const/4 v2, 0x0

    .line 258
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_7f

    .line 261
    :try_start_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 264
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_37} :catch_38

    goto :goto_2b

    .line 268
    :catch_38
    move-exception v0

    .line 269
    :goto_39
    :try_start_39
    const-string v2, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_7d

    .line 271
    if-eqz v1, :cond_47

    .line 273
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_5f

    .line 279
    :cond_47
    :goto_47
    const-string v0, ""

    :cond_49
    :goto_49
    return-object v0

    .line 267
    :cond_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_38

    move-result-object v0

    .line 271
    if-eqz v1, :cond_49

    .line 273
    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_49

    .line 274
    :catch_54
    move-exception v1

    .line 275
    const-string v2, "GFEEDBACK"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 274
    :catch_5f
    move-exception v0

    .line 275
    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 271
    :catchall_6a
    move-exception v0

    move-object v1, v2

    :goto_6c
    if-eqz v1, :cond_71

    .line 273
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    .line 276
    :cond_71
    :goto_71
    throw v0

    .line 274
    :catch_72
    move-exception v1

    .line 275
    const-string v2, "GFEEDBACK"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 271
    :catchall_7d
    move-exception v0

    goto :goto_6c

    .line 268
    :catch_7f
    move-exception v0

    move-object v1, v2

    goto :goto_39
.end method

.method static synthetic a(LarC;Larz;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, LarC;->g(Larz;)V

    return-void
.end method

.method private a(Larz;)V
    .registers 4
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 97
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Larz;->phoneType:I

    .line 98
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p1, Larz;->networkType:I

    .line 99
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Larz;->networkName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .registers 5
    .parameter

    .prologue
    .line 103
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 105
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private b(Larz;)Landroid/os/AsyncTask;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Larz;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, LarD;

    invoke-direct {v0, p0, p1}, LarD;-><init>(LarC;Larz;)V

    .line 86
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, LarD;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(LarC;Larz;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, LarC;->f(Larz;)V

    return-void
.end method

.method private b(Larz;)V
    .registers 8
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 110
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 113
    invoke-direct {p0, v0}, LarC;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, p1, Larz;->screenshot:[B

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p1, Larz;->screenshotWidth:I

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Larz;->screenshotHeight:I

    .line 118
    :cond_2e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Larz;->accounts:Ljava/util/List;

    .line 122
    :try_start_35
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 124
    array-length v2, v1

    const/4 v0, 0x0

    :goto_45
    if-ge v0, v2, :cond_5e

    aget-object v3, v1, v0

    .line 125
    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    sget-object v5, LarC;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 126
    iget-object v4, p1, Larz;->accounts:Ljava/util/List;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5a} :catch_77
    .catch Ljava/lang/VerifyError; {:try_start_35 .. :try_end_5a} :catch_5d

    .line 124
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 131
    :catch_5d
    move-exception v0

    .line 134
    :cond_5e
    :goto_5e
    iget-object v0, p1, Larz;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Larz;->numGoogleAccounts:I

    .line 135
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Larz;->categoryTag:Ljava/lang/String;

    .line 136
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Larz;->bucket:Ljava/lang/String;

    .line 137
    return-void

    .line 129
    :catch_77
    move-exception v0

    goto :goto_5e
.end method

.method static synthetic c(LarC;Larz;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, LarC;->e(Larz;)V

    return-void
.end method

.method private c(Larz;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    iget-object v1, p0, LarC;->a:LarF;

    invoke-virtual {v1}, LarF;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Larz;->packageName:Ljava/lang/String;

    .line 143
    :try_start_17
    iget-object v1, p1, Larz;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 144
    iget-object v2, p1, Larz;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 145
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v1, p1, Larz;->processName:Ljava/lang/String;

    .line 146
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p1, Larz;->packageVersion:I

    .line 147
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p1, Larz;->packageVersionName:Ljava/lang/String;

    .line 148
    iget-object v1, p1, Larz;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Larz;->installerPackageName:Ljava/lang/String;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_39} :catch_4e

    .line 152
    :goto_39
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Larz;->processName:Ljava/lang/String;

    .line 154
    iput-boolean v4, p1, Larz;->isSystemApp:Z

    .line 155
    return-void

    .line 149
    :catch_4e
    move-exception v0

    goto :goto_39
.end method

.method static synthetic d(LarC;Larz;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, LarC;->a(Larz;)V

    return-void
.end method

.method private d(Larz;)V
    .registers 4
    .parameter

    .prologue
    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Larz;->timestamp:J

    .line 159
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LarC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Larz;->systemLog:Ljava/lang/String;

    .line 160
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Lary;

    move-result-object v0

    iput-object v0, p1, Larz;->crashData:Lary;

    .line 161
    return-void
.end method

.method static synthetic e(LarC;Larz;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, LarC;->d(Larz;)V

    return-void
.end method

.method private e(Larz;)V
    .registers 3
    .parameter

    .prologue
    .line 164
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Larz;->description:Ljava/lang/String;

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Larz;->uiLanguage:Ljava/lang/String;

    .line 166
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 167
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Larz;->productSpecificBinaryData:Ljava/util/List;

    .line 170
    :cond_34
    return-void
.end method

.method static synthetic f(LarC;Larz;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, LarC;->c(Larz;)V

    return-void
.end method

.method private f(Larz;)V
    .registers 3
    .parameter

    .prologue
    .line 173
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p1, Larz;->device:Ljava/lang/String;

    .line 174
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, p1, Larz;->buildId:Ljava/lang/String;

    .line 175
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v0, p1, Larz;->buildType:Ljava/lang/String;

    .line 176
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p1, Larz;->model:Ljava/lang/String;

    .line 177
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p1, Larz;->board:Ljava/lang/String;

    .line 178
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p1, Larz;->brand:Ljava/lang/String;

    .line 179
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v0, p1, Larz;->codename:Ljava/lang/String;

    .line 180
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p1, Larz;->incremental:Ljava/lang/String;

    .line 181
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p1, Larz;->release:Ljava/lang/String;

    .line 182
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p1, Larz;->product:Ljava/lang/String;

    .line 184
    :try_start_28
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Larz;->sdkInt:I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_30} :catch_31

    .line 188
    :goto_30
    return-void

    .line 185
    :catch_31
    move-exception v0

    .line 186
    const/4 v0, -0x1

    iput v0, p1, Larz;->sdkInt:I

    goto :goto_30
.end method

.method static synthetic g(LarC;Larz;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, LarC;->b(Larz;)V

    return-void
.end method

.method private g(Larz;)V
    .registers 5
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, LarC;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 196
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 198
    iget-object v2, p1, Larz;->runningApplications:Ljava/util/List;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 200
    :cond_2a
    return-void
.end method


# virtual methods
.method public a(Larz;)Landroid/os/AsyncTask;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Larz;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, LarC;->b(Larz;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method protected a(Larz;)Ljava/io/File;
    .registers 8
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, LarC;->a(Larz;)LasG;

    move-result-object v0

    .line 208
    invoke-direct {p0}, LarC;->a()Ljava/io/File;

    move-result-object v1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".proto.gz"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    :try_start_57
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 214
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    invoke-virtual {v0, v2}, LasG;->a(Ljava/io/OutputStream;)V

    .line 216
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 217
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 218
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to rename temporary file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_75} :catch_75

    .line 221
    :catch_75
    move-exception v0

    .line 222
    :try_start_76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    throw v0
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7a

    .line 225
    :catchall_7a
    move-exception v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    :cond_7f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v4
.end method
