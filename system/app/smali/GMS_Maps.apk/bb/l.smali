.class public Lbb/l;
.super Lbb/f;


# instance fields
.field public m:[I

.field public n:[I

.field public o:Ljava/util/Vector;

.field public final p:Lcom/google/googlenav/ui/bl;


# direct methods
.method public constructor <init>(IILjava/lang/String;[Laq/a;[I[ILjava/util/Vector;Z)V
    .registers 12

    invoke-direct {p0, p1, p2, p3, p4}, Lbb/f;-><init>(IILjava/lang/String;[Laq/a;)V

    array-length v0, p6

    array-length v1, p5

    if-eq v0, v1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "optionValues"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p7}, Ljava/util/Vector;->size()I

    move-result v0

    array-length v1, p5

    if-eq v0, v1, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "optionsContent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iput-object p5, p0, Lbb/l;->m:[I

    iput-object p6, p0, Lbb/l;->n:[I

    iput-object p7, p0, Lbb/l;->o:Ljava/util/Vector;

    if-eqz p8, :cond_48

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x4e8

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0xdd

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    :goto_45
    iput-object v0, p0, Lbb/l;->p:Lcom/google/googlenav/ui/bl;

    return-void

    :cond_48
    const/4 v0, 0x0

    goto :goto_45
.end method
