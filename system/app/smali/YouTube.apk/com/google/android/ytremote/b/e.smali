.class public Lcom/google/android/ytremote/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/logic/c;


# static fields
.field private static final a:[J

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:I

.field private final d:Lorg/apache/http/client/HttpClient;

.field private e:J

.field private final f:[J

.field private g:Lcom/google/android/ytremote/model/CloudScreen;

.field private final h:Lcom/google/android/ytremote/backend/logic/a;

.field private final i:Lcom/google/android/ytremote/b/h;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [J

    fill-array-data v0, :array_12

    .line 61
    sput-object v0, Lcom/google/android/ytremote/b/e;->a:[J

    .line 64
    const-class v0, Lcom/google/android/ytremote/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/b/e;->b:Ljava/lang/String;

    .line 35
    return-void

    .line 62
    :array_12
    .array-data 0x8
        0x88t 0x13t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x4et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/ytremote/backend/logic/a;)V
    .registers 5
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/ytremote/b/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/b/g;-><init>(B)V

    invoke-static {}, Lcom/google/android/ytremote/a/d/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 89
    sget-object v2, Lcom/google/android/ytremote/b/e;->a:[J

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/ytremote/b/e;-><init>(Lcom/google/android/ytremote/backend/logic/a;Lcom/google/android/ytremote/b/h;Lorg/apache/http/client/HttpClient;[J)V

    .line 90
    return-void
.end method

.method private constructor <init>(Lcom/google/android/ytremote/backend/logic/a;Lcom/google/android/ytremote/b/h;Lorg/apache/http/client/HttpClient;[J)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/google/android/ytremote/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/ytremote/b/e;->h:Lcom/google/android/ytremote/backend/logic/a;

    .line 96
    iput-object p2, p0, Lcom/google/android/ytremote/b/e;->i:Lcom/google/android/ytremote/b/h;

    .line 97
    iput-object p3, p0, Lcom/google/android/ytremote/b/e;->d:Lorg/apache/http/client/HttpClient;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/ytremote/b/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    iput v1, p0, Lcom/google/android/ytremote/b/e;->c:I

    .line 100
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Poll for online device"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/ytremote/b/e;->k:Ljava/util/Timer;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/ytremote/b/e;->e:J

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ytremote/b/e;->g:Lcom/google/android/ytremote/model/CloudScreen;

    .line 103
    iput-object p4, p0, Lcom/google/android/ytremote/b/e;->f:[J

    .line 104
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/ytremote/b/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/ytremote/b/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/ytremote/b/e;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/google/android/ytremote/b/e;->e:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/logic/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->g:Lcom/google/android/ytremote/model/CloudScreen;

    if-nez v0, :cond_9

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/google/android/ytremote/logic/d;->a(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->g:Lcom/google/android/ytremote/model/CloudScreen;

    invoke-interface {p1, v0}, Lcom/google/android/ytremote/logic/d;->a(Lcom/google/android/ytremote/model/CloudScreen;)V

    goto :goto_8
.end method

.method static synthetic a(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/model/CloudScreen;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/ytremote/b/e;->g:Lcom/google/android/ytremote/model/CloudScreen;

    return-void
.end method

.method static synthetic b(Lcom/google/android/ytremote/b/e;)Lcom/google/android/ytremote/backend/logic/a;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->h:Lcom/google/android/ytremote/backend/logic/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/ytremote/b/e;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->g:Lcom/google/android/ytremote/model/CloudScreen;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/ytremote/b/e;)J
    .registers 4
    .parameter

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/ytremote/b/e;->c:I

    iget-object v1, p0, Lcom/google/android/ytremote/b/e;->f:[J

    array-length v1, v1

    if-lt v0, v1, :cond_a

    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->f:[J

    iget v1, p0, Lcom/google/android/ytremote/b/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/ytremote/b/e;->c:I

    aget-wide v0, v0, v1

    goto :goto_9
.end method

.method static synthetic e(Lcom/google/android/ytremote/b/e;)J
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/android/ytremote/b/e;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/ytremote/b/e;)Ljava/util/Timer;
    .registers 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->k:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/ytremote/b/e;)Lorg/apache/http/client/HttpClient;
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->d:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/ytremote/b/e;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/ytremote/b/e;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lcom/google/android/ytremote/logic/d;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/ytremote/b/e;->i:Lcom/google/android/ytremote/b/h;

    invoke-interface {v0}, Lcom/google/android/ytremote/b/h;->a()Lcom/google/android/ytremote/model/PairingCode;

    move-result-object v4

    .line 110
    new-instance v0, Lcom/google/android/ytremote/b/f;

    const-string v2, "Launching YouTubeTV"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/ytremote/b/f;-><init>(Lcom/google/android/ytremote/b/e;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/ytremote/logic/d;)V

    .line 150
    invoke-virtual {v0}, Lcom/google/android/ytremote/b/f;->start()V

    .line 152
    return-void
.end method
