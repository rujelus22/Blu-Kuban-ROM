.class public abstract Lcom/google/api/client/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/h;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/a;->a:J

    return-void
.end method

.method private d()J
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/api/client/http/a;->c()Z

    move-result v0

    if-nez v0, :cond_9

    .line 63
    const-wide/16 v0, -0x1

    .line 71
    :goto_8
    return-wide v0

    .line 65
    :cond_9
    new-instance v0, Lcom/google/api/client/http/e;

    invoke-direct {v0}, Lcom/google/api/client/http/e;-><init>()V

    .line 67
    :try_start_e
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/a;->a(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_17

    .line 69
    invoke-virtual {v0}, Lcom/google/api/client/http/e;->close()V

    .line 71
    iget-wide v0, v0, Lcom/google/api/client/http/e;->a:J

    goto :goto_8

    .line 69
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Lcom/google/api/client/http/e;->close()V

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()J
    .registers 5

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/api/client/http/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 46
    invoke-direct {p0}, Lcom/google/api/client/http/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/a;->a:J

    .line 48
    :cond_e
    iget-wide v0, p0, Lcom/google/api/client/http/a;->a:J

    return-wide v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
