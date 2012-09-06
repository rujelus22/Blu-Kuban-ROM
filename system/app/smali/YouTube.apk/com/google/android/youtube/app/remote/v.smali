.class public final Lcom/google/android/youtube/app/remote/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/bc;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ar;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Landroid/content/res/Resources;

.field private final f:Ljava/util/concurrent/Executor;

.field private g:Z

.field private final h:Lcom/google/android/ytremote/backend/a/a;

.field private final i:Lcom/google/android/ytremote/backend/a/d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "executor can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/v;->f:Ljava/util/concurrent/Executor;

    .line 56
    const-string v0, "preferences can not be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/v;->d:Landroid/content/SharedPreferences;

    .line 57
    const-string v0, "resources can not be null"

    invoke-static {p3, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/v;->e:Landroid/content/res/Resources;

    .line 59
    new-instance v0, Lcom/google/android/ytremote/backend/a/f;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/a/f;-><init>()V

    .line 60
    new-instance v1, Lcom/google/android/youtube/app/remote/w;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/remote/w;-><init>(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/ytremote/backend/a/f;)V

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/async/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/v;->a:Lcom/google/android/youtube/core/async/ar;

    .line 71
    new-instance v0, Lcom/google/android/ytremote/backend/a/a;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/v;->h:Lcom/google/android/ytremote/backend/a/a;

    .line 72
    new-instance v0, Lcom/google/android/ytremote/backend/a/d;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/v;->i:Lcom/google/android/ytremote/backend/a/d;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/v;->b:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/v;->c:Ljava/util/Map;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/v;Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/v;->a(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 5
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private a()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 183
    monitor-enter p0

    .line 184
    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/v;->g:Z

    if-nez v0, :cond_1e

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/v;->g:Z

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->d:Landroid/content/SharedPreferences;

    const-string v2, "screenIds"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/v;->d:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/v;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_39

    move v0, v1

    .line 192
    :goto_20
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/v;->e:Landroid/content/res/Resources;

    const v3, 0x7f0b0211

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/remote/v;->a(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v3

    .line 194
    if-nez v3, :cond_3c

    .line 195
    return-object v2

    .line 190
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/v;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/youtube/app/remote/v;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/SharedPreferences;)Ljava/util/List;
    .registers 9
    .parameter

    .prologue
    .line 201
    const-string v0, "screenIds"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 216
    :goto_c
    return-object v0

    .line 205
    :cond_d
    const-string v0, "screenIds"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v0, "screenNames"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    const/4 v0, 0x0

    :goto_2f
    array-length v4, v2

    if-ge v0, v4, :cond_4d

    .line 209
    aget-object v4, v2, v0

    .line 210
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 211
    new-instance v5, Lcom/google/android/ytremote/model/CloudScreen;

    new-instance v6, Lcom/google/android/ytremote/model/ScreenId;

    invoke-direct {v6, v4}, Lcom/google/android/ytremote/model/ScreenId;-><init>(Ljava/lang/String;)V

    aget-object v4, v3, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lcom/google/android/ytremote/model/CloudScreen;-><init>(Lcom/google/android/ytremote/model/ScreenId;Ljava/lang/String;Lcom/google/android/ytremote/model/LoungeToken;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4d
    move-object v0, v1

    .line 216
    goto :goto_c
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/v;Landroid/content/SharedPreferences;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/android/youtube/app/remote/v;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/v;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    new-instance v3, Lcom/google/android/youtube/app/remote/bb;

    invoke-direct {v3, v0}, Lcom/google/android/youtube/app/remote/bb;-><init>(Lcom/google/android/ytremote/model/CloudScreen;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/ytremote/model/CloudScreen;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/app/remote/aa;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/aa;-><init>(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/ytremote/model/CloudScreen;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/v;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/v;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/v;)Z
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/v;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/remote/v;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/remote/v;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/remote/v;)Lcom/google/android/ytremote/backend/a/a;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->h:Lcom/google/android/ytremote/backend/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/remote/v;)Lcom/google/android/ytremote/backend/a/d;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->i:Lcom/google/android/ytremote/backend/a/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/app/remote/y;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/y;-><init>(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/youtube/core/async/l;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->a:Lcom/google/android/youtube/core/async/ar;

    new-instance v1, Lcom/google/android/youtube/app/remote/x;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/android/youtube/app/remote/x;-><init>(Lcom/google/android/youtube/app/remote/v;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, p2, v1}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 99
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/v;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/app/remote/z;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/z;-><init>(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
