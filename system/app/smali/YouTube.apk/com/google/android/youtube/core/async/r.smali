.class public final Lcom/google/android/youtube/core/async/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# static fields
.field private static final a:Lcom/google/android/youtube/core/utils/l;


# instance fields
.field private final b:Lcom/google/android/youtube/core/async/ad;

.field private final c:Lcom/google/android/youtube/core/async/ad;

.field private final d:Lcom/google/android/youtube/core/utils/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/youtube/core/async/s;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/s;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/async/r;->a:Lcom/google/android/youtube/core/utils/l;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/youtube/core/async/r;->a:Lcom/google/android/youtube/core/utils/l;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/async/r;-><init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/utils/l;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/utils/l;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/r;->b:Lcom/google/android/youtube/core/async/ad;

    .line 37
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/r;->c:Lcom/google/android/youtube/core/async/ad;

    .line 38
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/r;->d:Lcom/google/android/youtube/core/utils/l;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/r;)Lcom/google/android/youtube/core/utils/l;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/r;->d:Lcom/google/android/youtube/core/utils/l;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/r;)Lcom/google/android/youtube/core/async/ad;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/r;->c:Lcom/google/android/youtube/core/async/ad;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/core/async/r;->b:Lcom/google/android/youtube/core/async/ad;

    new-instance v1, Lcom/google/android/youtube/core/async/t;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/t;-><init>(Lcom/google/android/youtube/core/async/r;Lcom/google/android/youtube/core/async/g;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 47
    return-void
.end method
