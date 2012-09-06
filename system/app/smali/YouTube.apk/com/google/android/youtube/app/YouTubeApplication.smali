.class public Lcom/google/android/youtube/app/YouTubeApplication;
.super Lcom/google/android/youtube/core/BaseApplication;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/youtube/core/async/bd;
.implements Lcom/google/android/youtube/core/b/af;
.implements Lcom/google/android/youtube/core/b/ah;
.implements Lcom/google/android/youtube/core/b/am;
.implements Lcom/google/android/youtube/core/b/ao;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/android/youtube/app/k;

.field private c:Landroid/provider/SearchRecentSuggestions;

.field private d:Lcom/google/android/youtube/core/suggest/a;

.field private e:Lcom/google/android/youtube/app/YouTubePlatformUtil;

.field private f:Lcom/google/android/youtube/core/c/a;

.field private g:Lcom/google/android/youtube/app/g;

.field private h:Lcom/google/android/youtube/core/b/j;

.field private i:Lcom/google/android/youtube/core/b/d;

.field private j:Lcom/google/android/youtube/core/b/z;

.field private k:Lcom/google/android/youtube/core/b/x;

.field private l:Lcom/google/android/youtube/core/b/v;

.field private m:Lcom/google/android/youtube/app/c/g;

.field private n:Lcom/google/android/youtube/app/remote/at;

.field private o:Lcom/google/android/youtube/app/remote/bc;

.field private p:Lcom/google/android/youtube/app/remote/bd;

.field private q:Lcom/google/android/youtube/app/remote/e;

.field private r:Lcom/google/android/youtube/app/remote/AtHomeConnection;

.field private s:Lcom/google/android/youtube/app/prefetch/d;

.field private t:Lcom/google/android/youtube/app/b/a/e;

.field private u:Lcom/google/android/youtube/app/remote/ab;

.field private v:Ljava/util/concurrent/atomic/AtomicReference;

.field private w:Ljava/util/concurrent/atomic/AtomicReference;

.field private x:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;-><init>()V

    .line 106
    const-string v0, "android"

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->a:Ljava/lang/String;

    return-void
.end method

.method private Z()Lcom/google/android/youtube/app/YouTubePlatformUtil;
    .registers 4

    .prologue
    .line 432
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_17

    .line 433
    const-string v0, "com.google.android.youtube.app.froyo.FroyoYouTubePlatformUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 439
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubePlatformUtil;

    return-object v0

    .line 436
    :cond_17
    const-string v0, "com.google.android.youtube.app.honeycomb.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_10

    .line 440
    :catch_1e
    move-exception v0

    .line 441
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create YouTubePlatformUtil object"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private aa()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 692
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0xce4

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    iget-object v0, v0, Lcom/google/android/youtube/app/k;->a:Lcom/google/android/youtube/app/l;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_19

    .line 695
    :cond_18
    :goto_18
    return v3

    :catch_19
    move-exception v0

    goto :goto_18
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final B()I
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->x:I

    return v0
.end method

.method public final C()Lcom/google/android/youtube/app/b/a/e;
    .registers 4

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->t:Lcom/google/android/youtube/app/b/a/e;

    if-nez v0, :cond_1a

    .line 701
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/f;->a(Landroid/content/SharedPreferences;)Ljava/security/Key;

    move-result-object v0

    .line 703
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/app/b/a/e;->a(Ljava/util/concurrent/Executor;Ljava/security/Key;Landroid/content/SharedPreferences;)Lcom/google/android/youtube/app/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->t:Lcom/google/android/youtube/app/b/a/e;

    .line 706
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->t:Lcom/google/android/youtube/app/b/a/e;

    return-object v0
.end method

.method public final D()Lcom/google/android/youtube/app/remote/ab;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->u:Lcom/google/android/youtube/app/remote/ab;

    return-object v0
.end method

.method public final bridge synthetic E()Lcom/google/android/youtube/core/c;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    return-object v0
.end method

.method protected final a()V
    .registers 21

    .prologue
    .line 145
    new-instance v2, Lcom/google/android/youtube/app/k;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/k;-><init>(Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->Z()Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/k;->j()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/youtube/app/prefetch/PrefetchService;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/youtube/app/prefetch/PrefetchService$DeviceStateReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 153
    :cond_3f
    invoke-super/range {p0 .. p0}, Lcom/google/android/youtube/core/BaseApplication;->a()V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->X()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 157
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_only_while_charging"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "transfer_max_connections"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 161
    :cond_61
    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    iget-object v2, v2, Lcom/google/android/youtube/app/k;->b:Ljava/lang/String;

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "distributionChannel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 165
    const-string v3, "[%s][%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "platformId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 167
    new-instance v4, Lcom/google/android/youtube/googlemobile/common/a/b;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/youtube/googlemobile/common/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/google/android/youtube/googlemobile/common/b;->a(Lcom/google/android/youtube/googlemobile/common/b;)V

    .line 168
    const-string v4, "http://www.google.com/m/appreq/mobilevideo"

    .line 169
    const-string v5, "youtube"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->V()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v3, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v2, Lcom/google/android/youtube/core/c/b;

    invoke-direct {v2}, Lcom/google/android/youtube/core/c/b;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->f:Lcom/google/android/youtube/core/c/a;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->V()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/utils/Util$StartupType;

    move-result-object v2

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v3

    const-string v4, "Startup"

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/Util$StartupType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "session_summary"

    const/4 v3, -0x1

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_140

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v1}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->a(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/content/Context;)Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    move-result-object v2

    sget-object v4, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->Guide:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    if-ne v2, v4, :cond_140

    const-string v2, "session_watch_count"

    const/4 v4, 0x0

    invoke-interface {v7, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_430

    const-string v2, "Out"

    :goto_105
    and-int/lit16 v5, v3, 0x378

    if-nez v5, :cond_43c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_434

    const-string v2, " NoWatch"

    :goto_118
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v2, v3, 0x4

    if-nez v2, :cond_438

    const-string v2, " NoHome"

    :goto_12f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_137
    :goto_137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v3

    const-string v5, "SessionSummary"

    invoke-virtual {v3, v5, v2, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_140
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "session_watch_count"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "session_summary"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->X()Z

    move-result v2

    if-eqz v2, :cond_174

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/e;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/google/android/youtube/app/e;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;[Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/google/android/youtube/app/e;->start()V

    .line 184
    :cond_174
    new-instance v8, Lcom/google/android/youtube/core/utils/ae;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/google/android/youtube/core/utils/ae;-><init>(Landroid/content/ContentResolver;)V

    .line 185
    new-instance v2, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->K()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    invoke-interface {v4}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->a()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    invoke-interface {v5}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->b()[B

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "android_id"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v8}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;-><init>(Lorg/apache/http/client/HttpClient;[B[BLjava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/ae;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v19

    .line 193
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 194
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/YouTubeApplication;->a(I)V

    .line 196
    :cond_1b0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v4, "username"

    const/4 v5, 0x0

    invoke-interface {v7, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->v:Ljava/util/concurrent/atomic/AtomicReference;

    .line 197
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v4, "user_account"

    const/4 v5, 0x0

    invoke-interface {v7, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->w:Ljava/util/concurrent/atomic/AtomicReference;

    .line 198
    invoke-virtual/range {v19 .. v20}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bd;)V

    .line 199
    const/4 v3, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/YouTubeApplication;->b(I)V

    .line 201
    new-instance v8, Lcom/google/android/youtube/core/b/w;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_4af

    const/4 v12, 0x1

    :goto_203
    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/youtube/core/b/w;-><init>(IIIZZ)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->J()Ljava/util/concurrent/Executor;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->K()Lorg/apache/http/client/HttpClient;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Lcom/google/android/youtube/core/utils/ab;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/youtube/core/j;->d(Landroid/content/Context;)Z

    move-result v15

    move-object v14, v8

    invoke-static/range {v9 .. v15}, Lcom/google/android/youtube/core/b/v;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/b/w;Z)Lcom/google/android/youtube/core/b/v;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->l:Lcom/google/android/youtube/core/b/v;

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 218
    new-instance v14, Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->R()Lcom/google/android/youtube/core/utils/SafeSearch;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v3, v4, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory;-><init>(ILcom/google/android/youtube/core/utils/SafeSearch;Ljava/lang/String;)V

    .line 221
    new-instance v8, Lcom/google/android/youtube/core/b/j;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->K()Lorg/apache/http/client/HttpClient;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Lcom/google/android/youtube/core/utils/ab;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->M()Lcom/google/android/youtube/core/converter/k;

    move-result-object v13

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/youtube/core/b/j;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/async/GDataRequestFactory;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/core/b/j;

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/core/b/j;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->P()Lcom/google/android/youtube/core/async/a;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/k;->a()Lcom/google/android/youtube/core/async/GDataRequest$Version;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/youtube/core/b/j;->a(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/core/b/j;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/b/ae;)V

    .line 231
    new-instance v3, Lcom/google/android/youtube/core/b/d;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Lcom/google/android/youtube/core/utils/ab;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->L()Lorg/apache/http/client/HttpClient;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/core/b/j;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->M()Lcom/google/android/youtube/core/converter/k;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->S()Lcom/google/android/youtube/core/player/an;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/YouTubeApplication;->v:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v13, "android"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->V()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->c()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/k;->u()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/k;->v()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v18}, Lcom/google/android/youtube/core/b/d;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/d;Landroid/content/SharedPreferences;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/player/an;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->i:Lcom/google/android/youtube/core/b/d;

    .line 248
    new-instance v8, Lcom/google/android/youtube/core/b/z;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->K()Lorg/apache/http/client/HttpClient;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->M()Lcom/google/android/youtube/core/converter/k;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Lcom/google/android/youtube/core/utils/ab;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/google/android/youtube/core/b/z;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/youtube/app/YouTubeApplication;->j:Lcom/google/android/youtube/core/b/z;

    .line 255
    new-instance v8, Lcom/google/android/youtube/core/b/x;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Lcom/google/android/youtube/core/utils/ab;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/YouTubeApplication;->f:Lcom/google/android/youtube/core/c/a;

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/google/android/youtube/core/b/x;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/c/a;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/youtube/app/YouTubeApplication;->k:Lcom/google/android/youtube/core/b/x;

    .line 262
    new-instance v8, Lcom/google/android/youtube/app/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    invoke-interface {v2}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->c()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    invoke-interface {v2}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->d()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->H()Ljava/util/concurrent/Executor;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v15

    move-object/from16 v16, v19

    invoke-direct/range {v8 .. v16}, Lcom/google/android/youtube/app/c/c;-><init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/youtube/app/YouTubeApplication;->m:Lcom/google/android/youtube/app/c/g;

    .line 272
    new-instance v2, Lcom/google/android/youtube/app/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/core/b/j;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/youtube/app/g;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/g;

    .line 275
    new-instance v3, Lcom/google/android/youtube/app/remote/at;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    iget-object v2, v2, Lcom/google/android/youtube/app/k;->a:Lcom/google/android/youtube/app/l;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/app/remote/at;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/k;Landroid/content/SharedPreferences;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/remote/at;

    .line 278
    new-instance v2, Lcom/google/android/youtube/app/remote/v;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v3, v7, v4}, Lcom/google/android/youtube/app/remote/v;-><init>(Ljava/util/concurrent/Executor;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->o:Lcom/google/android/youtube/app/remote/bc;

    .line 280
    new-instance v2, Lcom/google/android/youtube/app/remote/bd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->o:Lcom/google/android/youtube/app/remote/bc;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/k;->k()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/remote/at;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/youtube/app/remote/bd;-><init>(Lcom/google/android/youtube/app/remote/bc;Lcom/google/android/youtube/core/utils/k;ZLcom/google/android/youtube/app/remote/at;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->p:Lcom/google/android/youtube/app/remote/bd;

    .line 283
    new-instance v2, Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/youtube/app/remote/AtHomeConnection;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->r:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    .line 284
    new-instance v2, Lcom/google/android/youtube/app/remote/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/app/YouTubeApplication;->r:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/youtube/app/remote/e;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/remote/AtHomeConnection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Lcom/google/android/youtube/app/remote/e;

    .line 286
    new-instance v8, Lcom/google/android/youtube/app/ui/cj;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/remote/at;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Lcom/google/android/youtube/app/remote/e;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/core/b/j;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/app/YouTubeApplication;->l:Lcom/google/android/youtube/core/b/v;

    move-object/from16 v14, v19

    invoke-direct/range {v8 .. v14}, Lcom/google/android/youtube/app/ui/cj;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 289
    new-instance v2, Landroid/provider/SearchRecentSuggestions;

    const-string v3, "com.google.android.youtube.SuggestionProvider"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->c:Landroid/provider/SearchRecentSuggestions;

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->aa()Z

    move-result v2

    if-eqz v2, :cond_3ec

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->A()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b2

    .line 295
    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/app/autosync/a;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 301
    :cond_3ec
    :goto_3ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/k;->j()Z

    move-result v2

    if-eqz v2, :cond_410

    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_410

    .line 302
    invoke-static {v7}, Lcom/google/android/youtube/core/utils/f;->a(Landroid/content/SharedPreferences;)Ljava/security/Key;

    move-result-object v2

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/google/android/youtube/app/b/a/e;->a(Ljava/util/concurrent/Executor;Ljava/security/Key;Landroid/content/SharedPreferences;)Lcom/google/android/youtube/app/b/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->t:Lcom/google/android/youtube/app/b/a/e;

    .line 308
    :cond_410
    new-instance v2, Lcom/google/android/youtube/app/remote/ab;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/app/YouTubeApplication;->r:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Lcom/google/android/youtube/app/remote/e;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/app/YouTubeApplication;->p:Lcom/google/android/youtube/app/remote/bd;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/youtube/app/remote/ab;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/remote/AtHomeConnection;Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/core/Analytics;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/youtube/app/YouTubeApplication;->u:Lcom/google/android/youtube/app/remote/ab;

    .line 310
    return-void

    .line 180
    :cond_430
    const-string v2, "In"

    goto/16 :goto_105

    :cond_434
    const-string v2, " ShowWatch"

    goto/16 :goto_118

    :cond_438
    const-string v2, " ShowHome"

    goto/16 :goto_12f

    :cond_43c
    and-int/lit16 v5, v3, 0x370

    if-nez v5, :cond_455

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GuideExpanded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_137

    :cond_455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " GuideSelected"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v5, v3, 0x20

    if-eqz v5, :cond_47f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Account"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_47f
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_496

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Channel"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_496
    and-int/lit16 v3, v3, 0x340

    if-eqz v3, :cond_137

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Browse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_137

    .line 201
    :cond_4af
    const/4 v12, 0x0

    goto/16 :goto_203

    .line 297
    :cond_4b2
    invoke-static/range {p0 .. p0}, Lcom/google/android/youtube/app/autosync/a;->b(Landroid/content/Context;)V

    goto/16 :goto_3ec
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 353
    const-string v1, "session_summary"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 354
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "session_summary"

    or-int/2addr v1, p1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 356
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 600
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 601
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->v:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->w:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 603
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/YouTubeApplication;->b(I)V

    .line 604
    invoke-direct {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->aa()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 605
    invoke-static {p0}, Lcom/google/android/youtube/app/autosync/a;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 607
    :cond_20
    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c(Landroid/content/Context;)V

    .line 608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/YouTubeApplication;->a(I)V

    .line 609
    return-void
.end method

.method protected final b()Lcom/google/android/youtube/core/player/an;
    .registers 5

    .prologue
    .line 321
    new-instance v0, Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Lcom/google/android/youtube/core/utils/ab;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/youtube/app/prefetch/d;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/app/k;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->s:Lcom/google/android/youtube/app/prefetch/d;

    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->s:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/prefetch/d;->a()V

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->s:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/prefetch/d;->d()V

    .line 325
    invoke-super {p0}, Lcom/google/android/youtube/core/BaseApplication;->b()Lcom/google/android/youtube/core/player/an;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/google/android/youtube/app/prefetch/j;

    iget-object v2, p0, Lcom/google/android/youtube/app/YouTubeApplication;->s:Lcom/google/android/youtube/app/prefetch/d;

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/app/prefetch/j;-><init>(Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/player/an;)V

    return-object v1
.end method

.method public final b(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 632
    iput p1, p0, Lcom/google/android/youtube/app/YouTubeApplication;->x:I

    .line 634
    const/4 v0, -0x2

    if-ne p1, v0, :cond_12

    .line 635
    const-string v0, "Signed out"

    .line 645
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "Engagement"

    invoke-virtual {v1, v3, v2, v0, v3}, Lcom/google/android/youtube/core/Analytics;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 647
    return-void

    .line 636
    :cond_12
    const/4 v0, -0x1

    if-ne p1, v0, :cond_18

    .line 637
    const-string v0, "Signed in"

    goto :goto_8

    .line 638
    :cond_18
    if-nez p1, :cond_1d

    .line 639
    const-string v0, "No subscriptions"

    goto :goto_8

    .line 640
    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/k;->j()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 641
    :cond_2b
    const-string v0, "Subscriptions"

    goto :goto_8

    .line 643
    :cond_2e
    const-string v0, "Prefetching"

    goto :goto_8
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "youtube_client_id"

    const-string v2, "android-google"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/youtube/app/k;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    const-string v0, "YouTube"

    return-object v0
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 346
    const-string v1, "session_watch_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 347
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "session_watch_count"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 349
    return-void
.end method

.method public final g()Landroid/provider/SearchRecentSuggestions;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->c:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->d:Lcom/google/android/youtube/core/suggest/a;

    if-nez v0, :cond_b

    .line 470
    new-instance v0, Lcom/google/android/youtube/core/suggest/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/suggest/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->d:Lcom/google/android/youtube/core/suggest/a;

    .line 472
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->d:Lcom/google/android/youtube/core/suggest/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/suggest/a;->b()V

    .line 473
    return-void
.end method

.method public final i()Lcom/google/android/youtube/app/g;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->g:Lcom/google/android/youtube/app/g;

    return-object v0
.end method

.method public final j()Lcom/google/android/youtube/core/b/ae;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->h:Lcom/google/android/youtube/core/b/j;

    return-object v0
.end method

.method public final k()Lcom/google/android/youtube/core/b/a;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->i:Lcom/google/android/youtube/core/b/d;

    return-object v0
.end method

.method public final l()Lcom/google/android/youtube/core/b/an;
    .registers 10

    .prologue
    .line 490
    new-instance v0, Lcom/google/android/youtube/app/a/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->L()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->G()Lcom/google/android/youtube/core/utils/ab;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v6

    iget-object v5, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/k;->t()I

    move-result v7

    iget-object v5, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/k;->x()Z

    move-result v8

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/app/a/a;-><init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/d;Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;IZ)V

    .line 493
    invoke-static {}, Lcom/google/android/youtube/app/m;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/b/an;->a(Ljava/util/List;)V

    .line 494
    return-object v0
.end method

.method public final m()Lcom/google/android/youtube/core/b/al;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->j:Lcom/google/android/youtube/core/b/z;

    return-object v0
.end method

.method public final n()Lcom/google/android/youtube/core/b/ai;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->k:Lcom/google/android/youtube/core/b/x;

    return-object v0
.end method

.method public final o()Lcom/google/android/youtube/app/c/g;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->m:Lcom/google/android/youtube/app/c/g;

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 662
    const-string v0, "prefetch_subscriptions"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "prefetch_watch_later"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 664
    :cond_10
    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c(Landroid/content/Context;)V

    .line 666
    :cond_13
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 447
    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/f;->a()V

    .line 450
    invoke-super {p0}, Lcom/google/android/youtube/core/BaseApplication;->onTerminate()V

    .line 451
    return-void
.end method

.method public final p()Lcom/google/android/youtube/core/b/ag;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->l:Lcom/google/android/youtube/core/b/v;

    return-object v0
.end method

.method public final q()Lcom/google/android/youtube/app/remote/at;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/remote/at;

    return-object v0
.end method

.method public final r()Lcom/google/android/youtube/app/remote/bd;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->p:Lcom/google/android/youtube/app/remote/bd;

    return-object v0
.end method

.method public final s()Lcom/google/android/youtube/app/remote/bc;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->o:Lcom/google/android/youtube/app/remote/bc;

    return-object v0
.end method

.method public final t()Lcom/google/android/youtube/app/remote/e;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Lcom/google/android/youtube/app/remote/e;

    return-object v0
.end method

.method public final u()Lcom/google/android/youtube/app/remote/AtHomeConnection;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->r:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    return-object v0
.end method

.method public final v()Lcom/google/android/youtube/app/remote/RemoteControl;
    .registers 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_d

    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->n:Lcom/google/android/youtube/app/remote/at;

    .line 543
    :goto_c
    return-object v0

    .line 540
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Lcom/google/android/youtube/app/remote/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/e;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_1a

    .line 541
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->q:Lcom/google/android/youtube/app/remote/e;

    goto :goto_c

    .line 543
    :cond_1a
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final w()Lcom/google/android/youtube/app/prefetch/d;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->s:Lcom/google/android/youtube/app/prefetch/d;

    return-object v0
.end method

.method public final x()Lcom/google/android/youtube/app/YouTubePlatformUtil;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->e:Lcom/google/android/youtube/app/YouTubePlatformUtil;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 564
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory;->q:Ljava/util/Set;

    .line 565
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 567
    if-eqz v0, :cond_22

    .line 568
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 572
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 596
    :cond_21
    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    .line 580
    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 581
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->b:Lcom/google/android/youtube/app/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/k;->w()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 583
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 591
    :cond_3f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object v0, v1

    .line 596
    goto :goto_21
.end method

.method public final z()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->v:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 613
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->v:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 615
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/YouTubeApplication;->b(I)V

    .line 616
    invoke-direct {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->aa()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 617
    invoke-static {p0}, Lcom/google/android/youtube/app/autosync/a;->b(Landroid/content/Context;)V

    .line 619
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->I()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/f;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/f;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 628
    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c(Landroid/content/Context;)V

    .line 629
    return-void
.end method
