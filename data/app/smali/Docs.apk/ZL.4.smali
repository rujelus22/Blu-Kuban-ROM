.class public LZL;
.super Ljava/lang/Object;
.source "PreferenceUtilsImpl.java"

# interfaces
.implements LZJ;


# static fields
.field private static final a:[I


# instance fields
.field private final a:LFX;

.field private a:LZM;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LeZ;

.field private a:Ljava/io/File;

.field private b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, LZL;->a:[I

    return-void

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(LanD;LFX;LeZ;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "LFX;",
            "LeZ;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, LZL;->a:LZM;

    .line 105
    iput-object p1, p0, LZL;->a:LanD;

    .line 106
    iput-object p2, p0, LZL;->a:LFX;

    .line 107
    iput-object p3, p0, LZL;->a:LeZ;

    .line 108
    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, LZL;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, v0}, LZL;->a(Ljava/io/File;)V

    .line 189
    return-object v0
.end method

.method private a(LZM;)V
    .registers 5
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, LZL;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    const-string v1, "shared_preferences.cache_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_14

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, LZM;->a(I)V

    .line 318
    :cond_14
    const-string v0, "PreferenceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache size set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LZM;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 5
    .parameter

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 208
    :cond_c
    return-void

    .line 198
    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_36

    .line 199
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - file exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_36
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_c

    .line 206
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create cache directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()[I
    .registers 9

    .prologue
    const-wide/high16 v0, 0x3ff0

    const/4 v3, 0x0

    .line 253
    invoke-virtual {p0}, LZL;->b()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4164

    div-double/2addr v4, v6

    .line 255
    sget-object v2, LZL;->a:[I

    sget-object v6, LZL;->a:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    int-to-double v6, v2

    cmpl-double v2, v4, v6

    if-lez v2, :cond_23

    .line 256
    sget-object v2, LZL;->a:[I

    sget-object v4, LZL;->a:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    int-to-double v4, v2

    .line 260
    :cond_23
    const-wide v6, 0x408f400000000000L

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_4e

    .line 261
    const-wide v0, 0x406f400000000000L

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v4, 0xfa

    mul-long/2addr v0, v4

    long-to-double v0, v0

    .line 274
    :cond_3b
    :goto_3b
    sget-object v2, LZL;->a:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 276
    :goto_40
    sget-object v4, LZL;->a:[I

    aget v4, v4, v2

    int-to-double v4, v4

    cmpl-double v4, v4, v0

    if-lez v4, :cond_7e

    if-ltz v2, :cond_7e

    .line 277
    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    .line 262
    :cond_4e
    const-wide/high16 v6, 0x4059

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_61

    .line 263
    const-wide/high16 v0, 0x4039

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v4, 0x19

    mul-long/2addr v0, v4

    long-to-double v0, v0

    goto :goto_3b

    .line 264
    :cond_61
    const-wide/high16 v6, 0x4024

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_74

    .line 265
    const-wide/high16 v0, 0x4014

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v4, 0x5

    mul-long/2addr v0, v4

    long-to-double v0, v0

    goto :goto_3b

    .line 266
    :cond_74
    cmpl-double v2, v4, v0

    if-ltz v2, :cond_3b

    .line 267
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_3b

    .line 282
    :cond_7e
    if-ltz v2, :cond_b8

    sget-object v4, LZL;->a:[I

    aget v4, v4, v2

    int-to-double v4, v4

    div-double v4, v0, v4

    const-wide/high16 v6, 0x3ff4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b8

    .line 285
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    .line 288
    :goto_90
    if-gez v4, :cond_9c

    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 291
    sget-object v1, LZL;->a:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 308
    :goto_9b
    return-object v0

    .line 297
    :cond_9c
    add-int/lit8 v2, v4, -0x4

    add-int/lit8 v2, v2, 0x2

    .line 298
    if-gez v2, :cond_a3

    move v2, v3

    .line 303
    :cond_a3
    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 305
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    double-to-int v0, v0

    aput v0, v4, v5

    .line 307
    sget-object v0, LZL;->a:[I

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    .line 308
    goto :goto_9b

    :cond_b8
    move v4, v2

    goto :goto_90
.end method

.method private c()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, LZL;->a:Ljava/io/File;

    if-nez v0, :cond_45

    const/4 v0, 0x1

    :goto_6
    const-string v2, "createFileCacheDir called while cacheDir exists"

    invoke-static {v0, v2}, LafQ;->b(ZLjava/lang/Object;)V

    .line 137
    iget-object v0, p0, LZL;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 143
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "filecache2"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 153
    :cond_2d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_42

    .line 154
    const-string v3, "filecache2"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 164
    :cond_42
    iput-object v2, p0, LZL;->a:Ljava/io/File;

    .line 165
    return-void

    :cond_45
    move v0, v1

    .line 136
    goto :goto_6
.end method

.method private d()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, LZL;->b:Ljava/io/File;

    if-nez v0, :cond_29

    move v0, v1

    :goto_7
    const-string v3, "createPinDir called while pinDir exists"

    invoke-static {v0, v3}, LafQ;->b(ZLjava/lang/Object;)V

    .line 170
    iget-object v0, p0, LZL;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 171
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2b

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 180
    :goto_1f
    if-nez v0, :cond_44

    .line 181
    new-instance v0, Ljava/io/IOException;

    const-string v1, "External storage not ready"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move v0, v2

    .line 168
    goto :goto_7

    .line 175
    :cond_2b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 176
    new-instance v3, Ljava/io/File;

    const-string v5, "/Android/data/%s/files/"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1f

    .line 183
    :cond_44
    const-string v1, "pinned_docs_files_do_not_edit"

    invoke-direct {p0, v0, v1}, LZL;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, LZL;->b:Ljava/io/File;

    .line 184
    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    .prologue
    .line 228
    invoke-virtual {p0}, LZL;->a()LZK;

    move-result-object v0

    .line 229
    invoke-interface {v0}, LZK;->a()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public a()LZK;
    .registers 4

    .prologue
    .line 213
    iget-object v0, p0, LZL;->a:LZM;

    if-eqz v0, :cond_7

    .line 214
    iget-object v0, p0, LZL;->a:LZM;

    .line 222
    :goto_6
    return-object v0

    .line 217
    :cond_7
    invoke-direct {p0}, LZL;->a()[I

    move-result-object v0

    .line 218
    new-instance v1, LZM;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, v0, v2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, p0, v0, v2}, LZM;-><init>(LZL;[II)V

    iput-object v1, p0, LZL;->a:LZM;

    .line 221
    iget-object v0, p0, LZL;->a:LZM;

    invoke-direct {p0, v0}, LZL;->a(LZM;)V

    .line 222
    iget-object v0, p0, LZL;->a:LZM;

    goto :goto_6
.end method

.method public declared-synchronized a()Ljava/io/File;
    .registers 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LZL;->a:Ljava/io/File;

    if-nez v0, :cond_8

    .line 119
    invoke-direct {p0}, LZL;->c()V

    .line 122
    :cond_8
    iget-object v0, p0, LZL;->a:Ljava/io/File;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 118
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, LZL;->a:LZM;

    invoke-direct {p0, v0}, LZL;->a(LZM;)V

    .line 236
    return-void
.end method

.method public a()Z
    .registers 4

    .prologue
    .line 240
    invoke-direct {p0}, LZL;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shared_preferences.notify_newdoc"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 346
    if-nez p1, :cond_1f

    .line 347
    const-string v0, "%s.%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "shared_preferences.state"

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_13
    invoke-direct {p0}, LZL;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 353
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    move v0, v1

    .line 357
    :goto_1e
    return v0

    .line 349
    :cond_1f
    const-string v0, "%s.%s~%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "shared_preferences.state"

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    aput-object p1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 356
    :cond_31
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v2

    .line 357
    goto :goto_1e
.end method

.method b()J
    .registers 5

    .prologue
    .line 244
    invoke-virtual {p0}, LZL;->a()Ljava/io/File;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 247
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 248
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized b()Ljava/io/File;
    .registers 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LZL;->b:Ljava/io/File;

    if-nez v0, :cond_8

    .line 129
    invoke-direct {p0}, LZL;->d()V

    .line 132
    :cond_8
    iget-object v0, p0, LZL;->b:Ljava/io/File;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 128
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 4

    .prologue
    .line 368
    invoke-direct {p0}, LZL;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shared_preferences.warn_offline_sync_broadband"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, LZL;->a:LeZ;

    sget-object v1, LeV;->p:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, LRt;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public c()Z
    .registers 4

    .prologue
    .line 329
    invoke-direct {p0}, LZL;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "streaming_decryption"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 6

    .prologue
    .line 334
    invoke-direct {p0}, LZL;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "additional_filters"

    iget-object v2, p0, LZL;->a:LFX;

    const-string v3, "additionalFiltersDefault"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 4

    .prologue
    .line 340
    invoke-direct {p0}, LZL;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enable_pin_encryption"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 4

    .prologue
    .line 363
    invoke-direct {p0}, LZL;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shared_preferences.warn_offline_sync_broadband"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
