.class final Lcom/google/android/youtube/core/transfer/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/youtube/core/model/UserAuth;

.field private d:Lcom/google/android/youtube/core/model/Video$Privacy;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/util/Pair;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/android/youtube/core/transfer/b;


# direct methods
.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/t;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Lcom/google/android/youtube/core/transfer/b;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->k:Lcom/google/android/youtube/core/transfer/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/t;Landroid/util/Pair;)Landroid/util/Pair;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->i:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/t;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->c:Lcom/google/android/youtube/core/model/UserAuth;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/t;Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Privacy;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->d:Lcom/google/android/youtube/core/model/Video$Privacy;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/t;)Lcom/google/android/youtube/core/transfer/b;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->k:Lcom/google/android/youtube/core/transfer/b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/t;Lcom/google/android/youtube/core/transfer/b;)Lcom/google/android/youtube/core/transfer/b;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->k:Lcom/google/android/youtube/core/transfer/b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/google/android/youtube/core/transfer/t;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->c:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/google/android/youtube/core/transfer/t;)Lcom/google/android/youtube/core/model/Video$Privacy;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->d:Lcom/google/android/youtube/core/model/Video$Privacy;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/transfer/t;)Landroid/util/Pair;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->i:Landroid/util/Pair;

    return-object v0
.end method
