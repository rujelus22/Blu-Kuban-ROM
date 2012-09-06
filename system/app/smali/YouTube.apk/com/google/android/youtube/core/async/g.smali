.class final Lcom/google/android/youtube/core/async/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/l;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/android/youtube/core/async/f;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/f;Lcom/google/android/youtube/core/async/l;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/youtube/core/async/g;->c:Lcom/google/android/youtube/core/async/f;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/g;->a:Lcom/google/android/youtube/core/async/l;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/g;->d:Z

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/android/youtube/core/async/g;->c:Lcom/google/android/youtube/core/async/f;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/f;->a(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->a(Ljava/lang/Object;Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/g;->d:Z

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/async/g;->c:Lcom/google/android/youtube/core/async/f;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/f;->a(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/h;->a(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_68

    .line 87
    const-class v3, Lcom/google/android/youtube/core/async/f;

    monitor-enter v3

    .line 89
    :try_start_22
    iget-object v0, p0, Lcom/google/android/youtube/core/async/g;->c:Lcom/google/android/youtube/core/async/f;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/f;->b(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/async/a;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/async/g;->c:Lcom/google/android/youtube/core/async/f;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/f;->b(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/a;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v1

    .line 91
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_65

    .line 92
    if-eqz v1, :cond_68

    .line 94
    iget-object v0, v2, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 95
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    .line 98
    :goto_4f
    iget-object v1, p0, Lcom/google/android/youtube/core/async/g;->c:Lcom/google/android/youtube/core/async/f;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/f;->a(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/h;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/async/h;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_68

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/core/async/g;->c:Lcom/google/android/youtube/core/async/f;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/f;->c(Lcom/google/android/youtube/core/async/f;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    .line 107
    :goto_64
    return-void

    .line 91
    :catchall_65
    move-exception v0

    monitor-exit v3

    throw v0

    .line 106
    :cond_68
    iget-object v0, p0, Lcom/google/android/youtube/core/async/g;->a:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_64

    :cond_70
    move-object v0, v1

    goto :goto_4f
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/async/g;->a:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method
