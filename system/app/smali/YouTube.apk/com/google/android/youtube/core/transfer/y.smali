.class final Lcom/google/android/youtube/core/transfer/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/youtube/core/model/UserAuth;

.field private e:Lcom/google/android/youtube/core/model/Video$Privacy;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/util/Pair;

.field private k:Ljava/lang/String;

.field private l:Lcom/google/android/youtube/core/transfer/d;

.field private m:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->l:Lcom/google/android/youtube/core/transfer/d;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/y;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/y;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->a:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/y;Landroid/util/Pair;)Landroid/util/Pair;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->j:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/y;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->d:Lcom/google/android/youtube/core/model/UserAuth;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/y;Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Privacy;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->e:Lcom/google/android/youtube/core/model/Video$Privacy;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/y;)Lcom/google/android/youtube/core/transfer/d;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->l:Lcom/google/android/youtube/core/transfer/d;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/y;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/transfer/d;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->l:Lcom/google/android/youtube/core/transfer/d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/y;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/google/android/youtube/core/transfer/y;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/y;)Z
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/y;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/google/android/youtube/core/transfer/y;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->d:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/google/android/youtube/core/transfer/y;)Lcom/google/android/youtube/core/model/Video$Privacy;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->e:Lcom/google/android/youtube/core/model/Video$Privacy;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/y;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/core/transfer/y;)Landroid/util/Pair;
    .registers 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/y;->j:Landroid/util/Pair;

    return-object v0
.end method
