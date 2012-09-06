.class LwQ;
.super Ljava/lang/Object;
.source "DocumentWalker.java"

# interfaces
.implements Lyz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyz",
        "<",
        "LyD",
        "<",
        "LBm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:LAV;

.field final synthetic a:LwM;

.field final synthetic b:I


# direct methods
.method constructor <init>(LwM;IILAV;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, LwQ;->a:LwM;

    iput p2, p0, LwQ;->a:I

    iput p3, p0, LwQ;->b:I

    iput-object p4, p0, LwQ;->a:LAV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LFr;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LyD",
            "<",
            "LBm;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 320
    invoke-interface {p1}, LFr;->a()I

    move-result v0

    iget v1, p0, LwQ;->a:I

    iget v2, p0, LwQ;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_18

    invoke-interface {p1}, LFr;->a()I

    move-result v0

    invoke-interface {p1}, LFr;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, LwQ;->a:I

    if-gt v0, v1, :cond_1a

    .line 322
    :cond_18
    const/4 v0, 0x1

    .line 325
    :goto_19
    return v0

    :cond_1a
    iget-object v1, p0, LwQ;->a:LAV;

    invoke-interface {p1}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    invoke-interface {v0}, LyD;->a()LBj;

    move-result-object v0

    check-cast v0, LBm;

    invoke-virtual {v1, v0}, LAV;->a(LBm;)Z

    move-result v0

    goto :goto_19
.end method
