.class final Lcom/google/android/youtube/core/async/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/o;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/youtube/core/async/l;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/o;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/google/android/youtube/core/async/p;->b:Ljava/lang/Object;

    .line 122
    iput-object p3, p0, Lcom/google/android/youtube/core/async/p;->c:Ljava/lang/Object;

    .line 123
    iput-object p4, p0, Lcom/google/android/youtube/core/async/p;->d:Lcom/google/android/youtube/core/async/l;

    .line 124
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->d:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/p;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 144
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p2, p0, Lcom/google/android/youtube/core/async/p;->e:Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/o;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/o;->a(Lcom/google/android/youtube/core/async/o;)Lcom/google/android/youtube/core/converter/b;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/o;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/o;->b(Lcom/google/android/youtube/core/async/o;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/o;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/o;->b(Lcom/google/android/youtube/core/async/o;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    :goto_1b
    return-void

    .line 132
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/p;->run()V

    goto :goto_1b

    .line 138
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->d:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/p;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public final run()V
    .registers 6

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/o;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/o;->a(Lcom/google/android/youtube/core/async/o;)Lcom/google/android/youtube/core/converter/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/p;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/converter/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/google/android/youtube/core/async/p;->d:Lcom/google/android/youtube/core/async/l;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/p;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_13} :catch_21

    .line 155
    :goto_13
    return-void

    .line 150
    :catch_14
    move-exception v0

    .line 151
    iget-object v1, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/o;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/p;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/p;->c:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/p;->d:Lcom/google/android/youtube/core/async/l;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/youtube/core/async/o;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;Ljava/lang/Exception;)V

    goto :goto_13

    .line 152
    :catch_21
    move-exception v0

    .line 153
    iget-object v1, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/o;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/p;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/p;->c:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/p;->d:Lcom/google/android/youtube/core/async/l;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/youtube/core/async/o;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;Ljava/lang/Exception;)V

    goto :goto_13
.end method
