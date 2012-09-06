.class final Lcom/google/android/youtube/core/async/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/l;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Exception;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/ax;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/l;Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/l;

    .line 85
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ax;->b:Ljava/lang/Object;

    .line 86
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ax;->d:Ljava/lang/Exception;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ax;->c:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ax;->e:Z

    .line 89
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/async/l;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/l;

    .line 77
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ax;->b:Ljava/lang/Object;

    .line 78
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ax;->c:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ax;->d:Ljava/lang/Exception;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ax;->e:Z

    .line 81
    return-void
.end method

.method public final run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ax;->e:Z

    if-eqz v0, :cond_1d

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ax;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ax;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :goto_e
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/l;

    .line 98
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ax;->b:Ljava/lang/Object;

    .line 99
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ax;->c:Ljava/lang/Object;

    .line 100
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ax;->d:Ljava/lang/Exception;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ax;->e:Z

    .line 102
    invoke-static {p0}, Lcom/google/android/youtube/core/async/aw;->a(Lcom/google/android/youtube/core/async/ax;)V

    .line 103
    return-void

    .line 95
    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ax;->a:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ax;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ax;->d:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_e
.end method
