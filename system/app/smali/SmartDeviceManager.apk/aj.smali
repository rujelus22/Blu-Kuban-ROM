.class public abstract Laj;
.super Lag;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        "RequestType::",
        "Lep",
        "<TResponseType;>;>",
        "Lag",
        "<TResponseType;TRequestType;>;"
    }
.end annotation


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
    .line 32
    invoke-direct/range {p0 .. p5}, Lag;-><init>(Lep;Lz;Lea;Lda;Lcq;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lz;Lea;Lda;Lcq;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lag;-><init>(Ljava/lang/String;Ljava/lang/String;Lz;Lea;Lda;Lcq;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/locationlabs/v3client/AccountService;->b(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p1}, Laj;->c(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method protected final a(Landroid/content/Context;Ldl;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p2}, Ldl;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {p0, p1, p2}, Laj;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 50
    :goto_9
    return-void

    .line 47
    :cond_a
    invoke-virtual {p0, p1}, Laj;->c(Landroid/content/Context;)V

    goto :goto_9
.end method

.method protected final a(Landroid/content/Context;Ljava/io/IOException;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Laj;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 65
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/IllegalArgumentException;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Laj;->c(Landroid/content/Context;)V

    .line 70
    const-string v0, ""

    invoke-static {v0, p2}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method
