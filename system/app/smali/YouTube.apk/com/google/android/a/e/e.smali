.class public final Lcom/google/android/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/a/e/d;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/a/e/b;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/e/c;)V
    .registers 4
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/android/a/e/c;->a(Lcom/google/android/a/e/c;)Lcom/google/android/a/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/e;->a:Lcom/google/android/a/e/d;

    .line 44
    invoke-static {p1}, Lcom/google/android/a/e/c;->b(Lcom/google/android/a/e/c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/e/e;->b:J

    .line 45
    invoke-static {p1}, Lcom/google/android/a/e/c;->c(Lcom/google/android/a/e/c;)Lcom/google/android/a/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/e;->d:Lcom/google/android/a/e/b;

    .line 46
    invoke-static {p1}, Lcom/google/android/a/e/c;->d(Lcom/google/android/a/e/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/e;->e:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/google/android/a/e/c;->e(Lcom/google/android/a/e/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/e;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/google/android/a/e/e;)Lcom/google/android/a/e/d;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/a/e/e;->a:Lcom/google/android/a/e/d;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/a/e/e;)J
    .registers 3
    .parameter

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/a/e/e;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/a/e/e;)Lcom/google/android/a/e/b;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/a/e/e;->d:Lcom/google/android/a/e/b;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/a/e/e;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/a/e/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/a/e/e;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/a/e/e;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/a/e/c;
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/a/e/c;

    invoke-direct {v0, p0}, Lcom/google/android/a/e/c;-><init>(Lcom/google/android/a/e/e;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/a/e/e;
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/a/e/e;->c:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/a/e/e;
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/a/e/e;->e:Ljava/lang/String;

    .line 76
    return-object p0
.end method
