.class public Lcom/google/android/youtube/app/YouTubeApplication;
.super Lcom/google/android/youtube/core/BaseApplication;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/youtube/core/async/aw;
.implements Lcom/google/android/youtube/core/client/ae;
.implements Lcom/google/android/youtube/core/client/ai;
.implements Lcom/google/android/youtube/core/client/ak;
.implements Lcom/google/android/youtube/core/client/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/android/youtube/app/ae;

.field private c:Landroid/provider/SearchRecentSuggestions;

.field private d:Lcom/google/android/youtube/core/suggest/a;

.field private e:Lcom/google/android/youtube/app/ah;

.field private f:Lcom/google/android/youtube/core/b/a;

.field private g:Lcom/google/android/youtube/app/ag;

.field private h:Lcom/google/android/youtube/app/aa;

.field private i:Lcom/google/android/youtube/core/client/e;

.field private j:Lcom/google/android/youtube/core/client/z;

.field private k:Lcom/google/android/youtube/core/client/x;

.field private l:Lcom/google/android/youtube/plus1/f;

.field private m:Lcom/google/android/youtube/core/client/w;

.field private n:Lcom/google/android/youtube/app/p;

.field private o:Lcom/google/android/youtube/app/u;

.field private p:Lcom/google/android/youtube/app/b/i;

.field private q:Ljava/util/concurrent/atomic/AtomicReference;

.field private r:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;-><init>()V

    .line 67
    const-string v0, "android"

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->a:Ljava/lang/String;

    return-void
.end method

.method private L()Lcom/google/android/youtube/app/ah;
    .registers 4

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_17

    .line 276
    const-string v0, "com.google.android.youtube.app.froyo.FroyoYouTubePlatformUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 282
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ah;

    return-object v0

    .line 279
    :cond_17
    const-string v0, "com.google.android.youtube.app.honeycomb.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_10

    .line 283
    :catch_1e
    move-exception v0

    .line 284
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create YouTubePlatformUtil object"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final a()V
    .registers 20

    .prologue
    .line 100
    new-instance v1, Lcom/google/android/youtube/app/ae;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/youtube/app/ae;-><init>(Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->L()Lcom/google/android/youtube/app/ah;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/ah;

    .line 102
    invoke-super/range {p0 .. p0}, Lcom/google/android/youtube/core/BaseApplication;->a()V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->H()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 106
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_only_while_charging"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "transfer_max_connections"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    :cond_37
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    iget-object v1, v1, Lcom/google/android/youtube/app/ae;->b:Ljava/lang/String;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distributionChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 115
    const-string v2, "[%s][%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "platformId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 117
    new-instance v3, Lcom/google/android/youtube/googlemobile/common/a/b;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/youtube/googlemobile/common/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/common/b;->a(Lcom/google/android/youtube/googlemobile/common/b;)V

    .line 118
    const-string v3, "http://www.google.com/m/appreq/mobilevideo"

    .line 119
    const-string v4, "youtube"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v2, v1}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/google/android/youtube/core/b/b;

    invoke-direct {v1}, Lcom/google/android/youtube/core/b/b;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->f:Lcom/google/android/youtube/core/b/a;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/utils/Util$StartupType;

    move-result-object v1

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v2

    const-string v3, "Startup"

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/Util$StartupType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->H()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/app/y;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/google/android/youtube/app/y;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;[Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/google/android/youtube/app/y;->start()V

    .line 133
    :cond_d8
    new-instance v7, Lcom/google/android/youtube/core/utils/s;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/google/android/youtube/core/utils/s;-><init>(Landroid/content/ContentResolver;)V

    .line 134
    new-instance v1, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->z()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/ah;

    invoke-interface {v3}, Lcom/google/android/youtube/app/ah;->a()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/ah;

    invoke-interface {v4}, Lcom/google/android/youtube/app/ah;->b()[B

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "android_id"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;-><init>(Lorg/apache/http/client/HttpClient;[B[BLjava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/s;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    .line 142
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v4, "username"

    const/4 v5, 0x0

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Ljava/util/concurrent/atomic/AtomicReference;

    .line 143
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v4, "user_account"

    const/4 v5, 0x0

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->r:Ljava/util/concurrent/atomic/AtomicReference;

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/aw;)V

    .line 146
    new-instance v7, Lcom/google/android/youtube/core/client/w;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->y()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->z()Lorg/apache/http/client/HttpClient;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->v()Lcom/google/android/youtube/core/utils/q;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_30b

    const/4 v15, 0x1

    :goto_164
    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->K()Lcom/google/android/youtube/core/j;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/youtube/core/j;->c(Landroid/content/Context;)Z

    move-result v18

    invoke-direct/range {v7 .. v18}, Lcom/google/android/youtube/core/client/w;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;IIZZIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/youtube/app/YouTubeApplication;->m:Lcom/google/android/youtube/core/client/w;

    .line 159
    new-instance v3, Lcom/google/android/youtube/app/b/i;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->v()Lcom/google/android/youtube/core/utils/q;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v4}, Lcom/google/android/youtube/app/b/i;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/c;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->p:Lcom/google/android/youtube/app/b/i;

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->p:Lcom/google/android/youtube/app/b/i;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/b/i;->a()V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->p:Lcom/google/android/youtube/app/b/i;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/b/i;->d()V

    .line 163
    new-instance v13, Lcom/google/android/youtube/core/async/GDataRequestFactory;

    const/16 v3, 0xf

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->E()Lcom/google/android/youtube/core/utils/SafeSearch;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v3, v4, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory;-><init>(ILcom/google/android/youtube/core/utils/SafeSearch;Ljava/lang/String;)V

    .line 166
    new-instance v7, Lcom/google/android/youtube/app/ag;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->z()Lorg/apache/http/client/HttpClient;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->v()Lcom/google/android/youtube/core/utils/q;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->A()Lcom/google/android/youtube/core/converter/k;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/utils/i;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->K()Lcom/google/android/youtube/core/j;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/youtube/core/j;->b(Landroid/content/Context;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->k()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->g()Z

    move-result v3

    if-eqz v3, :cond_30e

    sget-object v17, Lcom/google/android/youtube/core/player/d;->a:Ljava/util/Set;

    :goto_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/YouTubeApplication;->p:Lcom/google/android/youtube/app/b/i;

    move-object/from16 v18, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v18}, Lcom/google/android/youtube/app/ag;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/c;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/utils/i;ZZLjava/util/Set;Lcom/google/android/youtube/app/b/i;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/ag;

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/ag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/ae;->a()Lcom/google/android/youtube/core/async/GDataRequest$Version;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/youtube/app/ag;->a(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/ag;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/client/ad;)V

    .line 183
    new-instance v7, Lcom/google/android/youtube/core/client/e;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->v()Lcom/google/android/youtube/core/utils/q;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->z()Lorg/apache/http/client/HttpClient;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/ag;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->A()Lcom/google/android/youtube/core/converter/k;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v15, "android"

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->c()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v7 .. v17}, Lcom/google/android/youtube/core/client/e;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/c;Landroid/content/SharedPreferences;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/converter/k;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/youtube/app/YouTubeApplication;->i:Lcom/google/android/youtube/core/client/e;

    .line 195
    new-instance v7, Lcom/google/android/youtube/core/client/z;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->z()Lorg/apache/http/client/HttpClient;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->A()Lcom/google/android/youtube/core/converter/k;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->v()Lcom/google/android/youtube/core/utils/q;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/google/android/youtube/core/client/z;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/youtube/app/YouTubeApplication;->j:Lcom/google/android/youtube/core/client/z;

    .line 202
    new-instance v7, Lcom/google/android/youtube/core/client/x;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->v()Lcom/google/android/youtube/core/utils/q;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/YouTubeApplication;->f:Lcom/google/android/youtube/core/b/a;

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/google/android/youtube/core/client/x;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/youtube/core/utils/c;Lcom/google/android/youtube/core/b/a;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/youtube/app/YouTubeApplication;->k:Lcom/google/android/youtube/core/client/x;

    .line 209
    new-instance v7, Lcom/google/android/youtube/plus1/i;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/ah;

    invoke-interface {v1}, Lcom/google/android/youtube/app/ah;->c()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/ah;

    invoke-interface {v1}, Lcom/google/android/youtube/app/ah;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->w()Ljava/util/concurrent/Executor;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v15

    invoke-direct/range {v7 .. v15}, Lcom/google/android/youtube/plus1/i;-><init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Lcom/google/android/youtube/core/async/UserAuthorizer;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/youtube/app/YouTubeApplication;->l:Lcom/google/android/youtube/plus1/f;

    .line 219
    new-instance v1, Lcom/google/android/youtube/app/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/ag;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/youtube/app/aa;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/app/aa;

    .line 222
    new-instance v1, Lcom/google/android/youtube/app/a;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/utils/i;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/app/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/i;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/p;

    .line 224
    new-instance v1, Lcom/google/android/youtube/app/ui/br;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/p;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/ag;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/YouTubeApplication;->m:Lcom/google/android/youtube/core/client/w;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/youtube/app/ui/br;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/app/ag;Lcom/google/android/youtube/core/client/w;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/p;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/app/p;->b(Lcom/google/android/youtube/app/r;)Z

    .line 227
    new-instance v1, Lcom/google/android/youtube/app/i;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/google/android/youtube/app/i;-><init>(Ljava/util/concurrent/Executor;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->o:Lcom/google/android/youtube/app/u;

    .line 229
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v2, "com.google.android.youtube.SuggestionProvider"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/app/YouTubeApplication;->c:Landroid/provider/SearchRecentSuggestions;

    .line 232
    return-void

    .line 146
    :cond_30b
    const/4 v15, 0x0

    goto/16 :goto_164

    .line 166
    :cond_30e
    sget-object v17, Lcom/google/android/youtube/core/player/aq;->a:Ljava/util/Set;

    goto/16 :goto_1e2
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 369
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->r:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 372
    invoke-static {p0}, Lcom/google/android/youtube/app/b/d;->a(Landroid/content/Context;)V

    .line 373
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "youtube_client_id"

    const-string v2, "android-google"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/youtube/app/ae;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    const-string v0, "YouTube"

    return-object v0
.end method

.method public final f()Landroid/provider/SearchRecentSuggestions;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->c:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->d:Lcom/google/android/youtube/core/suggest/a;

    if-nez v0, :cond_b

    .line 313
    new-instance v0, Lcom/google/android/youtube/core/suggest/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/suggest/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->d:Lcom/google/android/youtube/core/suggest/a;

    .line 315
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->d:Lcom/google/android/youtube/core/suggest/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/suggest/a;->b()V

    .line 316
    return-void
.end method

.method public final h()Lcom/google/android/youtube/app/aa;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/app/aa;

    return-object v0
.end method

.method public final i()Lcom/google/android/youtube/core/client/ad;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/ag;

    return-object v0
.end method

.method public final j()Lcom/google/android/youtube/core/client/a;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->i:Lcom/google/android/youtube/core/client/e;

    return-object v0
.end method

.method public final k()Lcom/google/android/youtube/core/client/aj;
    .registers 9

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->z()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->v()Lcom/google/android/youtube/core/utils/q;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v4

    iget-object v3, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->q()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->u()Lcom/google/android/youtube/core/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/d;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->u()Lcom/google/android/youtube/core/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/d;->q()I

    move-result v3

    const/16 v6, 0xa

    if-ne v3, v6, :cond_3d

    const/4 v6, 0x1

    :goto_31
    iget-object v3, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ae;->r()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/c;Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;IZLjava/lang/String;)Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    move-result-object v0

    return-object v0

    :cond_3d
    const/4 v6, 0x0

    goto :goto_31
.end method

.method public final l()Lcom/google/android/youtube/core/client/ah;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->j:Lcom/google/android/youtube/core/client/z;

    return-object v0
.end method

.method public final m()Lcom/google/android/youtube/core/client/ag;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->k:Lcom/google/android/youtube/core/client/x;

    return-object v0
.end method

.method public final n()Lcom/google/android/youtube/plus1/f;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->l:Lcom/google/android/youtube/plus1/f;

    return-object v0
.end method

.method public final o()Lcom/google/android/youtube/core/client/af;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->m:Lcom/google/android/youtube/core/client/w;

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 399
    const-string v0, "prefetch_videos"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 400
    const-string v0, "prefetch_videos"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 401
    if-eqz v2, :cond_31

    move v0, v1

    .line 405
    :goto_13
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 407
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/google/android/youtube/app/b/d;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 413
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/google/android/youtube/app/b/e;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 420
    if-eqz v2, :cond_30

    .line 421
    invoke-static {p0}, Lcom/google/android/youtube/app/b/d;->a(Landroid/content/Context;)V

    .line 425
    :cond_30
    return-void

    .line 401
    :cond_31
    const/4 v0, 0x2

    goto :goto_13
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 290
    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/f;->a()V

    .line 293
    invoke-super {p0}, Lcom/google/android/youtube/core/BaseApplication;->onTerminate()V

    .line 294
    return-void
.end method

.method public final p()Lcom/google/android/youtube/app/p;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/p;

    return-object v0
.end method

.method public final q()Lcom/google/android/youtube/app/u;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->o:Lcom/google/android/youtube/app/u;

    return-object v0
.end method

.method public final r()Lcom/google/android/youtube/app/b/i;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->p:Lcom/google/android/youtube/app/b/i;

    return-object v0
.end method

.method public final s()Lcom/google/android/youtube/app/ah;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/ah;

    return-object v0
.end method

.method public final t()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/z;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/z;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method public final bridge synthetic u()Lcom/google/android/youtube/core/d;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/ae;

    return-object v0
.end method
