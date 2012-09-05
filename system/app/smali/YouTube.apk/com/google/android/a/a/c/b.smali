.class public final Lcom/google/android/a/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/a/a/c/c;

.field private c:Lcom/google/android/a/a/c/d;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/c/b;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/a/a/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/a/a/c/b;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/a/a/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/a/a/c/b;)Lcom/google/android/a/a/c/c;
    .registers 2
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/a/a/c/b;->b:Lcom/google/android/a/a/c/c;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/a/a/c/b;)Lcom/google/android/a/a/c/d;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/a/a/c/b;->c:Lcom/google/android/a/a/c/d;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/a/a/c/a;
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/a/a/c/a;

    invoke-direct {v0, p0}, Lcom/google/android/a/a/c/a;-><init>(Lcom/google/android/a/a/c/b;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/a/a/c/c;)Lcom/google/android/a/a/c/b;
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/a/a/c/b;->b:Lcom/google/android/a/a/c/c;

    .line 40
    return-object p0
.end method

.method public final a(Lcom/google/android/a/a/c/d;)Lcom/google/android/a/a/c/b;
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/a/a/c/b;->c:Lcom/google/android/a/a/c/d;

    .line 45
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/a/a/c/b;
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/a/a/c/b;->d:Ljava/lang/String;

    .line 50
    return-object p0
.end method
