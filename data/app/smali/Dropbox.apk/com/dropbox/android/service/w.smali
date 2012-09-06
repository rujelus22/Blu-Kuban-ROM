.class public final Lcom/dropbox/android/service/w;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(ZZZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/dropbox/android/service/w;->a:Z

    .line 23
    iput-boolean p2, p0, Lcom/dropbox/android/service/w;->b:Z

    .line 24
    iput-boolean p3, p0, Lcom/dropbox/android/service/w;->c:Z

    .line 25
    iput-boolean p4, p0, Lcom/dropbox/android/service/w;->d:Z

    .line 26
    return-void
.end method

.method synthetic constructor <init>(ZZZZLcom/dropbox/android/service/u;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/android/service/w;-><init>(ZZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/service/w;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/dropbox/android/service/w;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/dropbox/android/service/w;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/dropbox/android/service/w;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/dropbox/android/service/w;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/dropbox/android/service/w;->c:Z

    return p1
.end method

.method static synthetic d(Lcom/dropbox/android/service/w;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/dropbox/android/service/w;->d:Z

    return p1
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dropbox/android/service/w;->a:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/dropbox/android/service/w;->b:Z

    return v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dropbox/android/service/w;->c:Z

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dropbox/android/service/w;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    if-eqz p1, :cond_22

    instance-of v1, p1, Lcom/dropbox/android/service/w;

    if-eqz v1, :cond_22

    .line 47
    check-cast p1, Lcom/dropbox/android/service/w;

    .line 48
    iget-boolean v1, p0, Lcom/dropbox/android/service/w;->a:Z

    iget-boolean v2, p1, Lcom/dropbox/android/service/w;->a:Z

    if-ne v1, v2, :cond_22

    iget-boolean v1, p0, Lcom/dropbox/android/service/w;->b:Z

    iget-boolean v2, p1, Lcom/dropbox/android/service/w;->b:Z

    if-ne v1, v2, :cond_22

    iget-boolean v1, p0, Lcom/dropbox/android/service/w;->c:Z

    iget-boolean v2, p1, Lcom/dropbox/android/service/w;->c:Z

    if-ne v1, v2, :cond_22

    iget-boolean v1, p0, Lcom/dropbox/android/service/w;->d:Z

    iget-boolean v2, p1, Lcom/dropbox/android/service/w;->d:Z

    if-ne v1, v2, :cond_22

    const/4 v0, 0x1

    .line 53
    :cond_22
    return v0
.end method
