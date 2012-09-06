.class public Lcom/google/android/youtube/core/b/ab;
.super Lcom/google/android/youtube/core/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;
.implements Lcom/google/android/youtube/core/b/an;


# static fields
.field private static final j:Ljava/security/SecureRandom;

.field private static final k:Landroid/net/Uri;

.field private static final l:Landroid/net/Uri;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:[J


# instance fields
.field private A:Lcom/google/android/youtube/core/model/Stream$Quality;

.field private B:Z

.field private C:I

.field private D:I

.field private E:Lcom/google/android/youtube/core/model/n;

.field private F:Z

.field private G:Z

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:I

.field private M:I

.field private N:I

.field private final O:Ljava/util/ArrayList;

.field private P:J

.field private Q:Z

.field private final R:Landroid/os/HandlerThread;

.field private final S:Landroid/os/Handler;

.field protected g:Z

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field private final o:Lcom/google/android/youtube/core/async/ar;

.field private final p:Ljava/util/Random;

.field private final q:Lcom/google/android/youtube/core/Analytics;

.field private final r:Ljava/lang/String;

.field private final s:I

.field private final t:Z

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Ljava/util/Map;

.field private x:Lcom/google/android/youtube/core/b/aj;

.field private y:J

.field private z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/b/ab;->j:Ljava/security/SecureRandom;

    .line 75
    const-string v0, "http://video.google.com/s"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/b/ab;->k:Landroid/net/Uri;

    .line 76
    const-string v0, "http://s2.youtube.com/s?ns=yt"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/b/ab;->l:Landroid/net/Uri;

    .line 78
    const-string v0, "itag[/=](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/b/ab;->m:Ljava/util/regex/Pattern;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/android/youtube/core/b/ab;->n:[J

    return-void

    :array_28
    .array-data 0x8
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x9ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/d;Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;IZ)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    sget-object v4, Lcom/google/android/youtube/core/b/ab;->j:Ljava/security/SecureRandom;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Util;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/b/ab;-><init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/d;Ljava/util/Random;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZ)V

    .line 149
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/d;Ljava/util/Random;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;IZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/youtube/core/b/c;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/d;)V

    .line 156
    iput-object p4, p0, Lcom/google/android/youtube/core/b/ab;->p:Ljava/util/Random;

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->e:Lcom/google/android/youtube/core/converter/http/dc;

    invoke-static {}, Lcom/google/android/youtube/core/converter/http/bc;->c()Lcom/google/android/youtube/core/converter/http/bc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)Lcom/google/android/youtube/core/async/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->o:Lcom/google/android/youtube/core/async/ar;

    .line 158
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->q:Lcom/google/android/youtube/core/Analytics;

    .line 159
    iput-object p6, p0, Lcom/google/android/youtube/core/b/ab;->r:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->O:Ljava/util/ArrayList;

    .line 161
    iput p7, p0, Lcom/google/android/youtube/core/b/ab;->s:I

    .line 162
    iput-boolean p8, p0, Lcom/google/android/youtube/core/b/ab;->t:Z

    .line 164
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->R:Landroid/os/HandlerThread;

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->R:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v0, Lcom/google/android/youtube/core/b/ac;

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ab;->R:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/b/ac;-><init>(Lcom/google/android/youtube/core/b/ab;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->w:Ljava/util/Map;

    .line 169
    invoke-static {}, Lcom/google/android/youtube/core/b/ak;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/b/ab;->a(Ljava/util/List;)V

    .line 170
    return-void
.end method

.method static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 441
    if-lez p1, :cond_6

    .line 442
    mul-int/lit8 v0, p0, 0x4

    div-int/2addr v0, p1

    .line 444
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic a(Lcom/google/android/youtube/core/b/ab;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/google/android/youtube/core/b/ab;->D:I

    return p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 492
    sget-object v1, Lcom/google/android/youtube/core/b/ab;->l:Landroid/net/Uri;

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

.method private static a(J)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 659
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
    .line 461
    if-eqz p1, :cond_1a

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pinging "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 463
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->o:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v0, p1, p0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic a(Lcom/google/android/youtube/core/b/ab;)Z
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->F:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/b/ab;Landroid/net/Uri;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/b/ab;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/b/ab;Ljava/util/List;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p1, :cond_31

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pinging "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ab;->o:Lcom/google/android/youtube/core/async/ar;

    invoke-interface {v2, v0, p0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_c

    :cond_2f
    const/4 v0, 0x1

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method static synthetic a(Lcom/google/android/youtube/core/b/ab;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->J:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/b/ab;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/google/android/youtube/core/b/ab;->H:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/n;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->E:Lcom/google/android/youtube/core/model/n;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/b/ab;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/android/youtube/core/b/ab;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/youtube/core/b/ab;I)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_14

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->E:Lcom/google/android/youtube/core/model/n;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/n;->i:Ljava/util/List;

    goto :goto_4

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->E:Lcom/google/android/youtube/core/model/n;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/n;->j:Ljava/util/List;

    goto :goto_4

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->E:Lcom/google/android/youtube/core/model/n;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/n;->k:Ljava/util/List;

    goto :goto_4

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/youtube/core/b/ab;)Z
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->J:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/b/ab;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->I:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/b/ab;)V
    .registers 14
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->Q:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    if-nez v0, :cond_153

    :cond_a
    iget-boolean v2, p0, Lcom/google/android/youtube/core/b/ab;->K:Z

    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->K:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/google/android/youtube/core/b/ab;->p()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->b()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/youtube/core/b/ab;->y:J

    sub-long/2addr v0, v3

    sget-object v3, Lcom/google/android/youtube/core/b/ab;->k:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "docid"

    iget-object v5, p0, Lcom/google/android/youtube/core/b/ab;->u:Ljava/lang/String;

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

    iget v5, p0, Lcom/google/android/youtube/core/b/ab;->v:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/b/ab;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "plid"

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "av"

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ab;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sw"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    new-array v5, v12, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/youtube/core/b/ab;->s:I

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

    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    if-nez v0, :cond_154

    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->t:Z

    if-eqz v0, :cond_9b

    const-string v0, "playback"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_9b
    const-string v0, "st"

    const-string v1, "0.0"

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "et"

    const-string v1, "0.0"

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_a9
    :goto_a9
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->x:Lcom/google/android/youtube/core/b/aj;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->x:Lcom/google/android/youtube/core/b/aj;

    iget-object v0, v0, Lcom/google/android/youtube/core/b/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "sourceid"

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ab;->x:Lcom/google/android/youtube/core/b/aj;

    iget-object v1, v1, Lcom/google/android/youtube/core/b/aj;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_c0
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->x:Lcom/google/android/youtube/core/b/aj;

    iget-object v0, v0, Lcom/google/android/youtube/core/b/aj;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "sdetail"

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ab;->x:Lcom/google/android/youtube/core/b/aj;

    iget-object v1, v1, Lcom/google/android/youtube/core/b/aj;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_d3
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->z:Landroid/net/Uri;

    sget-object v1, Lcom/google/android/youtube/core/b/ab;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1fb

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_e9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to infer iTag [videoId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ab;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/ab;->z:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    :goto_115
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/b/ab;->a(Landroid/net/Uri$Builder;)V

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/b/ab;->a(Landroid/net/Uri;)Z

    iput v11, p0, Lcom/google/android/youtube/core/b/ab;->M:I

    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/b/ab;->P:J

    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_133

    invoke-direct {p0}, Lcom/google/android/youtube/core/b/ab;->o()V

    :cond_133
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->Q:Z

    if-eqz v0, :cond_153

    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    sget-object v1, Lcom/google/android/youtube/core/b/ab;->n:[J

    array-length v1, v1

    if-gt v0, v1, :cond_205

    sget-object v0, Lcom/google/android/youtube/core/b/ab;->n:[J

    iget v1, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    :goto_14c
    iget-object v2, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_153
    return-void

    :cond_154
    const-string v0, "nbe"

    iget v1, p0, Lcom/google/android/youtube/core/b/ab;->M:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v4, p0, Lcom/google/android/youtube/core/b/ab;->O:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b4

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

    goto :goto_16f

    :cond_1b4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e1

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    :goto_1c3
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v4, "st"

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "et"

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_a9

    :cond_1e1
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

    goto :goto_1c3

    :cond_1fb
    const/4 v0, 0x0

    goto/16 :goto_e9

    :cond_1fe
    const-string v1, "fmt"

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_115

    :cond_205
    sget-object v0, Lcom/google/android/youtube/core/b/ab;->n:[J

    sget-object v1, Lcom/google/android/youtube/core/b/ab;->n:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto/16 :goto_14c
.end method

.method static synthetic d(Lcom/google/android/youtube/core/b/ab;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->F:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/b/ab;)Z
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->G:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->A:Lcom/google/android/youtube/core/model/Stream$Quality;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/b/ab;)I
    .registers 2
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->D:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/b/ab;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->q:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/b/ab;)V
    .registers 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/core/b/ab;->p()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/youtube/core/b/ab;)Z
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->I:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/b/ab;)Z
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->B:Z

    return v0
.end method

.method static synthetic l(Lcom/google/android/youtube/core/b/ab;)V
    .registers 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/core/b/ab;->m()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/youtube/core/b/ab;)I
    .registers 2
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->H:I

    return v0
.end method

.method private m()V
    .registers 2

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/google/android/youtube/core/b/ab;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->h:Ljava/lang/String;

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/b/ab;->C:I

    .line 211
    return-void
.end method

.method static synthetic n(Lcom/google/android/youtube/core/b/ab;)I
    .registers 2
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->C:I

    return v0
.end method

.method private n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 505
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 506
    iget-object v1, p0, Lcom/google/android/youtube/core/b/ab;->p:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 507
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/youtube/core/b/ab;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->u:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .registers 3

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->K:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->F:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->Q:Z

    if-eqz v0, :cond_19

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->K:Z

    .line 698
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->D:I

    iput v0, p0, Lcom/google/android/youtube/core/b/ab;->N:I

    .line 700
    :cond_19
    return-void
.end method

.method static synthetic p(Lcom/google/android/youtube/core/b/ab;)I
    .registers 3
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/b/ab;->C:I

    return v0
.end method

.method private p()V
    .registers 4

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->K:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->F:Z

    if-nez v0, :cond_28

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->K:Z

    .line 705
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->D:I

    iget v1, p0, Lcom/google/android/youtube/core/b/ab;->N:I

    sub-int/2addr v0, v1

    .line 706
    const/4 v1, 0x3

    if-le v0, v1, :cond_28

    .line 707
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->O:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/youtube/core/b/ab;->N:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/core/b/ab;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_28
    return-void
.end method

.method static synthetic q(Lcom/google/android/youtube/core/b/ab;)I
    .registers 3
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->M:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/b/ab;->M:I

    return v0
.end method

.method static synthetic r(Lcom/google/android/youtube/core/b/ab;)V
    .registers 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/core/b/ab;->o()V

    return-void
.end method

.method static synthetic s(Lcom/google/android/youtube/core/b/ab;)I
    .registers 2
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    return v0
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    return-object v0
.end method

.method protected a(Landroid/net/Uri$Builder;)V
    .registers 2
    .parameter

    .prologue
    .line 651
    return-void
.end method

.method public final a(Landroid/net/Uri;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/android/youtube/core/b/ab;->z:Landroid/net/Uri;

    .line 542
    iput-boolean p2, p0, Lcom/google/android/youtube/core/b/ab;->g:Z

    .line 543
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/n;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    iget v2, p1, Lcom/google/android/youtube/core/model/Video;->duration:I

    iget-object v3, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v5, 0x65

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object p2, v6, v0

    const/4 v0, 0x4

    aput-object p3, v6, v0

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p1, Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ping failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    .line 566
    if-nez v0, :cond_f

    .line 567
    const-string v1, "Referrer cannot be recognized"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 569
    :cond_f
    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->x:Lcom/google/android/youtube/core/b/aj;

    .line 570
    return-void
.end method

.method final a(Ljava/lang/String;ZILcom/google/android/youtube/core/model/n;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 194
    iput-object p1, p0, Lcom/google/android/youtube/core/b/ab;->u:Ljava/lang/String;

    .line 195
    iput p3, p0, Lcom/google/android/youtube/core/b/ab;->v:I

    .line 196
    iput-object p5, p0, Lcom/google/android/youtube/core/b/ab;->A:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 197
    iput-boolean p2, p0, Lcom/google/android/youtube/core/b/ab;->B:Z

    .line 198
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->B:Z

    if-eqz v0, :cond_10

    .line 199
    invoke-direct {p0}, Lcom/google/android/youtube/core/b/ab;->m()V

    .line 202
    :cond_10
    iput-object p4, p0, Lcom/google/android/youtube/core/b/ab;->E:Lcom/google/android/youtube/core/model/n;

    .line 203
    if-eqz p4, :cond_20

    iget-object v0, p4, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->F:Z

    .line 204
    iput v1, p0, Lcom/google/android/youtube/core/b/ab;->H:I

    .line 205
    iput-boolean v1, p0, Lcom/google/android/youtube/core/b/ab;->I:Z

    .line 206
    return-void

    :cond_20
    move v0, v1

    .line 203
    goto :goto_19
.end method

.method public final a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 734
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    .line 735
    iget-object v1, p0, Lcom/google/android/youtube/core/b/ab;->w:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/youtube/core/b/aj;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    :goto_1b
    const-string v3, "Cannot override an existing referrer value"

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 737
    iget-object v1, p0, Lcom/google/android/youtube/core/b/ab;->w:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/youtube/core/b/aj;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 735
    :cond_28
    const/4 v1, 0x0

    goto :goto_1b

    .line 739
    :cond_2a
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    return-void
.end method

.method public final h()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 528
    invoke-direct {p0}, Lcom/google/android/youtube/core/b/ab;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b/ab;->i:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/youtube/core/b/ab;->y:J

    .line 530
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iput-boolean v1, p0, Lcom/google/android/youtube/core/b/ab;->K:Z

    .line 532
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->p:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->s:I

    if-le v0, v2, :cond_5e

    const/4 v0, 0x1

    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VSS sampling weight is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/google/android/youtube/core/b/ab;->s:I

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

    iput-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->Q:Z

    .line 533
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 534
    iput-boolean v1, p0, Lcom/google/android/youtube/core/b/ab;->J:Z

    .line 535
    iput v1, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    .line 536
    iput v1, p0, Lcom/google/android/youtube/core/b/ab;->M:I

    .line 537
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/b/ab;->P:J

    .line 538
    return-void

    :cond_5e
    move v0, v1

    .line 532
    goto :goto_25
.end method

.method public final i()V
    .registers 6

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->q:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PlayStarted"

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ab;->A:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-boolean v3, p0, Lcom/google/android/youtube/core/b/ab;->g:Z

    iget v4, p0, Lcom/google/android/youtube/core/b/ab;->v:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    .line 547
    return-void
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    return-void
.end method

.method public final k()V
    .registers 12

    .prologue
    const/16 v10, 0x68

    .line 556
    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    if-lez v0, :cond_59

    iget v0, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->Q:Z

    if-eqz v0, :cond_59

    .line 558
    iget-object v3, p0, Lcom/google/android/youtube/core/b/ab;->S:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/google/android/youtube/core/b/ab;->P:J

    iget-object v2, p0, Lcom/google/android/youtube/core/b/ab;->c:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v2}, Lcom/google/android/youtube/core/utils/d;->b()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/youtube/core/b/ab;->L:I

    :goto_24
    sget-object v6, Lcom/google/android/youtube/core/b/ab;->n:[J

    array-length v6, v6

    if-gt v2, v6, :cond_37

    cmp-long v6, v0, v4

    if-gez v6, :cond_37

    sget-object v6, Lcom/google/android/youtube/core/b/ab;->n:[J

    add-int/lit8 v7, v2, -0x1

    aget-wide v6, v6, v7

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_37
    cmp-long v2, v0, v4

    if-gez v2, :cond_55

    sub-long v6, v4, v0

    sget-object v2, Lcom/google/android/youtube/core/b/ab;->n:[J

    sget-object v8, Lcom/google/android/youtube/core/b/ab;->n:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v2, v8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sget-object v2, Lcom/google/android/youtube/core/b/ab;->n:[J

    sget-object v8, Lcom/google/android/youtube/core/b/ab;->n:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v2, v8

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    :cond_55
    sub-long/2addr v0, v4

    invoke-virtual {v3, v10, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 562
    :cond_59
    return-void
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/google/android/youtube/core/b/ab;->t:Z

    return v0
.end method
