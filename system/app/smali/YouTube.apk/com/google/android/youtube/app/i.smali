.class public final Lcom/google/android/youtube/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/u;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ad;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Ljava/util/concurrent/Executor;

.field private f:Z

.field private final g:Lcom/google/android/a/a/d/a;

.field private final h:Lcom/google/android/a/a/d/c;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/SharedPreferences;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "executor can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/app/i;->e:Ljava/util/concurrent/Executor;

    .line 50
    const-string v0, "preferences can not be null"

    invoke-static {p2, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/app/i;->d:Landroid/content/SharedPreferences;

    .line 52
    new-instance v0, Lcom/google/android/a/a/d/e;

    invoke-direct {v0}, Lcom/google/android/a/a/d/e;-><init>()V

    .line 53
    new-instance v1, Lcom/google/android/youtube/app/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/j;-><init>(Lcom/google/android/youtube/app/i;Lcom/google/android/a/a/d/e;)V

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/async/b;->a(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/i;->a:Lcom/google/android/youtube/core/async/ad;

    .line 64
    new-instance v0, Lcom/google/android/a/a/d/a;

    invoke-direct {v0}, Lcom/google/android/a/a/d/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/i;->g:Lcom/google/android/a/a/d/a;

    .line 65
    new-instance v0, Lcom/google/android/a/a/d/c;

    invoke-direct {v0}, Lcom/google/android/a/a/d/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/i;->h:Lcom/google/android/a/a/d/c;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/i;->b:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/i;->c:Ljava/util/Map;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/i;Landroid/content/SharedPreferences;)Ljava/util/List;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 32
    const-string v0, "screenIds"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "screenIds"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v0, "screenNames"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_30
    array-length v0, v8

    if-ge v6, v0, :cond_53

    aget-object v2, v8, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    new-instance v0, Lcom/google/android/a/e/c;

    new-instance v1, Lcom/google/android/a/e/b;

    invoke-direct {v1, v2}, Lcom/google/android/a/e/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v3, v9, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/c;-><init>(Lcom/google/android/a/e/b;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_30

    :cond_53
    move-object v0, v7

    goto :goto_c
.end method

.method static synthetic a(Lcom/google/android/youtube/app/i;Lcom/google/android/a/e/c;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/app/n;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/n;-><init>(Lcom/google/android/youtube/app/i;Lcom/google/android/a/e/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/i;)Z
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/youtube/app/i;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/i;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/i;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/i;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/i;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/i;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/i;)Lcom/google/android/a/a/d/a;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->g:Lcom/google/android/a/a/d/a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/i;)Lcom/google/android/a/a/d/c;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->h:Lcom/google/android/a/a/d/c;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/app/l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/l;-><init>(Lcom/google/android/youtube/app/i;Lcom/google/android/youtube/core/async/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/a/e/a;Lcom/google/android/youtube/core/async/g;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->a:Lcom/google/android/youtube/core/async/ad;

    new-instance v1, Lcom/google/android/youtube/app/k;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/android/youtube/app/k;-><init>(Lcom/google/android/youtube/app/i;Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    invoke-interface {v0, p2, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 89
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/i;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/app/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/m;-><init>(Lcom/google/android/youtube/app/i;Lcom/google/android/youtube/core/async/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method
