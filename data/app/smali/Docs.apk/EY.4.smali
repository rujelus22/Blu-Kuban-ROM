.class public final LEY;
.super Ljava/lang/Object;
.source "EvaluableOffsetList.java"

# interfaces
.implements LFq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:LFa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFa",
            "<-TT;TV;>;"
        }
    .end annotation
.end field

.field private final a:LFc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LEY;-><init>(LFa;)V

    .line 476
    return-void
.end method

.method public constructor <init>(LFa;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFa",
            "<-TT;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, LFc;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, v2}, LFc;-><init>(Ljava/lang/Object;ILEZ;)V

    iput-object v0, p0, LEY;->a:LFc;

    .line 483
    iget-object v0, p0, LEY;->a:LFc;

    iget-object v1, p0, LEY;->a:LFc;

    invoke-static {v0, v1}, LFc;->a(LFc;LFc;)LFc;

    .line 484
    iget-object v0, p0, LEY;->a:LFc;

    iget-object v1, p0, LEY;->a:LFc;

    invoke-static {v0, v1}, LFc;->b(LFc;LFc;)LFc;

    .line 485
    iput-object p1, p0, LEY;->a:LFa;

    .line 486
    return-void
.end method

.method static synthetic a(LFc;)I
    .registers 2
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, LEY;->b(LFc;)I

    move-result v0

    return v0
.end method

.method static synthetic a(LEY;)LFc;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, LEY;->a:LFc;

    return-object v0
.end method

.method private static b(LFc;)I
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFc",
            "<TT;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 585
    if-nez p0, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, LFc;->c(LFc;)I

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, LEY;->a:LFc;

    invoke-static {v0}, LFc;->a(LFc;)I

    move-result v0

    return v0
.end method

.method public a()LFb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, LEY;->a:LFc;

    invoke-static {v0}, LFc;->a(LFc;)LFc;

    move-result-object v0

    return-object v0
.end method

.method public a(ILFs;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "LFs",
            "<TT;TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, LEY;->a:LFc;

    .line 501
    :goto_2
    if-eqz v0, :cond_2b

    .line 502
    invoke-static {v0}, LFc;->a(LFc;)I

    move-result v1

    if-ge p1, v1, :cond_f

    .line 503
    invoke-static {v0}, LFc;->b(LFc;)LFc;

    move-result-object v0

    goto :goto_2

    .line 505
    :cond_f
    invoke-static {v0}, LFc;->a(LFc;)I

    move-result v1

    sub-int v1, p1, v1

    .line 506
    invoke-static {v0}, LFc;->b(LFc;)I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 507
    invoke-interface {p2, v0, v1}, LFs;->a(LFr;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 509
    :cond_20
    invoke-static {v0}, LFc;->b(LFc;)I

    move-result v2

    sub-int p1, v1, v2

    .line 510
    invoke-static {v0}, LFc;->c(LFc;)LFc;

    move-result-object v0

    goto :goto_2

    .line 513
    :cond_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LEY;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()LFb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, LEY;->a:LFc;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, LEZ;

    invoke-direct {v0, p0}, LEZ;-><init>(LEY;)V

    return-object v0
.end method
