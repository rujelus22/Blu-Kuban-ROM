.class public abstract Lag;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        "RequestType::",
        "Lep",
        "<TResponseType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestType;"
        }
    .end annotation
.end field

.field protected b:Lz;

.field private c:Lea;

.field private d:Lda;

.field private e:Lcq;


# direct methods
.method public constructor <init>(Lep;Lz;Lea;Lda;Lcq;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;",
            "Lz;",
            "Lea;",
            "Lda;",
            "Lcq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lag;->a:Lep;

    .line 36
    iput-object p3, p0, Lag;->c:Lea;

    .line 37
    iput-object p4, p0, Lag;->d:Lda;

    .line 38
    iput-object p5, p0, Lag;->e:Lcq;

    .line 39
    iput-object p2, p0, Lag;->b:Lz;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lz;Lea;Lda;Lcq;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p4, p0, Lag;->c:Lea;

    .line 44
    iput-object p5, p0, Lag;->d:Lda;

    .line 45
    iput-object p6, p0, Lag;->e:Lcq;

    .line 54
    iput-object p3, p0, Lag;->b:Lz;

    .line 55
    invoke-virtual {p0, p1, p2}, Lag;->a(Ljava/lang/String;Ljava/lang/String;)Lep;

    move-result-object v0

    iput-object v0, p0, Lag;->a:Lep;

    .line 56
    return-void
.end method


# virtual methods
.method protected final a()Lep;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestType;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lag;->a:Lep;

    return-object v0
.end method

.method abstract a(Ljava/lang/String;Ljava/lang/String;)Lep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TRequestType;"
        }
    .end annotation
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method protected abstract a(Landroid/content/Context;Ldl;)V
.end method

.method protected abstract a(Landroid/content/Context;Ljava/io/IOException;)V
.end method

.method public a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, ""

    .line 72
    iget-object v1, p0, Lag;->a:Lep;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lag;->a:Lep;

    invoke-interface {v0}, Lep;->c()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_c
    iget-object v1, p0, Lag;->b:Lz;

    invoke-virtual {p0, p1}, Lag;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0, p2}, Lz;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Exception;)J

    move-result-wide v0

    .line 75
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3f

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t send to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lag;->b:Lz;

    invoke-virtual {v1}, Lz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max retries exceeded, will not retry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    .line 81
    :goto_3e
    return-void

    .line 79
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t send to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lag;->b:Lz;

    invoke-virtual {v3}, Lz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", will retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/IllegalArgumentException;)V
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TResponseType;)V"
        }
    .end annotation
.end method

.method protected abstract b(Landroid/content/Context;)Landroid/app/PendingIntent;
.end method

.method protected final b()Lz;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lag;->b:Lz;

    return-object v0
.end method

.method protected final c(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lag;->b:Lz;

    invoke-virtual {v0, p1}, Lz;->b(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lag;->a:Lep;

    if-nez v0, :cond_8

    .line 97
    invoke-virtual {p0, p1}, Lag;->c(Landroid/content/Context;)V

    .line 114
    :goto_7
    return-void

    .line 100
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Lag;->e(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lag;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0, p1}, Lag;->c(Landroid/content/Context;)V
    :try_end_12
    .catch Ldl$b; {:try_start_8 .. :try_end_12} :catch_13
    .catch Ldl; {:try_start_8 .. :try_end_12} :catch_18
    .catch Leq; {:try_start_8 .. :try_end_12} :catch_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_22

    goto :goto_7

    .line 103
    :catch_13
    move-exception v0

    invoke-virtual {p0, p1}, Lag;->a(Landroid/content/Context;)V

    goto :goto_7

    .line 104
    :catch_18
    move-exception v0

    .line 105
    invoke-virtual {p0, p1, v0}, Lag;->a(Landroid/content/Context;Ldl;)V

    goto :goto_7

    .line 108
    :catch_1d
    move-exception v0

    .line 109
    invoke-virtual {p0, p1, v0}, Lag;->a(Landroid/content/Context;Ljava/io/IOException;)V

    goto :goto_7

    .line 110
    :catch_22
    move-exception v0

    .line 111
    invoke-virtual {p0, p1, v0}, Lag;->a(Landroid/content/Context;Ljava/lang/IllegalArgumentException;)V

    goto :goto_7

    .line 107
    :catch_27
    move-exception v0

    goto :goto_7
.end method

.method public e(Landroid/content/Context;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TResponseType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lag;->b:Lz;

    if-eqz v0, :cond_27

    move v0, v3

    :goto_7
    const-string v1, "Failure handler not set by the time of sending request"

    invoke-static {v0, v1}, Lj;->a(ZLjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lag;->b:Lz;

    invoke-virtual {v0}, Lz;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    move v0, v3

    :goto_15
    const-string v1, "Failure handler name not set by the time of sending request"

    invoke-static {v0, v1}, Lj;->a(ZLjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lag;->a:Lep;

    iget-object v1, p0, Lag;->c:Lea;

    iget-object v2, p0, Lag;->d:Lda;

    iget-object v3, p0, Lag;->e:Lcq;

    invoke-interface {v0, v1, v2, v3}, Lep;->a(Lea;Lda;Lcq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_27
    move v0, v2

    .line 117
    goto :goto_7

    :cond_29
    move v0, v2

    .line 119
    goto :goto_15
.end method
