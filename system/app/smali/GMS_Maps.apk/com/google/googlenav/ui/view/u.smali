.class public Lcom/google/googlenav/ui/view/u;
.super Lcom/google/googlenav/ui/view/p;
.source "SourceFile"


# instance fields
.field public h:Lcom/google/googlenav/ui/view/t;

.field public final i:[Lcom/google/googlenav/ui/aW;

.field public j:Lcom/google/googlenav/ui/view/v;

.field public k:Lcom/google/googlenav/ui/view/x;

.field public final l:Ljava/util/Vector;

.field public final m:Lcom/google/googlenav/ui/bd;

.field public final n:Lcom/google/googlenav/ui/view/C;

.field public o:Lcom/google/googlenav/ui/bd;

.field public p:Lcom/google/googlenav/ui/view/v;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field protected x:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/googlenav/ui/view/t;Ljava/util/Vector;Lcom/google/googlenav/ui/view/v;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/ui/view/u;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/view/t;[Lcom/google/googlenav/ui/aW;Ljava/util/Vector;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/C;Lcom/google/googlenav/ui/view/v;Lcom/google/googlenav/ui/view/v;Lcom/google/googlenav/ui/view/x;)V

    .line 475
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/google/googlenav/ui/view/t;[Lcom/google/googlenav/ui/aW;Ljava/util/Vector;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/C;Lcom/google/googlenav/ui/view/v;Lcom/google/googlenav/ui/view/v;Lcom/google/googlenav/ui/view/x;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/ui/view/p;-><init>(IILjava/lang/String;)V

    .line 420
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/view/u;->q:I

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/u;->r:Z

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/u;->s:Z

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/u;->t:Z

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/u;->u:Z

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/u;->v:Z

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/u;->w:I

    .line 494
    iput-object p3, p0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    .line 495
    iput-object p4, p0, Lcom/google/googlenav/ui/view/u;->i:[Lcom/google/googlenav/ui/aW;

    .line 496
    iput-object p9, p0, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    .line 497
    if-eqz p5, :cond_49

    .line 498
    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v1

    .line 499
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/u;->l:Ljava/util/Vector;

    .line 500
    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v1, :cond_3b

    .line 501
    iget-object v2, p0, Lcom/google/googlenav/ui/view/u;->l:Ljava/util/Vector;

    invoke-virtual {p5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 503
    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/u;->x:Z

    .line 508
    :goto_3e
    iput-object p6, p0, Lcom/google/googlenav/ui/view/u;->m:Lcom/google/googlenav/ui/bd;

    .line 509
    iput-object p7, p0, Lcom/google/googlenav/ui/view/u;->o:Lcom/google/googlenav/ui/bd;

    .line 510
    iput-object p8, p0, Lcom/google/googlenav/ui/view/u;->n:Lcom/google/googlenav/ui/view/C;

    .line 511
    iput-object p10, p0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    .line 512
    iput-object p11, p0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    .line 513
    return-void

    .line 505
    :cond_49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/u;->l:Ljava/util/Vector;

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/u;->x:Z

    goto :goto_3e
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/bd;
    .registers 3
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/googlenav/ui/view/u;->l:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/googlenav/ui/view/u;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 640
    iget v0, p0, Lcom/google/googlenav/ui/view/u;->c:I

    sparse-switch v0, :sswitch_data_a

    .line 645
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 643
    :sswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 640
    nop

    :sswitch_data_a
    .sparse-switch
        0x0 -> :sswitch_7
        0xb -> :sswitch_7
    .end sparse-switch
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/googlenav/ui/view/u;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->c:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/googlenav/ui/view/u;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->e:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/googlenav/ui/view/u;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->d:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
