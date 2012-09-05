.class public final Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;
.super Lcom/google/android/youtube/core/client/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;
.implements Lcom/google/android/youtube/core/client/aj;


# static fields
.field private static final i:Ljava/security/SecureRandom;

.field private static final j:Landroid/net/Uri;

.field private static final k:Landroid/net/Uri;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:[J


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:Lcom/google/android/youtube/core/model/o;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:I

.field private L:I

.field private M:I

.field private final N:Ljava/util/ArrayList;

.field private O:J

.field private P:Z

.field private final Q:Landroid/os/Handler;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field private final n:Lcom/google/android/youtube/core/async/ad;

.field private final o:Ljava/util/Random;

.field private final p:Lcom/google/android/youtube/core/Analytics;

.field private final q:Ljava/lang/String;

.field private final r:I

.field private final s:Z

.field private final t:Ljava/lang/String;

.field private u:Lcom/google/android/youtube/core/model/Video;

.field private v:Lcom/google/android/youtube/core/client/al;

.field private w:J

.field private x:Landroid/net/Uri;

.field private y:Z

.field private z:Lcom/google/android/youtube/core/model/Stream$Quality;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 150
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->i:Ljava/security/SecureRandom;

    .line 159
    const-string v0, "http://video.google.com/s"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->j:Landroid/net/Uri;

    .line 160
    const-string v0, "http://s2.youtube.com/s?ns=yt"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->k:Landroid/net/Uri;

    .line 162
    const-string v0, "itag[/=](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->l:Ljava/util/regex/Pattern;

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    return-void

    :array_28
    .array-data 0x8
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x9ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/c;Ljava/util/Random;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZLjava/lang/String;)V
    .registers 12
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
    .line 221
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/youtube/core/client/d;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/c;)V

    .line 222
    iput-object p4, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o:Ljava/util/Random;

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->e:Lcom/google/android/youtube/core/converter/http/ch;

    invoke-static {}, Lcom/google/android/youtube/core/converter/http/ao;->c()Lcom/google/android/youtube/core/converter/http/ao;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)Lcom/google/android/youtube/core/async/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->n:Lcom/google/android/youtube/core/async/ad;

    .line 224
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p:Lcom/google/android/youtube/core/Analytics;

    .line 225
    iput-object p6, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->q:Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->N:Ljava/util/ArrayList;

    .line 227
    iput p7, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->r:I

    .line 229
    if-eqz p8, :cond_28

    if-eqz p9, :cond_3a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    const-string v1, "noCountingStreamParameter cannot be null if shouldCountPlaybacks is true"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->b(ZLjava/lang/Object;)V

    .line 231
    iput-boolean p8, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->s:Z

    .line 232
    iput-object p9, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->t:Ljava/lang/String;

    .line 234
    new-instance v0, Lcom/google/android/youtube/core/client/ab;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/client/ab;-><init>(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    .line 235
    return-void

    .line 229
    :cond_3a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 461
    if-lez p1, :cond_6

    .line 462
    mul-int/lit8 v0, p0, 0x4

    div-int/2addr v0, p1

    .line 464
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->C:I

    return p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 511
    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 512
    sget-object v1, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->k:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "docid"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "plid"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ps"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "yttk"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "et"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "el"

    const-string v2, "detailpage"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ctp"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/c;Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;IZLjava/lang/String;)Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;

    .line 682
    new-instance v10, Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 683
    new-instance v0, Lcom/google/android/youtube/core/client/aa;

    move-object v1, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/client/aa;-><init>(Landroid/content/Context;[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/c;Lcom/google/android/youtube/core/Analytics;IZLjava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/client/aa;->start()V

    .line 696
    invoke-virtual {v10}, Landroid/os/ConditionVariable;->block()V

    .line 697
    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 664
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-float v4, p0

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Z
    .registers 4
    .parameter

    .prologue
    .line 481
    if-eqz p1, :cond_1e

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pinging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 483
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->n:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p0}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 484
    const/4 v0, 0x1

    .line 486
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->E:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Landroid/net/Uri;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Ljava/util/List;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_35

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pinging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->n:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v2, v0, p0}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_c

    :cond_33
    const/4 v0, 0x1

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method static synthetic a(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->I:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->G:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->D:Lcom/google/android/youtube/core/model/o;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->F:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;I)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_14

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->D:Lcom/google/android/youtube/core/model/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    goto :goto_4

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->D:Lcom/google/android/youtube/core/model/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->h:Ljava/util/List;

    goto :goto_4

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->D:Lcom/google/android/youtube/core/model/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->i:Ljava/util/List;

    goto :goto_4

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->I:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->H:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V
    .registers 14
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->P:Z

    if-eqz v0, :cond_14d

    iget-boolean v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->J:Z

    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->J:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p()V

    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->b()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->w:J

    sub-long/2addr v0, v3

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->j:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "docid"

    iget-object v5, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "app"

    const-string v5, "youtube_gdata"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ns"

    const-string v5, "yt"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "len"

    iget-object v5, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->u:Lcom/google/android/youtube/core/model/Video;

    iget v5, v5, Lcom/google/android/youtube/core/model/Video;->duration:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "el"

    const-string v5, "detailpage"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ps"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "rt"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "plid"

    iget-object v3, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "av"

    iget-object v3, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sw"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    new-array v5, v12, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->r:I

    int-to-float v6, v6

    const/high16 v7, 0x4120

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    if-nez v0, :cond_14e

    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->s:Z

    if-eqz v0, :cond_9c

    const-string v0, "playback"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->v:Lcom/google/android/youtube/core/client/al;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->v:Lcom/google/android/youtube/core/client/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/al;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b7

    const-string v0, "sourceId"

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->v:Lcom/google/android/youtube/core/client/al;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/al;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_b7
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->v:Lcom/google/android/youtube/core/client/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/al;->getSDetail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    const-string v0, "sdetail"

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->v:Lcom/google/android/youtube/core/client/al;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/al;->getSDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_ce
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->x:Landroid/net/Uri;

    sget-object v1, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1f5

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_e4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to infer iTag [videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->x:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    :goto_116
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->a(Landroid/net/Uri;)Z

    iput v11, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->L:I

    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->O:J

    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_131

    invoke-direct {p0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o()V

    :cond_131
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    sget-object v1, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1ff

    sget-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    iget v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    :goto_146
    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14d
    return-void

    :cond_14e
    const-string v0, "nbe"

    iget v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->L:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v4, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->N:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_169
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ae

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%.1f,"

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.1f,"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v11

    invoke-static {v1, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_169

    :cond_1ae
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1db

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    :goto_1bd
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v4, "st"

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "et"

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_9c

    :cond_1db
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v11, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v11, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    goto :goto_1bd

    :cond_1f5
    const/4 v0, 0x0

    goto/16 :goto_e4

    :cond_1f8
    const-string v1, "fmt"

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_116

    :cond_1ff
    sget-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    sget-object v1, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto/16 :goto_146
.end method

.method static synthetic d(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->E:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->F:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->u:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->z:Lcom/google/android/youtube/core/model/Stream$Quality;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->y:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I
    .registers 2
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->C:I

    return v0
.end method

.method static synthetic j(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p()V

    return-void
.end method

.method static synthetic l()Ljava/security/SecureRandom;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->i:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->H:Z

    return v0
.end method

.method private m()V
    .registers 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->g:Ljava/lang/String;

    .line 267
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->B:I

    .line 268
    return-void
.end method

.method static synthetic m(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)Z
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->A:Z

    return v0
.end method

.method private n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 525
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 526
    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 527
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m()V

    return-void
.end method

.method static synthetic o(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I
    .registers 2
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->G:I

    return v0
.end method

.method private o()V
    .registers 3

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->J:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->E:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->P:Z

    if-eqz v0, :cond_19

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->J:Z

    .line 734
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->C:I

    iput v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->M:I

    .line 736
    :cond_19
    return-void
.end method

.method static synthetic p(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I
    .registers 2
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->B:I

    return v0
.end method

.method private p()V
    .registers 4

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->J:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->E:Z

    if-nez v0, :cond_28

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->J:Z

    .line 741
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->C:I

    iget v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->M:I

    sub-int/2addr v0, v1

    .line 742
    const/4 v1, 0x3

    if-le v0, v1, :cond_28

    .line 743
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->N:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->M:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_28
    return-void
.end method

.method static synthetic q(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I
    .registers 3
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->B:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->B:I

    return v0
.end method

.method static synthetic r(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I
    .registers 3
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->L:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->L:I

    return v0
.end method

.method static synthetic s(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o()V

    return-void
.end method

.method static synthetic t(Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;)I
    .registers 2
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    return v0
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->x:Landroid/net/Uri;

    .line 561
    iput-boolean p2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->y:Z

    .line 562
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/client/al;)V
    .registers 2
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->v:Lcom/google/android/youtube/core/client/al;

    .line 585
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/o;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    const/16 v2, 0x65

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 62
    check-cast p1, Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ping failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->c()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method final b(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/o;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 252
    iput-object p1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->u:Lcom/google/android/youtube/core/model/Video;

    .line 253
    iput-object p3, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->z:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 254
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->A:Z

    .line 255
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->A:Z

    if-eqz v0, :cond_10

    .line 256
    invoke-direct {p0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m()V

    .line 259
    :cond_10
    iput-object p2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->D:Lcom/google/android/youtube/core/model/o;

    .line 260
    if-eqz p2, :cond_20

    iget-object v0, p2, Lcom/google/android/youtube/core/model/o;->d:Landroid/net/Uri;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->E:Z

    .line 261
    iput v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->G:I

    .line 262
    iput-boolean v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->H:Z

    .line 263
    return-void

    :cond_20
    move v0, v1

    .line 260
    goto :goto_19
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    return-void
.end method

.method public final f()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-direct {p0}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->h:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->w:J

    .line 549
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iput-boolean v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->J:Z

    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->o:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->r:I

    if-le v0, v2, :cond_62

    const/4 v0, 0x1

    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VSS sampling weight is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", generated number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", will ping - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iput-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->P:Z

    .line 552
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 553
    iput-boolean v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->I:Z

    .line 554
    iput v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    .line 555
    iput v1, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->L:I

    .line 556
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->O:J

    .line 557
    return-void

    :cond_62
    move v0, v1

    .line 551
    goto :goto_25
.end method

.method public final g()V
    .registers 6

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->p:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PlayStarted"

    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->u:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->z:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-boolean v3, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->y:Z

    iget-object v4, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->u:Lcom/google/android/youtube/core/model/Video;

    iget v4, v4, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    .line 566
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    return-void
.end method

.method public final i()V
    .registers 12

    .prologue
    const/16 v10, 0x68

    .line 575
    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    if-lez v0, :cond_59

    iget v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->P:Z

    if-eqz v0, :cond_59

    .line 577
    iget-object v3, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->Q:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->O:J

    iget-object v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v2}, Lcom/google/android/youtube/core/utils/c;->b()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->K:I

    :goto_24
    sget-object v6, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    array-length v6, v6

    if-gt v2, v6, :cond_37

    cmp-long v6, v0, v4

    if-gez v6, :cond_37

    sget-object v6, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    add-int/lit8 v7, v2, -0x1

    aget-wide v6, v6, v7

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_37
    cmp-long v2, v0, v4

    if-gez v2, :cond_55

    sub-long v6, v4, v0

    sget-object v2, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    sget-object v8, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v2, v8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sget-object v2, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    sget-object v8, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->m:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v2, v8

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    :cond_55
    sub-long/2addr v0, v4

    invoke-virtual {v3, v10, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 581
    :cond_59
    return-void
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->s:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient;->t:Ljava/lang/String;

    return-object v0
.end method
