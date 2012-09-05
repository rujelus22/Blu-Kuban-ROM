.class public final Lcom/google/android/youtube/core/client/e;
.super Lcom/google/android/youtube/core/client/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/client/a;


# instance fields
.field private final g:Landroid/content/SharedPreferences;

.field private final h:Lcom/google/android/youtube/core/client/ad;

.field private final i:Lcom/google/android/youtube/core/async/ad;

.field private final j:Lcom/google/android/youtube/core/async/ad;

.field private k:Lcom/google/android/youtube/core/async/g;

.field private l:J

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/c;Landroid/content/SharedPreferences;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/converter/k;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p4, p6, p2}, Lcom/google/android/youtube/core/client/d;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/k;Lcom/google/android/youtube/core/utils/c;)V

    .line 79
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p10}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->g:Landroid/content/SharedPreferences;

    .line 83
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->h:Lcom/google/android/youtube/core/client/ad;

    .line 84
    invoke-interface {p2}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    .line 85
    const-string v2, "last_ad_time"

    invoke-interface {p3, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/client/e;->l:J

    .line 86
    const v0, 0x927c0

    const-string v1, "last_ad_delay"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/client/e;->m:I

    .line 88
    new-instance v0, Lcom/google/android/youtube/core/converter/http/a;

    invoke-direct {v0, p7, p8, p10, p9}, Lcom/google/android/youtube/core/converter/http/a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v0}, Lcom/google/android/youtube/core/client/e;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)Lcom/google/android/youtube/core/async/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/client/e;->a(Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->i:Lcom/google/android/youtube/core/async/ad;

    .line 90
    new-instance v0, Lcom/google/android/youtube/core/converter/http/cv;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/e;->f:Lcom/google/android/youtube/core/converter/k;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/cv;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/client/e;->e:Lcom/google/android/youtube/core/converter/http/ch;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/client/e;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)Lcom/google/android/youtube/core/async/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/client/e;->a(Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->j:Lcom/google/android/youtube/core/async/ad;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/client/e;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/google/android/youtube/core/client/e;->n:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/ad;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->j:Lcom/google/android/youtube/core/async/ad;

    return-object v0
.end method

.method static synthetic a(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 43
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.youtube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/async/g;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->k:Lcom/google/android/youtube/core/async/g;

    return-object v0
.end method

.method static synthetic b(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 43
    const-string v0, "v"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/client/e;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->h:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/client/e;)Z
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/e;->o:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/client/e;->l:J

    .line 109
    iget v0, p0, Lcom/google/android/youtube/core/client/e;->n:I

    iput v0, p0, Lcom/google/android/youtube/core/client/e;->m:I

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_ad_time"

    iget-wide v2, p0, Lcom/google/android/youtube/core/client/e;->l:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_ad_delay"

    iget v2, p0, Lcom/google/android/youtube/core/client/e;->m:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/g;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->k:Lcom/google/android/youtube/core/async/g;

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/core/client/e;->l:J

    iget v4, p0, Lcom/google/android/youtube/core/client/e;->m:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->i:Lcom/google/android/youtube/core/async/ad;

    new-instance v1, Lcom/google/android/youtube/core/client/f;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/client/f;-><init>(Lcom/google/android/youtube/core/client/e;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 105
    :goto_22
    return-void

    .line 103
    :cond_23
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_22
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/android/youtube/core/client/e;->o:Z

    .line 95
    return-void
.end method
