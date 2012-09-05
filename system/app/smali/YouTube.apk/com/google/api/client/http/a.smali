.class public abstract Lcom/google/api/client/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/g;


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
    const-wide/16 v0, -0x1

    .line 45
    iget-wide v2, p0, Lcom/google/api/client/http/a;->a:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_10

    .line 46
    invoke-virtual {p0}, Lcom/google/api/client/http/a;->c()Z

    move-result v2

    if-nez v2, :cond_13

    :goto_e
    iput-wide v0, p0, Lcom/google/api/client/http/a;->a:J

    .line 48
    :cond_10
    iget-wide v0, p0, Lcom/google/api/client/http/a;->a:J

    return-wide v0

    .line 46
    :cond_13
    new-instance v0, Lcom/google/api/client/http/d;

    invoke-direct {v0}, Lcom/google/api/client/http/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/a;->a(Ljava/io/OutputStream;)V

    iget-wide v0, v0, Lcom/google/api/client/http/d;->a:J

    goto :goto_e
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
