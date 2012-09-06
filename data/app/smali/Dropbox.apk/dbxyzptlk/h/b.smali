.class public Ldbxyzptlk/h/b;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ldbxyzptlk/h/b;


# instance fields
.field private final c:Ldbxyzptlk/h/g;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Ldbxyzptlk/h/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/h/b;->d:Landroid/content/Context;

    .line 77
    new-instance v0, Ldbxyzptlk/h/g;

    invoke-direct {v0}, Ldbxyzptlk/h/g;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    .line 78
    iget-object v0, p0, Ldbxyzptlk/h/b;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Ldbxyzptlk/h/b;->b(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 82
    new-instance v1, Ldbxyzptlk/h/a;

    invoke-direct {v1, v0}, Ldbxyzptlk/h/a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 84
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    sget-object v0, Ldbxyzptlk/h/b;->b:Ldbxyzptlk/h/b;

    if-nez v0, :cond_c

    .line 170
    new-instance v0, Ldbxyzptlk/h/b;

    invoke-direct {v0, p0}, Ldbxyzptlk/h/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldbxyzptlk/h/b;->b:Ldbxyzptlk/h/b;

    .line 174
    return-void

    .line 172
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static synthetic a(Ldbxyzptlk/h/b;)V
    .registers 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ldbxyzptlk/h/b;->e()V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 16
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 294
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 300
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 301
    sget-object v0, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stacktrace in file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' belongs to version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2000

    invoke-direct {v8, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 309
    const-string v0, "0"

    .line 315
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_fa

    .line 318
    :goto_4e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f7

    .line 321
    :goto_54
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f4

    .line 324
    :goto_5a
    const-string v0, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 325
    iget-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v4, v0, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    .line 327
    :cond_66
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f1

    .line 330
    :goto_6c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ef

    .line 333
    :goto_72
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 334
    const-string v9, "Type: "

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 335
    const-string v3, "Type: "

    const-string v9, ""

    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_87} :catch_e6

    move-result-object v1

    .line 337
    :try_start_88
    invoke-static {v1}, Ldbxyzptlk/h/e;->valueOf(Ljava/lang/String;)Ldbxyzptlk/h/e;
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_8b} :catch_d1
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8b} :catch_e6

    move-result-object v3

    .line 343
    :cond_8c
    :goto_8c
    :try_start_8c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 346
    if-nez v0, :cond_d5

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    .line 353
    :goto_99
    if-eqz v2, :cond_b2

    if-eqz v3, :cond_b2

    .line 354
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 355
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 356
    iget-object v0, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    const-string v1, "android"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v13}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/h/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;JZ)V

    .line 360
    :cond_b2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_d0

    .line 361
    sget-object v0, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deleting log file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_d0
    :goto_d0
    return-void

    .line 338
    :catch_d1
    move-exception v1

    .line 339
    sget-object v3, Ldbxyzptlk/h/e;->a:Ldbxyzptlk/h/e;

    goto :goto_8c

    .line 349
    :cond_d5
    invoke-static {v0}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    goto :goto_99

    .line 364
    :cond_e2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_e5} :catch_e6

    goto :goto_d0

    .line 366
    :catch_e6
    move-exception v0

    .line 367
    sget-object v1, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    const-string v2, "Error uploading log: "

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d0

    :cond_ef
    move-object v0, v3

    goto :goto_72

    :cond_f1
    move-object v5, v3

    goto/16 :goto_6c

    :cond_f4
    move-object v4, v0

    goto/16 :goto_5a

    :cond_f7
    move-object v6, v3

    goto/16 :goto_54

    :cond_fa
    move-object v7, v3

    goto/16 :goto_4e
.end method

.method public static b()Ldbxyzptlk/h/b;
    .registers 1

    .prologue
    .line 177
    sget-object v0, Ldbxyzptlk/h/b;->b:Ldbxyzptlk/h/b;

    if-nez v0, :cond_a

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 180
    :cond_a
    sget-object v0, Ldbxyzptlk/h/b;->b:Ldbxyzptlk/h/b;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldbxyzptlk/h/g;->a:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v0, v0, Ldbxyzptlk/h/g;->a:Ljava/lang/String;

    invoke-static {v0}, Ldbxyzptlk/h/f;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Ldbxyzptlk/h/g;->e:Ljava/lang/String;

    .line 200
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 201
    if-eqz v0, :cond_41

    .line 202
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_41

    .line 204
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_41

    .line 207
    iget-object v1, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    const-string v2, "\\W"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    .line 211
    :cond_41
    iget-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v0, v0, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_5d

    .line 215
    iget-object v1, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iput-object v0, v1, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    .line 220
    :cond_5d
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 221
    if-eqz v0, :cond_79

    .line 222
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_79

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 224
    iget-object v1, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iput-object v0, v1, Ldbxyzptlk/h/g;->g:Ljava/lang/String;

    .line 229
    :cond_79
    :try_start_79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 232
    iget-object v1, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v1, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Ldbxyzptlk/h/g;->c:Ljava/lang/String;
    :try_end_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_92} :catch_93

    .line 238
    :goto_92
    return-void

    .line 235
    :catch_93
    move-exception v0

    .line 236
    sget-object v1, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    const-string v2, "setupUserInfo can\'t get package info"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_92
.end method

.method private d()[Ljava/io/File;
    .registers 4

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v2, v2, Ldbxyzptlk/h/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-static {v0}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    .line 252
    new-instance v1, Ldbxyzptlk/h/c;

    invoke-direct {v1, p0}, Ldbxyzptlk/h/c;-><init>(Ldbxyzptlk/h/b;)V

    .line 258
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .registers 5

    .prologue
    .line 283
    invoke-direct {p0}, Ldbxyzptlk/h/b;->d()[Ljava/io/File;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_34

    array-length v0, v1

    if-lez v0, :cond_34

    .line 285
    sget-object v0, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stacktrace(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v2, :cond_34

    aget-object v3, v1, v0

    .line 287
    invoke-direct {p0, v3}, Ldbxyzptlk/h/b;->a(Ljava/io/File;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 290
    :cond_34
    return-void
.end method


# virtual methods
.method public final a()Ldbxyzptlk/h/g;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    return-object v0
.end method

.method public final a(J)V
    .registers 5
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 3
    .parameter

    .prologue
    .line 95
    sget-object v0, Ldbxyzptlk/h/e;->a:Ldbxyzptlk/h/e;

    invoke-virtual {p0, p1, v0}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 96
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 100
    if-nez p2, :cond_4

    .line 101
    :try_start_2
    sget-object p2, Ldbxyzptlk/h/e;->a:Ldbxyzptlk/h/e;

    .line 104
    :cond_4
    sget-object v0, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outputting exception to log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ldbxyzptlk/h/e;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    iget-object v0, p0, Ldbxyzptlk/h/b;->d:Landroid/content/Context;

    if-nez v0, :cond_2c

    .line 107
    sget-object v0, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    const-string v1, "Got an error, but can\'t log it since we\'re not fully set up yet!!!!!"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_2b
    return-void

    .line 114
    :cond_2c
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 115
    if-eqz p1, :cond_3b

    .line 116
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 119
    :cond_3b
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v2, 0x1869f

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v3, v3, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v2, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing unhandled exception to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v4, v4, Ldbxyzptlk/h/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".stacktrace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v4, v4, Ldbxyzptlk/h/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".stacktrace"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 129
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v4, v4, Ldbxyzptlk/h/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v4, v4, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v4, v4, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ldbxyzptlk/h/b;->c:Ldbxyzptlk/h/g;

    iget-object v4, v4, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/dropbox/android/util/af;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    if-eqz p2, :cond_172

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ldbxyzptlk/h/e;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    :cond_172
    const-string v0, "----------------------\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 143
    const/16 v0, 0x3e8

    invoke-static {v0}, Ldbxyzptlk/h/f;->a(I)Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_181
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1a3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a3} :catch_1a4

    goto :goto_181

    .line 162
    :catch_1a4
    move-exception v0

    .line 164
    sget-object v1, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    const-string v2, "failed to output exception to file"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 148
    :cond_1ae
    :try_start_1ae
    const-string v0, "----------------------\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1bd
    .catch Ljava/lang/Throwable; {:try_start_1ae .. :try_end_1bd} :catch_1a4

    .line 154
    :try_start_1bd
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1c4
    .catch Ljava/io/SyncFailedException; {:try_start_1bd .. :try_end_1c4} :catch_1d5
    .catch Ljava/lang/Throwable; {:try_start_1bd .. :try_end_1c4} :catch_1a4

    .line 158
    :goto_1c4
    :try_start_1c4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 159
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 161
    sget-object v0, Ldbxyzptlk/h/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d3
    .catch Ljava/lang/Throwable; {:try_start_1c4 .. :try_end_1d3} :catch_1a4

    goto/16 :goto_2b

    .line 155
    :catch_1d5
    move-exception v0

    goto :goto_1c4
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 266
    new-instance v0, Ldbxyzptlk/h/d;

    const-string v1, "stackTraces"

    invoke-direct {v0, p0, v1}, Ldbxyzptlk/h/d;-><init>(Ldbxyzptlk/h/b;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 276
    return-void
.end method
