.class public final Lcom/google/android/ytremote/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Landroid/net/Uri;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/ytremote/model/SsdpId;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ytremote/model/c;->d:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/google/android/ytremote/model/b;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ytremote/model/c;->d:Z

    .line 31
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->a(Lcom/google/android/ytremote/model/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/c;->c:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->b(Lcom/google/android/ytremote/model/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/c;->g:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->c(Lcom/google/android/ytremote/model/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/c;->h:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->d(Lcom/google/android/ytremote/model/b;)Lcom/google/android/ytremote/model/SsdpId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/c;->i:Lcom/google/android/ytremote/model/SsdpId;

    .line 35
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->e(Lcom/google/android/ytremote/model/b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/c;->b:Landroid/net/Uri;

    .line 36
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->f(Lcom/google/android/ytremote/model/b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/c;->f:Landroid/net/Uri;

    .line 37
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->g(Lcom/google/android/ytremote/model/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/ytremote/model/c;->e:Z

    .line 38
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->h(Lcom/google/android/ytremote/model/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/ytremote/model/c;->a:I

    .line 39
    invoke-static {p1}, Lcom/google/android/ytremote/model/b;->i(Lcom/google/android/ytremote/model/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/ytremote/model/c;->d:Z

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/model/c;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/ytremote/model/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/ytremote/model/c;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/ytremote/model/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/ytremote/model/c;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/ytremote/model/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/ytremote/model/c;)Lcom/google/android/ytremote/model/SsdpId;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/ytremote/model/c;->i:Lcom/google/android/ytremote/model/SsdpId;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/ytremote/model/c;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/ytremote/model/c;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/ytremote/model/c;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/ytremote/model/c;->f:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/ytremote/model/c;)Z
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/ytremote/model/c;->e:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/ytremote/model/c;)I
    .registers 2
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/google/android/ytremote/model/c;->a:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/ytremote/model/c;)Z
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/ytremote/model/c;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/ytremote/model/b;
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/ytremote/model/b;

    invoke-direct {v0, p0}, Lcom/google/android/ytremote/model/b;-><init>(Lcom/google/android/ytremote/model/c;)V

    return-object v0
.end method

.method public final a(I)Lcom/google/android/ytremote/model/c;
    .registers 3
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/ytremote/model/c;->a:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/ytremote/model/c;->d:Z

    .line 49
    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Lcom/google/android/ytremote/model/c;
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/ytremote/model/c;->b:Landroid/net/Uri;

    .line 54
    return-object p0
.end method

.method public final a(Lcom/google/android/ytremote/model/SsdpId;)Lcom/google/android/ytremote/model/c;
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/ytremote/model/c;->i:Lcom/google/android/ytremote/model/SsdpId;

    .line 84
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/ytremote/model/c;
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/ytremote/model/c;->c:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/ytremote/model/c;
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/android/ytremote/model/c;->e:Z

    .line 64
    return-object p0
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/android/ytremote/model/c;
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/ytremote/model/c;->f:Landroid/net/Uri;

    .line 69
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/ytremote/model/c;
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/ytremote/model/c;->g:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/ytremote/model/c;
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/ytremote/model/c;->h:Ljava/lang/String;

    .line 79
    return-object p0
.end method
