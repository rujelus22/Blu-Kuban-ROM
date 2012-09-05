.class public Lcom/google/android/youtube/core/async/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ad;

.field private final b:Lcom/google/android/youtube/core/converter/a;

.field private final c:Lcom/google/android/youtube/core/converter/b;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;Ljava/util/concurrent/Executor;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "requester may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/ad;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/j;->b:Lcom/google/android/youtube/core/converter/a;

    .line 42
    iput-object p3, p0, Lcom/google/android/youtube/core/async/j;->c:Lcom/google/android/youtube/core/converter/b;

    .line 43
    iput-object p4, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/concurrent/Executor;

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/ad;

    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/core/async/j;->b:Lcom/google/android/youtube/core/converter/a;

    .line 56
    iput-object p2, p0, Lcom/google/android/youtube/core/async/j;->c:Lcom/google/android/youtube/core/converter/b;

    .line 57
    iput-object v0, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/concurrent/Executor;

    .line 58
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/converter/b;Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/async/ad;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    const-string v0, "responseConverter may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "executor may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Lcom/google/android/youtube/core/async/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/youtube/core/async/j;-><init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/j;)Lcom/google/android/youtube/core/converter/b;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->c:Lcom/google/android/youtube/core/converter/b;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/j;)Ljava/util/concurrent/Executor;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->b:Lcom/google/android/youtube/core/converter/a;

    if-eqz v0, :cond_13

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->b:Lcom/google/android/youtube/core/converter/a;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/converter/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    :goto_a
    new-instance v1, Lcom/google/android/youtube/core/async/k;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/youtube/core/async/k;-><init>(Lcom/google/android/youtube/core/async/j;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/async/j;->b(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    :try_end_12
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_12} :catch_15

    .line 94
    :goto_12
    return-void

    :cond_13
    move-object v0, p1

    .line 85
    goto :goto_a

    .line 91
    :catch_15
    move-exception v0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/google/android/youtube/core/async/j;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-interface {p3, p1, p4}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 111
    return-void
.end method

.method protected b(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/ad;

    const-string v1, "subclasses should override doRequest"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 99
    return-void
.end method
