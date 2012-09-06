.class LyA;
.super Ljava/lang/Object;
.source "SpanList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "LFr",
        "<",
        "LyD",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field a:LFr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic a:Lyu;


# direct methods
.method private constructor <init>(Lyu;LFr;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    iput-object p1, p0, LyA;->a:Lyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, LyA;->a:LFr;

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lyu;LFr;Lyv;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, LyA;-><init>(Lyu;LFr;)V

    return-void
.end method


# virtual methods
.method public a()LFr;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, LyA;->a:LFr;

    .line 254
    iget-object v1, p0, LyA;->a:LFr;

    invoke-interface {v1}, LFr;->a()LFr;

    move-result-object v1

    iput-object v1, p0, LyA;->a:LFr;

    .line 255
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, LyA;->a:LFr;

    iget-object v1, p0, LyA;->a:Lyu;

    invoke-static {v1}, Lyu;->a(Lyu;)LEY;

    move-result-object v1

    invoke-virtual {v1}, LEY;->b()LFb;

    move-result-object v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 239
    invoke-virtual {p0}, LyA;->a()LFr;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
