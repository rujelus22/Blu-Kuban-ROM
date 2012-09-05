.class public Lbb/o;
.super Lbb/f;


# instance fields
.field public h:Lbb/n;

.field public final i:[Lcom/google/googlenav/ui/bh;

.field public j:Lbb/p;

.field public k:Lbb/r;

.field public final l:Ljava/util/Vector;

.field public final m:Lcom/google/googlenav/ui/bl;

.field public final n:Lbb/y;

.field public o:Lcom/google/googlenav/ui/bl;

.field public p:Lbb/p;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field protected x:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V
    .registers 20

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v12}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/util/Vector;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/y;Lbb/p;Lbb/p;[Laq/a;Lbb/r;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/util/Vector;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/y;Lbb/p;Lbb/p;[Laq/a;Lbb/r;)V
    .registers 18

    const/4 v1, 0x1

    move-object/from16 v0, p11

    invoke-direct {p0, v1, p1, p2, v0}, Lbb/f;-><init>(IILjava/lang/String;[Laq/a;)V

    const/4 v1, 0x2

    iput v1, p0, Lbb/o;->q:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbb/o;->r:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbb/o;->s:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbb/o;->t:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbb/o;->u:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbb/o;->v:Z

    const/4 v1, 0x0

    iput v1, p0, Lbb/o;->w:I

    iput-object p3, p0, Lbb/o;->h:Lbb/n;

    iput-object p4, p0, Lbb/o;->i:[Lcom/google/googlenav/ui/bh;

    iput-object p9, p0, Lbb/o;->p:Lbb/p;

    if-eqz p5, :cond_4d

    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lbb/o;->l:Ljava/util/Vector;

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v2, :cond_3d

    iget-object v3, p0, Lbb/o;->l:Ljava/util/Vector;

    invoke-virtual {p5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbb/o;->x:Z

    :goto_40
    iput-object p6, p0, Lbb/o;->m:Lcom/google/googlenav/ui/bl;

    iput-object p7, p0, Lbb/o;->o:Lcom/google/googlenav/ui/bl;

    iput-object p8, p0, Lbb/o;->n:Lbb/y;

    iput-object p10, p0, Lbb/o;->j:Lbb/p;

    move-object/from16 v0, p12

    iput-object v0, p0, Lbb/o;->k:Lbb/r;

    return-void

    :cond_4d
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lbb/o;->l:Ljava/util/Vector;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbb/o;->x:Z

    goto :goto_40
.end method

.method public constructor <init>(Ljava/lang/String;Lbb/n;Ljava/util/Vector;[Laq/a;)V
    .registers 12

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    return-void
.end method

.method public static a(Lbb/n;Lbb/p;Ljava/util/Vector;[Laq/a;)Lbb/o;
    .registers 17

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0xe7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_10
    new-instance v0, Lbb/o;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v10, p1

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/util/Vector;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/y;Lbb/p;Lbb/p;[Laq/a;Lbb/r;)V

    return-object v0

    :cond_22
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static a(Ljava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;)Lbb/o;
    .registers 17

    new-instance v0, Lbb/o;

    const/16 v1, 0xe

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v12}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/util/Vector;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/y;Lbb/p;Lbb/p;[Laq/a;Lbb/r;)V

    return-object v0
.end method

.method public static b(Lbb/n;Lbb/p;Ljava/util/Vector;[Laq/a;)Lbb/o;
    .registers 17

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0xe7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_10
    new-instance v0, Lbb/o;

    const/16 v1, 0x15

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v10, p1

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/util/Vector;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/y;Lbb/p;Lbb/p;[Laq/a;Lbb/r;)V

    return-object v0

    :cond_23
    const/4 v2, 0x0

    goto :goto_10
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/bl;
    .registers 3

    iget-object v0, p0, Lbb/o;->l:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    return-object v0
.end method

.method public a(Lbb/n;)V
    .registers 4

    iput-object p1, p0, Lbb/o;->h:Lbb/n;

    iget-object v0, p0, Lbb/o;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->c:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lbb/p;)V
    .registers 4

    iput-object p1, p0, Lbb/o;->p:Lbb/p;

    iget-object v0, p0, Lbb/o;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->e:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 4

    iget-object v0, p0, Lbb/o;->l:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbb/o;->x:Z

    iget-object v0, p0, Lbb/o;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->a:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .registers 4

    iget-object v0, p0, Lbb/o;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iget-object v1, p0, Lbb/o;->l:Ljava/util/Vector;

    invoke-static {p1, v0, v1}, Lar/a;->a(Ljava/util/List;ILjava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbb/o;->x:Z

    iget-object v0, p0, Lbb/o;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->a:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lbb/p;)V
    .registers 4

    iput-object p1, p0, Lbb/o;->j:Lbb/p;

    iget-object v0, p0, Lbb/o;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->d:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lbb/o;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 2

    iget v0, p0, Lbb/o;->c:I

    sparse-switch v0, :sswitch_data_a

    const/4 v0, 0x0

    :goto_6
    return v0

    :sswitch_7
    const/4 v0, 0x1

    goto :goto_6

    nop

    :sswitch_data_a
    .sparse-switch
        0x0 -> :sswitch_7
        0xb -> :sswitch_7
    .end sparse-switch
.end method

.method public i()Z
    .registers 3

    iget-object v0, p0, Lbb/o;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->c:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, Lbb/o;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->e:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, Lbb/o;->a:Ljava/util/EnumSet;

    sget-object v1, Lbb/h;->d:Lbb/h;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
