.class public Lcom/google/googlenav/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Lcom/google/googlenav/ui/aW;

.field private E:Lcom/google/googlenav/ui/aW;

.field private F:Lcom/google/googlenav/ui/view/c;

.field private G:Lcom/google/googlenav/ui/view/K;

.field private H:I

.field private I:LaQ/H;

.field public a:Ljava/lang/Object;

.field public b:Z

.field public c:Z

.field public d:Lat/B;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:[Lcom/google/googlenav/ui/bd;

.field public i:Lcom/google/googlenav/ui/f;

.field public j:Lcom/google/googlenav/ui/b;

.field public k:Z

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:I

.field private o:I

.field private p:Lcom/google/googlenav/ui/bf;

.field private q:Lcom/google/googlenav/ui/bf;

.field private r:Lcom/google/googlenav/ui/bf;

.field private s:Lcom/google/googlenav/ui/bf;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/be;->l:Ljava/util/List;

    .line 702
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/be;->m:Ljava/util/List;

    .line 703
    iput v3, p0, Lcom/google/googlenav/ui/be;->n:I

    .line 704
    iput v3, p0, Lcom/google/googlenav/ui/be;->o:I

    .line 705
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->p:Lcom/google/googlenav/ui/bf;

    .line 706
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->q:Lcom/google/googlenav/ui/bf;

    .line 707
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->r:Lcom/google/googlenav/ui/bf;

    .line 708
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->s:Lcom/google/googlenav/ui/bf;

    .line 709
    iput v2, p0, Lcom/google/googlenav/ui/be;->t:I

    .line 710
    iput v2, p0, Lcom/google/googlenav/ui/be;->u:I

    .line 711
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->v:Ljava/lang/String;

    .line 712
    iput v2, p0, Lcom/google/googlenav/ui/be;->w:I

    .line 713
    iput-boolean v4, p0, Lcom/google/googlenav/ui/be;->C:Z

    .line 714
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->D:Lcom/google/googlenav/ui/aW;

    .line 715
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->E:Lcom/google/googlenav/ui/aW;

    .line 716
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->a:Ljava/lang/Object;

    .line 717
    iput v4, p0, Lcom/google/googlenav/ui/be;->H:I

    .line 719
    iput v3, p0, Lcom/google/googlenav/ui/be;->x:I

    .line 720
    iput v3, p0, Lcom/google/googlenav/ui/be;->z:I

    .line 721
    iput v3, p0, Lcom/google/googlenav/ui/be;->y:I

    .line 722
    iput v3, p0, Lcom/google/googlenav/ui/be;->A:I

    .line 723
    iput v3, p0, Lcom/google/googlenav/ui/be;->B:I

    .line 725
    iput-boolean v2, p0, Lcom/google/googlenav/ui/be;->b:Z

    .line 726
    iput-boolean v2, p0, Lcom/google/googlenav/ui/be;->c:Z

    .line 728
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->d:Lat/B;

    .line 729
    iput v2, p0, Lcom/google/googlenav/ui/be;->e:I

    .line 730
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->f:Ljava/lang/String;

    .line 731
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->g:Ljava/lang/Object;

    .line 732
    new-array v0, v2, [Lcom/google/googlenav/ui/bd;

    iput-object v0, p0, Lcom/google/googlenav/ui/be;->h:[Lcom/google/googlenav/ui/bd;

    .line 733
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->j:Lcom/google/googlenav/ui/b;

    .line 734
    iput-boolean v2, p0, Lcom/google/googlenav/ui/be;->k:Z

    .line 735
    iput-object v1, p0, Lcom/google/googlenav/ui/be;->I:LaQ/H;

    .line 736
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bd;
    .registers 38

    .prologue
    .line 1217
    new-instance v1, Lcom/google/googlenav/ui/bd;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/be;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/be;->m:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/ui/be;->n:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/googlenav/ui/be;->o:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/googlenav/ui/be;->p:Lcom/google/googlenav/ui/bf;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/ui/be;->q:Lcom/google/googlenav/ui/bf;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/googlenav/ui/be;->r:Lcom/google/googlenav/ui/bf;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/googlenav/ui/be;->s:Lcom/google/googlenav/ui/bf;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/googlenav/ui/be;->t:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/googlenav/ui/be;->u:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/googlenav/ui/be;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/googlenav/ui/be;->H:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlenav/ui/be;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/googlenav/ui/be;->z:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/be;->y:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/be;->A:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/be;->B:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/be;->w:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/be;->C:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->D:Lcom/google/googlenav/ui/aW;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->E:Lcom/google/googlenav/ui/aW;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->F:Lcom/google/googlenav/ui/view/c;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->G:Lcom/google/googlenav/ui/view/K;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/be;->b:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/be;->c:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->d:Lat/B;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/be;->e:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->f:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->g:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->h:[Lcom/google/googlenav/ui/bd;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->i:Lcom/google/googlenav/ui/f;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->j:Lcom/google/googlenav/ui/b;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/be;->k:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->I:LaQ/H;

    move-object/from16 v36, v0

    invoke-direct/range {v1 .. v36}, Lcom/google/googlenav/ui/bd;-><init>(Ljava/util/List;Ljava/util/List;IILcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/K;Ljava/lang/Object;ZZLat/B;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/f;Lcom/google/googlenav/ui/b;ZLaQ/H;)V

    return-object v1
.end method

.method public a(I)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 864
    iput p1, p0, Lcom/google/googlenav/ui/be;->n:I

    .line 865
    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;
    .registers 4
    .parameter

    .prologue
    .line 828
    if-nez p1, :cond_9

    .line 829
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/be;->l:Ljava/util/List;

    .line 833
    :goto_8
    return-object p0

    .line 831
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aW;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/be;->l:Ljava/util/List;

    goto :goto_8
.end method

.method public a(Lcom/google/googlenav/ui/bf;)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/google/googlenav/ui/be;->p:Lcom/google/googlenav/ui/bf;

    .line 888
    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/google/googlenav/ui/be;->F:Lcom/google/googlenav/ui/view/c;

    .line 783
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/google/googlenav/ui/be;->a:Ljava/lang/Object;

    .line 1111
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/googlenav/ui/be;
    .registers 3
    .parameter

    .prologue
    .line 813
    if-nez p1, :cond_9

    .line 814
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/be;->l:Ljava/util/List;

    .line 818
    :goto_8
    return-object p0

    .line 816
    :cond_9
    invoke-static {p1}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/be;->l:Ljava/util/List;

    goto :goto_8
.end method

.method public b(I)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 876
    iput p1, p0, Lcom/google/googlenav/ui/be;->o:I

    .line 877
    return-object p0
.end method

.method public b(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/google/googlenav/ui/be;->E:Lcom/google/googlenav/ui/aW;

    .line 1106
    return-object p0
.end method

.method public b(Lcom/google/googlenav/ui/bf;)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/google/googlenav/ui/be;->r:Lcom/google/googlenav/ui/bf;

    .line 932
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/google/googlenav/ui/be;->g:Ljava/lang/Object;

    .line 1168
    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 975
    iput p1, p0, Lcom/google/googlenav/ui/be;->t:I

    .line 976
    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/ui/be;
    .registers 4
    .parameter

    .prologue
    .line 986
    if-ltz p1, :cond_6

    const/16 v0, 0x38

    if-le p1, v0, :cond_e

    .line 987
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized newLayout value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_e
    iput p1, p0, Lcom/google/googlenav/ui/be;->u:I

    .line 990
    return-object p0
.end method

.method public e(I)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 1025
    iput p1, p0, Lcom/google/googlenav/ui/be;->x:I

    .line 1026
    return-object p0
.end method

.method public f(I)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 1037
    iput p1, p0, Lcom/google/googlenav/ui/be;->z:I

    .line 1038
    return-object p0
.end method

.method public g(I)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 1049
    iput p1, p0, Lcom/google/googlenav/ui/be;->y:I

    .line 1050
    return-object p0
.end method

.method public h(I)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 1073
    iput p1, p0, Lcom/google/googlenav/ui/be;->B:I

    .line 1074
    return-object p0
.end method

.method public i(I)Lcom/google/googlenav/ui/be;
    .registers 2
    .parameter

    .prologue
    .line 1132
    iput p1, p0, Lcom/google/googlenav/ui/be;->H:I

    .line 1133
    return-object p0
.end method
