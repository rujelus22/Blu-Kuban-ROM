.class public Lac/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/d;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/g;

.field private final b:Ljava/lang/String;

.field private final c:Lac/s;

.field private volatile d:Z

.field private e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/g;Ljava/lang/String;Lac/s;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lac/r;->d:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lac/r;->e:Ljava/lang/Thread;

    .line 70
    iput-object p1, p0, Lac/r;->a:Lcom/google/googlenav/common/io/g;

    .line 71
    iput-object p2, p0, Lac/r;->b:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lac/r;->c:Lac/s;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lac/s;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->l()Lcom/google/googlenav/common/io/g;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lac/r;-><init>(Lcom/google/googlenav/common/io/g;Ljava/lang/String;Lac/s;)V

    .line 63
    return-void
.end method


# virtual methods
.method public Z()V
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lac/r;->d:Z

    .line 93
    iget-object v0, p0, Lac/r;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 94
    return-void
.end method

.method public a()V
    .registers 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lac/r;->e:Ljava/lang/Thread;

    .line 82
    iget-object v0, p0, Lac/r;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 103
    .line 105
    :try_start_0
    iget-object v0, p0, Lac/r;->a:Lcom/google/googlenav/common/io/g;

    iget-object v1, p0, Lac/r;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/common/io/i;->a(Lcom/google/googlenav/common/io/g;Ljava/lang/String;Ljava/util/Vector;II)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_23

    move-result-object v0

    .line 114
    iget-object v1, p0, Lac/r;->c:Lac/s;

    if-eqz v1, :cond_22

    .line 115
    iget-boolean v1, p0, Lac/r;->d:Z

    if-eqz v1, :cond_30

    .line 116
    iget-object v0, p0, Lac/r;->c:Lac/s;

    iget-object v1, p0, Lac/r;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/InterruptedException;

    const-string v3, "Cancelled"

    invoke-direct {v2, v3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lac/s;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    :cond_22
    :goto_22
    return-void

    .line 106
    :catch_23
    move-exception v0

    .line 108
    iget-object v1, p0, Lac/r;->c:Lac/s;

    if-eqz v1, :cond_22

    .line 109
    iget-object v1, p0, Lac/r;->c:Lac/s;

    iget-object v2, p0, Lac/r;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lac/s;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_22

    .line 118
    :cond_30
    iget-object v1, p0, Lac/r;->c:Lac/s;

    iget-object v2, p0, Lac/r;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lac/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
