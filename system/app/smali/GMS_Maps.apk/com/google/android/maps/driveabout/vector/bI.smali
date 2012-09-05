.class public Lcom/google/android/maps/driveabout/vector/bI;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/android/maps/driveabout/vector/bF;


# instance fields
.field private A:Ljava/util/Set;

.field private B:Ljava/util/List;

.field private C:Ljava/util/Iterator;

.field private D:Ljava/util/Comparator;

.field private E:I

.field private F:Ljava/util/Map;

.field private final b:Lcom/google/android/maps/driveabout/vector/cs;

.field private volatile c:Lcom/google/android/maps/driveabout/vector/bG;

.field private final d:Lcom/google/android/maps/driveabout/vector/cx;

.field private e:Lt/f;

.field private f:Lcom/google/android/maps/driveabout/vector/t;

.field private final g:Lcom/google/android/maps/driveabout/vector/aT;

.field private h:F

.field private i:Lt/av;

.field private j:Lcom/google/android/maps/driveabout/vector/bZ;

.field private k:Ljava/util/Iterator;

.field private l:Ljava/util/ArrayList;

.field private m:I

.field private n:Ljava/util/ArrayList;

.field private o:I

.field private p:Ljava/util/Map;

.field private q:I

.field private r:F

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private volatile w:Z

.field private x:Z

.field private y:Z

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bF;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bI;->a:Lcom/google/android/maps/driveabout/vector/bF;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bG;Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 6

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->p:Ljava/util/Map;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->B:Ljava/util/List;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(Lcom/google/android/maps/driveabout/vector/bJ;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->D:Ljava/util/Comparator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->E:I

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->F:Ljava/util/Map;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cs;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cs;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cx;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cx;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Lcom/google/android/maps/driveabout/vector/cx;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->o:I

    return-void
.end method

.method static final a(Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 5

    const v3, 0x48435000

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v0

    div-float v0, v1, v0

    cmpl-float v1, v0, v3

    if-lez v1, :cond_22

    sub-float/2addr v0, v3

    const v1, 0x38d1b717

    mul-float/2addr v0, v1

    const/high16 v1, 0x4230

    add-float/2addr v0, v1

    :goto_20
    float-to-int v0, v0

    return v0

    :cond_22
    const v1, 0x3966afcd

    mul-float/2addr v0, v1

    goto :goto_20
.end method

.method static a(Lt/A;Lt/Z;)I
    .registers 8

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v1

    :cond_4
    if-eqz p1, :cond_63

    invoke-virtual {p1}, Lt/Z;->h()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Lt/Z;->k()Lt/ad;

    move-result-object v0

    invoke-virtual {v0}, Lt/ad;->c()I

    move-result v0

    :goto_14
    move v2, v1

    :goto_15
    invoke-virtual {p0}, Lt/A;->b()I

    move-result v3

    if-ge v1, v3, :cond_66

    invoke-virtual {p0, v1}, Lt/A;->a(I)Lt/B;

    move-result-object v4

    invoke-virtual {v4}, Lt/B;->c()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v4}, Lt/B;->d()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {v4}, Lt/B;->j()Lt/Z;

    move-result-object v3

    invoke-virtual {v3}, Lt/Z;->h()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {v4}, Lt/B;->j()Lt/Z;

    move-result-object v3

    invoke-virtual {v3}, Lt/Z;->k()Lt/ad;

    move-result-object v3

    invoke-virtual {v3}, Lt/ad;->c()I

    move-result v3

    :goto_41
    invoke-virtual {v4}, Lt/B;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    :cond_4b
    invoke-virtual {v4}, Lt/B;->b()Z

    move-result v3

    if-eqz v3, :cond_53

    add-int/lit8 v2, v2, 0x8

    :cond_53
    invoke-virtual {v4}, Lt/B;->e()Z

    move-result v3

    if-eqz v3, :cond_60

    int-to-float v2, v2

    invoke-virtual {v4}, Lt/B;->k()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_63
    const/16 v0, 0xa

    goto :goto_14

    :cond_66
    move v1, v2

    goto :goto_3

    :cond_68
    move v3, v0

    goto :goto_41
.end method

.method static a(Lt/l;)I
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p0}, Lt/l;->h()I

    move-result v1

    packed-switch v1, :pswitch_data_84

    :pswitch_8
    invoke-static {}, Ln/a;->a()Z

    move-result v1

    if-eqz v1, :cond_81

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown labeleable feature type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lt/l;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2b
    check-cast p0, Lt/X;

    move v1, v0

    :goto_2e
    invoke-virtual {p0}, Lt/X;->d()I

    move-result v2

    if-ge v0, v2, :cond_62

    invoke-virtual {p0, v0}, Lt/X;->c(I)Lt/A;

    move-result-object v2

    invoke-virtual {p0}, Lt/X;->e()Lt/Z;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/A;Lt/Z;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :pswitch_47
    check-cast p0, Lt/M;

    invoke-virtual {p0}, Lt/M;->v()Lt/A;

    move-result-object v0

    invoke-virtual {p0}, Lt/M;->e()Lt/Z;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/A;Lt/Z;)I

    move-result v0

    invoke-virtual {p0}, Lt/M;->w()Lt/A;

    move-result-object v1

    invoke-virtual {p0}, Lt/M;->e()Lt/Z;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/A;Lt/Z;)I

    move-result v1

    add-int/2addr v1, v0

    :cond_62
    :goto_62
    return v1

    :pswitch_63
    check-cast p0, Lt/D;

    move v1, v0

    :goto_66
    invoke-virtual {p0}, Lt/D;->d()I

    move-result v2

    if-ge v0, v2, :cond_62

    invoke-virtual {p0, v0}, Lt/D;->a(I)Lt/A;

    move-result-object v2

    invoke-virtual {p0}, Lt/D;->e()Lt/Z;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/A;Lt/Z;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :pswitch_7f
    move v1, v0

    goto :goto_62

    :cond_81
    move v1, v0

    goto :goto_62

    nop

    :pswitch_data_84
    .packed-switch 0x2
        :pswitch_2b
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_8
        :pswitch_47
        :pswitch_63
        :pswitch_8
        :pswitch_8
        :pswitch_63
    .end packed-switch
.end method

.method private a(Lt/D;Lcom/google/android/maps/driveabout/vector/bF;Z)Lcom/google/android/maps/driveabout/vector/af;
    .registers 14

    const/4 v0, 0x0

    invoke-virtual {p1}, Lt/D;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lt/D;->d()I

    move-result v1

    if-nez v1, :cond_18

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p1}, Lt/D;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    :cond_18
    invoke-virtual {p1}, Lt/D;->c()Lt/P;

    move-result-object v1

    invoke-virtual {v1}, Lt/P;->a()Lt/V;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->i:Lt/av;

    invoke-virtual {v3, v2}, Lt/av;->b(Lt/W;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/P;)Lt/P;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Lt/D;->e()Lt/Z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget v1, v1, Lcom/google/android/maps/driveabout/vector/bG;->i:F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/bG;->j:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget v4, v4, Lcom/google/android/maps/driveabout/vector/bG;->k:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v5

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/vector/af;->a(Lt/Z;FIIF)F

    move-result v5

    invoke-virtual {p1}, Lt/D;->b()Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lt/D;->a(I)Lt/A;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bG;->h:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/bG;->l:F

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/D;Lcom/google/android/maps/driveabout/vector/bF;Lt/A;Lt/P;ZFLcom/google/android/maps/driveabout/vector/cu;FLcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;

    move-result-object v0

    goto :goto_d

    :cond_67
    invoke-virtual {p1}, Lt/D;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bG;->h:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/bG;->l:F

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/D;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/P;ZFLcom/google/android/maps/driveabout/vector/cu;FLcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;

    move-result-object v0

    goto :goto_d
.end method

.method private a(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;Z)Lcom/google/android/maps/driveabout/vector/af;
    .registers 14

    const/4 v0, 0x0

    invoke-virtual {p1}, Lt/M;->b()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p1}, Lt/M;->u()[Lt/a;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lt/a;->b()Lt/L;

    move-result-object v4

    :goto_12
    invoke-direct {p0, v4, p2}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/L;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lt/M;->s()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3c

    invoke-virtual {p1}, Lt/M;->t()F

    move-result v1

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-lez v1, :cond_42

    invoke-virtual {p1}, Lt/M;->t()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_42

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/M;)Z

    move-result v1

    if-nez v1, :cond_42

    :cond_3c
    :goto_3c
    return-object v0

    :cond_3d
    invoke-virtual {p1}, Lt/M;->d()Lt/L;

    move-result-object v4

    goto :goto_12

    :cond_42
    invoke-virtual {p1}, Lt/M;->b()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Lcom/google/android/maps/driveabout/vector/cx;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;ZLcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;)Lcom/google/android/maps/driveabout/vector/aH;

    move-result-object v0

    goto :goto_3c

    :cond_58
    const/high16 v3, 0x3f80

    invoke-virtual {p1}, Lt/M;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    invoke-virtual {p1}, Lt/M;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_88

    invoke-virtual {p1}, Lt/M;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lt/M;->p()F

    move-result v3

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3c

    :goto_78
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Lcom/google/android/maps/driveabout/vector/cx;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    move-object v0, p1

    move-object v1, p2

    move v5, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;Landroid/graphics/Bitmap;FLt/L;ZLcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;)Lcom/google/android/maps/driveabout/vector/aH;

    move-result-object v0

    goto :goto_3c

    :cond_88
    move-object v2, v0

    goto :goto_78
.end method

.method private a(Lt/P;)Lt/P;
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:Lt/f;

    invoke-virtual {v0, p1, v5}, Lt/f;->a(Lt/P;Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    if-ne v6, v1, :cond_1d

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    goto :goto_13

    :cond_1d
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-virtual {v0}, Lt/P;->d()F

    move-result v2

    move v4, v1

    move-object v3, v0

    :goto_29
    if-ge v4, v6, :cond_48

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-virtual {v0}, Lt/P;->d()F

    move-result v1

    cmpl-float v0, v1, v2

    if-lez v0, :cond_4a

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_42
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_29

    :cond_48
    move-object v0, v3

    goto :goto_13

    :cond_4a
    move v0, v2

    move-object v1, v3

    goto :goto_42
.end method

.method static a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    return-void

    :cond_a
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bI;->a:Lcom/google/android/maps/driveabout/vector/bF;

    new-instance v2, Lt/i;

    invoke-direct {v2, v1}, Lt/i;-><init>(I)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bF;

    new-instance v3, Lt/i;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Lt/i;-><init>(I)V

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_37
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/h;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_59
    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/i;

    invoke-virtual {v2, v1}, Lt/i;->a(Lt/h;)V

    goto :goto_59
.end method

.method private a(Lt/D;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/D;Lcom/google/android/maps/driveabout/vector/bF;Z)Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p4, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/af;->b(Z)V

    :cond_10
    return-void
.end method

.method private a(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;Z)Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p4, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/af;->b(Z)V

    :cond_10
    return-void
.end method

.method private a(Lt/X;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V
    .registers 19

    invoke-virtual {p1}, Lt/X;->b()Lt/P;

    move-result-object v0

    invoke-virtual {v0}, Lt/P;->a()Lt/V;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->i:Lt/av;

    invoke-virtual {v2, v1}, Lt/av;->b(Lt/W;)Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/P;)Lt/P;

    move-result-object v13

    if-eqz v13, :cond_8b

    invoke-virtual {v13}, Lt/P;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x4220

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8b

    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {p1}, Lt/X;->d()I

    move-result v0

    if-ge v1, v0, :cond_8b

    const v0, 0x3f333333

    invoke-virtual {v13, v0}, Lt/P;->a(F)Lt/L;

    move-result-object v3

    const v0, 0x3e99999a

    invoke-virtual {v13, v0}, Lt/P;->a(F)Lt/L;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Lcom/google/android/maps/driveabout/vector/cx;

    move-object v0, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lt/X;ILcom/google/android/maps/driveabout/vector/bF;Lt/L;Lt/L;ZLcom/google/android/maps/driveabout/vector/bG;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;)Lcom/google/android/maps/driveabout/vector/aH;

    move-result-object v0

    if-nez v0, :cond_7a

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bG;->o:Z

    if-eqz v0, :cond_89

    const/16 v6, 0xa

    :goto_60
    invoke-virtual {p1, v1}, Lt/X;->c(I)Lt/A;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget v9, v0, Lcom/google/android/maps/driveabout/vector/bG;->l:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget-object v10, v0, Lcom/google/android/maps/driveabout/vector/bG;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v11, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v12, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v5, v13

    move/from16 v7, p3

    invoke-static/range {v2 .. v12}, Lcom/google/android/maps/driveabout/vector/aw;->a(Lt/X;Lcom/google/android/maps/driveabout/vector/bF;Lt/A;Lt/P;IZFFLcom/google/android/maps/driveabout/vector/cu;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cs;)Lcom/google/android/maps/driveabout/vector/aw;

    move-result-object v0

    :cond_7a
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v2

    if-eqz v2, :cond_86

    if-eqz p4, :cond_86

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/af;->b(Z)V

    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_89
    const/4 v6, 0x0

    goto :goto_60

    :cond_8b
    return-void
.end method

.method private a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V
    .registers 6

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    instance-of v0, p1, Lt/X;

    if-eqz v0, :cond_11

    check-cast p1, Lt/X;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/X;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V

    goto :goto_6

    :cond_11
    instance-of v0, p1, Lt/D;

    if-eqz v0, :cond_1b

    check-cast p1, Lt/D;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/D;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V

    goto :goto_6

    :cond_1b
    instance-of v0, p1, Lt/M;

    if-eqz v0, :cond_6

    check-cast p1, Lt/M;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V

    goto :goto_6
.end method

.method private a(J)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot run labeler loop until all previous labels have either been copied into new label table or destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    invoke-direct {p0, v0, v7, v4, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->k:Ljava/util/Iterator;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->q:I

    if-ge v0, v1, :cond_38

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->z:Z

    if-eqz v0, :cond_13

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->z:Z

    move v2, v4

    :cond_37
    :goto_37
    return v2

    :cond_38
    move v1, v2

    :goto_39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->C:Ljava/util/Iterator;

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bZ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_45
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->q:I

    if-lt v0, v3, :cond_65

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->t()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bZ;->b()Lcom/google/android/maps/driveabout/vector/bH;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bH;->b()I

    move-result v3

    if-gt v0, v3, :cond_37

    :cond_65
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->z:Z

    if-eqz v0, :cond_6d

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->z:Z

    move v2, v4

    goto :goto_37

    :cond_6d
    if-lez v1, :cond_79

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v0, v5, p1

    if-ltz v0, :cond_79

    move v2, v4

    goto :goto_37

    :cond_79
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->C:Ljava/util/Iterator;

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bZ;->a()Lcom/google/android/maps/driveabout/vector/bH;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_88
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bZ;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bZ;->b()Lcom/google/android/maps/driveabout/vector/bH;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bH;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bH;->b()I

    move-result v5

    if-ne v3, v5, :cond_ac

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bZ;->a()Lcom/google/android/maps/driveabout/vector/bH;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->B:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_ac
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->B:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->D:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->C:Ljava/util/Iterator;

    :cond_bb
    :goto_bb
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->C:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_120

    add-int/lit8 v3, v1, 0x1

    if-lez v1, :cond_d2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_d2

    move v2, v4

    goto/16 :goto_37

    :cond_d2
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->z:Z

    if-eqz v0, :cond_db

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->z:Z

    move v2, v4

    goto/16 :goto_37

    :cond_db
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->C:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bH;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->q:I

    if-lt v1, v5, :cond_108

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/af;->t()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bH;->b()I

    move-result v5

    if-lt v1, v5, :cond_108

    move v0, v3

    :goto_fe
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->C:Ljava/util/Iterator;

    move v1, v0

    goto/16 :goto_39

    :cond_108
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bH;->a()Lt/l;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bH;->c()Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->q:I

    if-le v0, v1, :cond_11e

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->b(I)V

    :cond_11e
    move v1, v3

    goto :goto_bb

    :cond_120
    move v0, v1

    goto :goto_fe
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/af;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->r()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->q()Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    goto :goto_d

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->v()Lt/l;

    move-result-object v0

    instance-of v0, v0, Lt/M;

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->v()Lt/l;

    move-result-object v0

    check-cast v0, Lt/M;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/M;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v2

    goto :goto_d

    :cond_30
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->s()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_45

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->s()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_45

    move v0, v1

    goto :goto_d

    :cond_45
    move v0, v2

    goto :goto_d
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;)Z
    .registers 3

    instance-of v0, p0, Lcom/google/android/maps/driveabout/vector/aH;

    if-eqz v0, :cond_1a

    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/aH;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aH;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aH;->y()Z

    move-result v0

    if-eqz v0, :cond_1a

    check-cast p0, Lcom/google/android/maps/driveabout/vector/aH;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aH;->y()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .registers 3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Lt/L;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->i:Lt/av;

    invoke-virtual {v0, p1}, Lt/av;->a(Lt/L;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lt/L;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Lt/M;)Z
    .registers 4

    invoke-virtual {p1}, Lt/M;->c()Lt/af;

    move-result-object v0

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->t:I

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->u:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bF;)Lt/h;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    if-nez p1, :cond_e

    sget-object p1, Lcom/google/android/maps/driveabout/vector/bI;->a:Lcom/google/android/maps/driveabout/vector/bF;

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/h;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->F:Ljava/util/Map;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bI;->a:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/h;

    goto :goto_9
.end method

.method private b(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->e(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->p:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->u()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    if-ne p1, v0, :cond_2f

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bI;->f()V

    :cond_2f
    return-void
.end method

.method private b(Z)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bI;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_3a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_30

    if-eqz p1, :cond_27

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->i:Lt/av;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/af;->a(Lt/av;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->f(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_27
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->d(Lcom/google/android/maps/driveabout/vector/af;)V

    :cond_30
    :goto_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_34
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_30

    :cond_3a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->o:I

    return-void
.end method

.method private b(J)Z
    .registers 8

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bI;->a(J)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->E:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->E:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " T:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " E:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " numL:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Labeler.runLabeler"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/af;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_62

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_5d

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/bI;->b(I)V

    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/af;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->f(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_44
    move v0, v2

    :goto_45
    if-eqz v0, :cond_67

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/vector/af;->c(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->f(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_5b
    move v0, v2

    goto :goto_45

    :cond_5d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_62
    :goto_62
    return v1

    :cond_63
    move v0, v1

    goto :goto_45

    :cond_65
    move v0, v1

    goto :goto_45

    :cond_67
    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_62

    :cond_6f
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->d(Lcom/google/android/maps/driveabout/vector/af;)V

    move v1, v2

    goto :goto_62
.end method

.method private b(Lt/L;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/bF;)Lt/h;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lt/h;->a(Lt/L;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/af;)Z
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->t()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->w()Z

    move-result v0

    if-eqz v0, :cond_54

    move v1, v2

    :goto_d
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->o()Lt/W;

    move-result-object v7

    invoke-virtual {v7}, Lt/W;->a()Lt/V;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v3

    :goto_1c
    if-ge v5, v9, :cond_58

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->o()Lt/W;

    move-result-object v4

    invoke-virtual {v4}, Lt/W;->a()Lt/V;

    move-result-object v10

    invoke-virtual {v10, v8}, Lt/V;->a(Lt/W;)Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-virtual {v4, v7}, Lt/W;->a(Lt/W;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->w()Z

    move-result v4

    if-eqz v4, :cond_56

    move v4, v2

    :goto_43
    if-gt v1, v4, :cond_4d

    if-ne v1, v4, :cond_59

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->t()I

    move-result v0

    if-le v6, v0, :cond_59

    :cond_4d
    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/vector/bI;->b(I)V

    :cond_50
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1c

    :cond_54
    move v1, v3

    goto :goto_d

    :cond_56
    move v4, v3

    goto :goto_43

    :cond_58
    move v2, v3

    :cond_59
    return v2
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/af;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->e(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    if-ltz v0, :cond_24

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->t()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->t()I

    move-result v0

    if-ge v1, v0, :cond_2c

    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    :cond_2c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->u()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    const/high16 v1, 0x4168

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bG;->c:I

    int-to-float v0, v0

    :goto_11
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/bG;->b:I

    int-to-float v0, v0

    goto :goto_11
.end method

.method private e(Lcom/google/android/maps/driveabout/vector/af;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->n()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->r:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->q()Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bF;->b()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_18
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private f()V
    .registers 5

    const v1, 0x7fffffff

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->t()I

    move-result v3

    if-ge v3, v2, :cond_2d

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->e(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->t()I

    move-result v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_31
    return-void
.end method

.method private f(Lcom/google/android/maps/driveabout/vector/af;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->q()Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/bF;)Lt/h;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/af;->o()Lt/W;

    move-result-object v1

    invoke-interface {v0, v1}, Lt/h;->a(Lt/W;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private g()V
    .registers 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->w:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_c
    if-ge v1, v3, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_1d

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->w:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->x:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->y:Z

    :cond_2f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->o:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->o:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->m:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->s:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lx/ag;->a(Ljava/lang/String;Lx/af;)Lx/ad;

    move-result-object v1

    invoke-virtual {v1}, Lx/ad;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lx/ad;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/af;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/aH;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cs;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cx;->f()V

    return-void
.end method

.method public a(I)V
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->x:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->y:Z

    if-eqz v2, :cond_18

    :cond_f
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->y:Z

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/bI;->b(Z)V

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->x:Z

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->y:Z

    :cond_18
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->b(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->v:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bG;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:Lcom/google/android/maps/driveabout/vector/bG;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->b()V

    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;Lt/av;ILjava/util/Iterator;Lcom/google/android/maps/driveabout/vector/bZ;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;I)V
    .registers 20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move/from16 v0, p9

    int-to-long v3, v0

    add-long/2addr v3, v1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/bI;->k:Ljava/util/Iterator;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/bI;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bI;->i:Lt/av;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bI;->t:I

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->A:Ljava/util/Set;

    new-instance v1, Lt/f;

    invoke-virtual {p2}, Lt/av;->c()Lt/W;

    move-result-object v2

    invoke-direct {v1, v2}, Lt/f;-><init>(Lt/W;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:Lt/f;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->F:Ljava/util/Map;

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->q:I

    if-eq v1, v2, :cond_39

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->q:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/vector/cs;->a(I)V

    :cond_39
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x4348

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->r:F

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bI;->g()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->C:Ljava/util/Iterator;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->l()F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->t:I

    invoke-static {}, Lz/n;->c()Lcom/google/android/maps/driveabout/vector/dp;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v7

    sget-object v8, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v2, v7, v8}, Lcom/google/android/maps/driveabout/vector/dp;->a(Lt/L;Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/do;->b()I

    move-result v2

    if-ge v1, v2, :cond_b1

    const/4 v1, 0x1

    :goto_82
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->u:Z

    const/4 v1, 0x0

    move v2, v1

    :goto_86
    if-ge v2, v5, :cond_e2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/af;->v()Lt/l;

    move-result-object v7

    invoke-interface {v7}, Lt/l;->a()Lt/m;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a8

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v7

    if-nez v7, :cond_b3

    :cond_a8
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_ad
    :goto_ad
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_86

    :cond_b1
    const/4 v1, 0x0

    goto :goto_82

    :cond_b3
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/vector/af;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v7

    if-eqz v7, :cond_d9

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->i:Lt/av;

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/vector/af;->a(Lt/av;)Z

    move-result v7

    if-eqz v7, :cond_d9

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->f(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v7

    if-nez v7, :cond_d9

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/af;)Z

    move-result v7

    if-nez v7, :cond_d3

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->d(Lcom/google/android/maps/driveabout/vector/af;)V

    goto :goto_ad

    :cond_d3
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_ad

    :cond_d9
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_ad

    :cond_e2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_e8
    if-ge v2, v5, :cond_104

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/af;->v()Lt/l;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/af;->q()Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/af;->w()Z

    move-result v1

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v1, v9}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;ZZ)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e8

    :cond_104
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->o:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->x:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->y:Z

    invoke-direct {p0, v3, v4}, Lcom/google/android/maps/driveabout/vector/bI;->b(J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->v:Z

    return-void
.end method

.method public a(Lt/av;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bI;->g()V

    invoke-virtual {p1}, Lt/av;->a()Lt/au;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_10
    if-ge v1, v4, :cond_3b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v0, :cond_31

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/af;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->p()Lt/V;

    move-result-object v5

    invoke-virtual {v3, v5}, Lt/au;->b(Lt/W;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bI;->d(Lcom/google/android/maps/driveabout/vector/af;)V

    :cond_31
    :goto_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_35
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_31

    :cond_3b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->o:I

    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/bI;->x:Z

    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/bI;->y:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->v:Z

    return-void
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cs;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cx;->f()V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:Lcom/google/android/maps/driveabout/vector/cs;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cs;->b()V

    goto :goto_c
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->w:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->v:Z

    return v0
.end method

.method public d()Lcom/google/android/maps/driveabout/vector/bL;
    .registers 3

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bL;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->l:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bL;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method
