.class public Lcom/google/googlenav/ui/bl;
.super Lcom/google/googlenav/ui/bb;


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;

.field public static final f:Ljava/lang/Object;

.field public static final g:Ljava/lang/Object;

.field public static final h:Ljava/lang/Object;


# instance fields
.field public final A:Ljava/lang/Object;

.field public final B:I

.field public final C:Z

.field public final D:Z

.field public E:LaJ/B;

.field public final F:I

.field public G:Ljava/lang/String;

.field public final H:[Lcom/google/googlenav/ui/bl;

.field public final I:Lcom/google/googlenav/ui/o;

.field public final J:Lcom/google/googlenav/ui/b;

.field public K:Z

.field public final L:Ljava/lang/Object;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:I

.field public final l:I

.field public final m:Lcom/google/googlenav/ui/bn;

.field public final n:Lcom/google/googlenav/ui/bn;

.field public final o:Lcom/google/googlenav/ui/bn;

.field public final p:Lcom/google/googlenav/ui/bn;

.field public final q:I

.field public final r:I

.field public final s:Lbd/k;

.field public final t:Ljava/lang/String;

.field public final u:I

.field public final v:Z

.field public final w:Lcom/google/googlenav/ui/bh;

.field public final x:Lcom/google/googlenav/ui/bh;

.field public final y:Lbb/c;

.field public final z:Lbb/F;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bl;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bl;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bl;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bl;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bl;->g:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bl;->h:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/bl;)V
    .registers 39

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/googlenav/ui/bl;->k:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/googlenav/ui/bl;->l:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/googlenav/ui/bl;->n:Lcom/google/googlenav/ui/bn;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/googlenav/ui/bl;->p:Lcom/google/googlenav/ui/bn;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/googlenav/ui/bl;->q:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/googlenav/ui/bl;->r:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/googlenav/ui/bl;->t:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/googlenav/ui/bl;->B:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bl;->g()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bl;->h()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bl;->i()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bl;->j()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bl;->k()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bl;->u:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bl;->v:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->x:Lcom/google/googlenav/ui/bh;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->z:Lbb/F;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bl;->C:Z

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bl;->D:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->E:LaJ/B;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bl;->F:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->G:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->L:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->I:Lcom/google/googlenav/ui/o;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->J:Lcom/google/googlenav/ui/b;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bl;->K:Z

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->s:Lbd/k;

    move-object/from16 v36, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v36}, Lcom/google/googlenav/ui/bl;-><init>(Ljava/util/List;Ljava/util/List;IILcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;Lbb/c;Lbb/F;Ljava/lang/Object;ZZLaJ/B;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/o;Lcom/google/googlenav/ui/b;ZLbd/k;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;IILcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;Lbb/c;Lbb/F;Ljava/lang/Object;ZZLaJ/B;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/o;Lcom/google/googlenav/ui/b;ZLbd/k;)V
    .registers 43

    move-object v1, p0

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    invoke-direct/range {v1 .. v6}, Lcom/google/googlenav/ui/bb;-><init>(IIIII)V

    iput-object p1, p0, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    iput p3, p0, Lcom/google/googlenav/ui/bl;->k:I

    iput p4, p0, Lcom/google/googlenav/ui/bl;->l:I

    iput-object p5, p0, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    iput-object p6, p0, Lcom/google/googlenav/ui/bl;->n:Lcom/google/googlenav/ui/bn;

    iput-object p7, p0, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    iput-object p8, p0, Lcom/google/googlenav/ui/bl;->p:Lcom/google/googlenav/ui/bn;

    move/from16 v0, p9

    iput v0, p0, Lcom/google/googlenav/ui/bl;->q:I

    move/from16 v0, p10

    iput v0, p0, Lcom/google/googlenav/ui/bl;->r:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->t:Ljava/lang/String;

    move/from16 v0, p12

    iput v0, p0, Lcom/google/googlenav/ui/bl;->B:I

    move/from16 v0, p18

    iput v0, p0, Lcom/google/googlenav/ui/bl;->u:I

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bl;->v:Z

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->x:Lcom/google/googlenav/ui/bh;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->z:Lbb/F;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bl;->C:Z

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bl;->D:Z

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->E:LaJ/B;

    move/from16 v0, p28

    iput v0, p0, Lcom/google/googlenav/ui/bl;->F:I

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->G:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->L:Ljava/lang/Object;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->I:Lcom/google/googlenav/ui/o;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->J:Lcom/google/googlenav/ui/b;

    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bl;->K:Z

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/googlenav/ui/bl;->s:Lbd/k;

    return-void
.end method


# virtual methods
.method public l()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public m()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->o:Lcom/google/googlenav/ui/bn;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bl;->K:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->w:Lcom/google/googlenav/ui/bh;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_38
    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_58
    iget-object v0, p0, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_83

    const/4 v0, 0x0

    :goto_5d
    iget-object v2, p0, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    array-length v2, v2

    if-ge v0, v2, :cond_83

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
