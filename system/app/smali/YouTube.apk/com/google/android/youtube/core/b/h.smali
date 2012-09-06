.class public final Lcom/google/android/youtube/core/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/b/b;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/apps/analytics/i;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Thread;

.field private e:I

.field private final f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/b/h;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    .line 119
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "executor can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/h;->a:Ljava/util/concurrent/Executor;

    .line 63
    const-string v0, "appVersion can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    const-string v0, "deviceType can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    const-string v0, "propertyId can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    if-lez p6, :cond_da

    move v0, v1

    :goto_22
    const-string v3, "updateSeconds must be > 0"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 67
    invoke-interface {p8}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v3, 0x4

    if-gt v0, v3, :cond_dd

    move v0, v1

    :goto_2f
    const-string v3, "up to 4 custom vars are allowed"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 68
    if-lez p7, :cond_e0

    move v0, v1

    :goto_37
    const-string v3, "sampleRatio must be >= 1"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 70
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 71
    const-string v0, "ANALYTICS_SAMPLE_ID_KEY"

    const/4 v4, -0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/b/h;->e:I

    .line 72
    iget v0, p0, Lcom/google/android/youtube/core/b/h;->e:I

    if-gez v0, :cond_6b

    .line 73
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    const/high16 v4, -0x8000

    if-ne v0, v4, :cond_e3

    :goto_5a
    iput v2, p0, Lcom/google/android/youtube/core/b/h;->e:I

    .line 74
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ANALYTICS_SAMPLE_ID_KEY"

    iget v3, p0, Lcom/google/android/youtube/core/b/h;->e:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 77
    :cond_6b
    iput p7, p0, Lcom/google/android/youtube/core/b/h;->f:I

    .line 78
    if-le p7, v1, :cond_eb

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/h;->c:Ljava/lang/String;

    .line 88
    :goto_88
    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/h;->b:Lcom/google/android/apps/analytics/i;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->b:Lcom/google/android/apps/analytics/i;

    iget-object v2, p0, Lcom/google/android/youtube/core/b/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->b:Lcom/google/android/apps/analytics/i;

    invoke-virtual {v0, p5, p6, p1}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;ILandroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->b:Lcom/google/android/apps/analytics/i;

    const-string v2, "Device"

    invoke-virtual {v0, v1, v2, p3, v5}, Lcom/google/android/apps/analytics/i;->a(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 92
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 93
    iget-object v3, p0, Lcom/google/android/youtube/core/b/h;->b:Lcom/google/android/apps/analytics/i;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/google/android/apps/analytics/i;->a(ILjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_a9

    :cond_da
    move v0, v2

    .line 66
    goto/16 :goto_22

    :cond_dd
    move v0, v2

    .line 67
    goto/16 :goto_2f

    :cond_e0
    move v0, v2

    .line 68
    goto/16 :goto_37

    .line 73
    :cond_e3
    if-gez v0, :cond_e8

    neg-int v2, v0

    goto/16 :goto_5a

    :cond_e8
    move v2, v0

    goto/16 :goto_5a

    .line 85
    :cond_eb
    iput-object p4, p0, Lcom/google/android/youtube/core/b/h;->c:Ljava/lang/String;

    goto :goto_88

    .line 99
    :cond_ee
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/h;->d:Ljava/lang/Thread;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/b/h;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/b/h;)Lcom/google/android/apps/analytics/i;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->b:Lcom/google/android/apps/analytics/i;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->b:Lcom/google/android/apps/analytics/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/analytics/i;->a(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 145
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 139
    const-string v1, "PageView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->g:Ljava/lang/String;

    if-nez v0, :cond_26

    const-string v0, "Entry"

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/youtube/core/b/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    iput-object p1, p0, Lcom/google/android/youtube/core/b/h;->g:Ljava/lang/String;

    .line 141
    return-void

    .line 139
    :cond_26
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->g:Ljava/lang/String;

    goto :goto_17
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    const-string v2, "event [version=%s, action=%s, label=%s, value=%d]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/b/h;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 124
    iget v2, p0, Lcom/google/android/youtube/core/b/h;->e:I

    iget v3, p0, Lcom/google/android/youtube/core/b/h;->f:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2d

    :goto_24
    if-eqz v0, :cond_2c

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 136
    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    move v0, v1

    .line 124
    goto :goto_24

    .line 127
    :cond_2f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/h;->d:Ljava/lang/Thread;

    if-ne v0, v1, :cond_42

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/b/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/youtube/core/b/i;-><init>(Lcom/google/android/youtube/core/b/h;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    .line 134
    :cond_42
    iget-object v0, p0, Lcom/google/android/youtube/core/b/h;->b:Lcom/google/android/apps/analytics/i;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2c
.end method
