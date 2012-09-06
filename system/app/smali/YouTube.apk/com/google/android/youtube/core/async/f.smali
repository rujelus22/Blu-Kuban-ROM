.class public final Lcom/google/android/youtube/core/async/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ar;

.field private final b:Lcom/google/android/youtube/core/async/a;

.field private final c:Lcom/google/android/youtube/core/async/h;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/h;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/ar;

    .line 63
    iput-object p2, p0, Lcom/google/android/youtube/core/async/f;->b:Lcom/google/android/youtube/core/async/a;

    .line 64
    iput-object p3, p0, Lcom/google/android/youtube/core/async/f;->c:Lcom/google/android/youtube/core/async/h;

    .line 65
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/h;)Lcom/google/android/youtube/core/async/f;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/youtube/core/async/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/core/async/f;-><init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/h;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/h;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->c:Lcom/google/android/youtube/core/async/h;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/a;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->b:Lcom/google/android/youtube/core/async/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/ar;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/ar;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/ar;

    new-instance v1, Lcom/google/android/youtube/core/async/g;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/youtube/core/async/g;-><init>(Lcom/google/android/youtube/core/async/f;Lcom/google/android/youtube/core/async/l;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 110
    return-void
.end method
