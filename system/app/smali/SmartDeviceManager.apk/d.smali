.class public Ld;
.super Landroid/app/Application;
.source "a"


# static fields
.field private static a:Ljava/util/Properties;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:J

.field private static e:Lb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const-string v0, ""

    sput-object v0, Ld;->c:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Ld;->d:J

    .line 244
    const/4 v0, 0x0

    sput-object v0, Ld;->e:Lb;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Ld;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a([Ljava/lang/String;)Ljava/util/Properties;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 145
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_8
    if-ltz v1, :cond_1d

    .line 146
    aget-object v2, p1, v1

    .line 148
    :try_start_c
    invoke-virtual {p0}, Ld;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 150
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1a} :catch_1e

    .line 145
    :goto_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 155
    :cond_1d
    return-object v0

    .line 151
    :catch_1e
    move-exception v2

    goto :goto_1a
.end method

.method public static a(Lb;)V
    .registers 3
    .parameter

    .prologue
    .line 247
    if-eqz p0, :cond_e

    sget-object v0, Ld;->e:Lb;

    if-eqz v0, :cond_e

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ">1 ER"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_e
    sput-object p0, Ld;->e:Lb;

    .line 257
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    sget-object v0, Ld;->e:Lb;

    .line 235
    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lb;->a(Ljava/lang/String;)V

    .line 236
    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 239
    sget-object v0, Ld;->e:Lb;

    .line 240
    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Lb;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 242
    :cond_7
    return-void
.end method

.method public static b()Landroid/content/Context;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Ld;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static c()J
    .registers 4

    .prologue
    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Ld;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 52
    sget-object v0, Ld;->b:Landroid/content/Context;

    if-nez v0, :cond_7

    const-string v0, "?"

    .line 62
    :goto_6
    return-object v0

    .line 55
    :cond_7
    :try_start_7
    sget-object v0, Ld;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 56
    sget-object v1, Ld;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_6

    .line 61
    :catch_30
    move-exception v0

    const-string v0, "own package not found"

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    .line 62
    const-string v0, "??"

    goto :goto_6
.end method


# virtual methods
.method public onCreate()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationLabsApplication.onCreate() uptime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " elapsedRealtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Ld;->d:J

    .line 71
    invoke-virtual {p0}, Ld;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ld;->b:Landroid/content/Context;

    .line 73
    invoke-static {}, Li;->a()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 74
    invoke-static {}, Ld;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Li;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    const-string v1, "com.locationlabs.qatools"

    invoke-static {p0, v1}, Lf;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.locationlabs.action.LL_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v2, "com.locationlabs.extra.TAG"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v1}, Ld;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    :cond_63
    new-instance v0, Lc;

    invoke-direct {v0}, Lc;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 92
    const-string v0, "unknown"

    invoke-virtual {p0}, Ld;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_71
    invoke-virtual {p0}, Ld;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_7e} :catch_136

    :goto_7e
    invoke-virtual {p0}, Ld;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "VERSION.txt"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_a2

    :try_start_8a
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_13d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8f} :catch_160

    :try_start_8f
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_17b
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_94} :catch_183

    :try_start_94
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_17f
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_186

    move-result-object v0

    if-eqz v3, :cond_9d

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_178

    :cond_9d
    :goto_9d
    if-eqz v4, :cond_a2

    :try_start_9f
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_16f

    :cond_a2
    :goto_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld;->c:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ld;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreate() version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ld;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 96
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 98
    :try_start_e8
    invoke-virtual {p0}, Ld;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Ld;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Ld;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.locationlabs.resource.PROPERTY_FILE_LIST"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_105} :catch_14b

    move-result-object v0

    :goto_106
    if-nez v0, :cond_11d

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "local.properties"

    aput-object v1, v0, v6

    const-string v1, "subtype.properties"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "prod.properties"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "app.properties"

    aput-object v2, v0, v1

    :cond_11d
    :try_start_11d
    invoke-direct {p0, v0}, Ld;->a([Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ld;->a:Ljava/util/Properties;

    invoke-static {v0}, Ln;->a(Ljava/util/Properties;)V

    const-string v0, "log.where.spacing"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ln;->a(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_14e

    neg-int v0, v0

    const/4 v1, -0x1

    sput v1, Li;->b:I

    :goto_133
    sput v0, Li;->a:I
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_135} :catch_152
    .catch Ljava/lang/RuntimeException; {:try_start_11d .. :try_end_135} :catch_159

    .line 103
    :goto_135
    return-void

    .line 92
    :catch_136
    move-exception v1

    const/16 v1, -0x63

    const-string v2, "NameNotFoundException"

    goto/16 :goto_7e

    :catchall_13d
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_140
    if-eqz v1, :cond_145

    :try_start_142
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_174

    :cond_145
    :goto_145
    if-eqz v2, :cond_14a

    :try_start_147
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_176

    :cond_14a
    :goto_14a
    throw v0

    :catch_14b
    move-exception v0

    move-object v0, v7

    goto :goto_106

    .line 98
    :cond_14e
    const/4 v1, 0x1

    :try_start_14f
    sput v1, Li;->b:I
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_151} :catch_152
    .catch Ljava/lang/RuntimeException; {:try_start_14f .. :try_end_151} :catch_159

    goto :goto_133

    :catch_152
    move-exception v0

    const-string v1, "Error creating application properties"

    invoke-static {v1, v0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_135

    :catch_159
    move-exception v0

    const-string v1, "Error creating application properties"

    invoke-static {v1, v0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_135

    :catch_160
    move-exception v3

    move-object v3, v7

    move-object v4, v7

    .line 92
    :goto_163
    if-eqz v3, :cond_168

    :try_start_165
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_172

    :cond_168
    :goto_168
    if-eqz v4, :cond_a2

    :try_start_16a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_16f

    goto/16 :goto_a2

    :catch_16f
    move-exception v3

    goto/16 :goto_a2

    :catch_172
    move-exception v3

    goto :goto_168

    :catch_174
    move-exception v1

    goto :goto_145

    :catch_176
    move-exception v1

    goto :goto_14a

    :catch_178
    move-exception v3

    goto/16 :goto_9d

    :catchall_17b
    move-exception v0

    move-object v1, v7

    move-object v2, v4

    goto :goto_140

    :catchall_17f
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto :goto_140

    :catch_183
    move-exception v3

    move-object v3, v7

    goto :goto_163

    :catch_186
    move-exception v5

    goto :goto_163
.end method
