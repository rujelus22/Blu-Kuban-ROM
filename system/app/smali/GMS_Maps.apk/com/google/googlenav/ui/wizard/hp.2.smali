.class public Lcom/google/googlenav/ui/wizard/hp;
.super Lcom/google/googlenav/ui/wizard/z;


# static fields
.field static final synthetic i:Z


# instance fields
.field a:Lah/f;

.field g:Lcom/google/googlenav/bo;

.field public h:Lcom/google/googlenav/ui/view/dialog/au;

.field private j:Lcom/google/googlenav/ui/wizard/hu;

.field private k:Lcom/google/googlenav/bn;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/google/googlenav/ui/view/dialog/ax;

.field private o:Lcom/google/googlenav/ui/view/dialog/aE;

.field private p:Lcom/google/googlenav/ui/view/dialog/aA;

.field private q:Lcom/google/googlenav/ui/bF;

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/ui/wizard/hp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/wizard/hp;->i:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hp;->m:Z

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hp;->r:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hp;->s:I

    return-void
.end method

.method private C()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->h:Lcom/google/googlenav/ui/view/dialog/au;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->h:Lcom/google/googlenav/ui/view/dialog/au;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/au;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->h:Lcom/google/googlenav/ui/view/dialog/au;

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private D()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->n:Lcom/google/googlenav/ui/view/dialog/ax;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->n:Lcom/google/googlenav/ui/view/dialog/ax;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ax;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->n:Lcom/google/googlenav/ui/view/dialog/ax;

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private E()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->o:Lcom/google/googlenav/ui/view/dialog/aE;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->o:Lcom/google/googlenav/ui/view/dialog/aE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aE;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->o:Lcom/google/googlenav/ui/view/dialog/aE;

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private F()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->p:Lcom/google/googlenav/ui/view/dialog/aA;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->p:Lcom/google/googlenav/ui/view/dialog/aA;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aA;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->p:Lcom/google/googlenav/ui/view/dialog/aA;

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private G()V
    .registers 9

    new-instance v7, Lcom/google/googlenav/ui/wizard/hr;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/wizard/hr;-><init>(Lcom/google/googlenav/ui/wizard/hp;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x35a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/br;

    invoke-direct {v1, v7}, Lcom/google/googlenav/br;-><init>(Lcom/google/googlenav/bs;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method private H()V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/ax;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget-object v1, v1, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/dialog/ax;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/hp;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->n:Lcom/google/googlenav/ui/view/dialog/ax;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->n:Lcom/google/googlenav/ui/view/dialog/ax;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ax;->show()V

    const-string v0, "t"

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->l:Ljava/lang/String;

    return-void
.end method

.method private I()V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget v0, v0, Lcom/google/googlenav/bn;->g:I

    iget v1, p0, Lcom/google/googlenav/ui/wizard/hp;->r:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget v0, v0, Lcom/google/googlenav/bn;->h:I

    iget v2, p0, Lcom/google/googlenav/ui/wizard/hp;->s:I

    sub-int v2, v0, v2

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aA;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/hp;->r:I

    iget v4, p0, Lcom/google/googlenav/ui/wizard/hp;->s:I

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget-object v5, v5, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/aA;-><init>(IIIILjava/lang/String;Lcom/google/googlenav/ui/wizard/hp;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->p:Lcom/google/googlenav/ui/view/dialog/aA;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->p:Lcom/google/googlenav/ui/view/dialog/aA;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aA;->show()V

    const-string v0, "a"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/hp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    packed-switch p0, :pswitch_data_16

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_11
    :pswitch_11
    return-object p1

    :pswitch_12
    const-string p1, ""

    goto :goto_11

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method private a(Lam/b;)Ljava/util/List;
    .registers 12

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x3

    invoke-virtual {p1, v8}, Lam/b;->l(I)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    mul-int/lit8 v0, v2, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_10
    if-ge v0, v2, :cond_51

    invoke-virtual {p1, v8, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lam/b;->i(I)Ljava/lang/String;

    invoke-virtual {v4, v7}, Lam/b;->j(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lam/b;->j(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    new-instance v5, Lam/b;

    invoke-virtual {v4}, Lam/b;->c()Lam/e;

    move-result-object v6

    invoke-direct {v5, v6}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v4, v9}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v4, v7}, Lam/b;->h(I)Lam/b;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lam/b;->b(ILam/b;)V

    invoke-virtual {v4, v8}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lam/b;->b(ILjava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v7, v1}, Lam/b;->g(II)V

    :cond_4b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_51
    return-object v3
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hp;Lam/b;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/hp;->a(Lam/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->I()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hp;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/hp;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hp;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/hp;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->g:Lcom/google/googlenav/bo;

    sget-object v3, Lcom/google/googlenav/bo;->b:Lcom/google/googlenav/bo;

    if-ne v0, v3, :cond_e3

    const-string v0, "p"

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget-boolean v3, v3, Lcom/google/googlenav/bn;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hp;->m:Z

    if-eqz v0, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/hp;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/google/googlenav/ui/wizard/hp;->s:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_65
    const/16 v4, 0x6f

    const-string v5, "o"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "a="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v3, v6, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "d="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/hp;->l:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget v7, v7, Lcom/google/googlenav/bn;->g:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget v7, v7, Lcom/google/googlenav/bn;->h:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x6

    aput-object v1, v6, v2

    const/4 v1, 0x7

    aput-object v0, v6, v1

    invoke-static {v6}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_e3
    const-string v0, "r"

    goto/16 :goto_14

    :cond_e7
    move-object v0, v1

    goto/16 :goto_65
.end method

.method private b(Lam/b;)V
    .registers 10

    const/4 v1, 0x1

    new-instance v4, Lcom/google/googlenav/ui/wizard/hs;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/hs;-><init>(Lcom/google/googlenav/ui/wizard/hp;)V

    new-instance v0, Lax/bb;

    const/4 v3, 0x6

    const/4 v5, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lax/bb;-><init>(ZIILax/bc;Lax/bd;)V

    if-eqz p1, :cond_13

    invoke-virtual {v0, p1}, Lax/bb;->a(Lam/b;)V

    :cond_13
    new-instance v3, Lcom/google/googlenav/ui/wizard/ht;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/ht;-><init>(Lcom/google/googlenav/ui/wizard/hp;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v2, 0x35a

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 8

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aE;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget-object v1, v1, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->i()Lcom/google/googlenav/ui/bF;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hp;->a:Lah/f;

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/aE;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/ui/bF;Lah/f;Lcom/google/googlenav/ui/wizard/hp;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->o:Lcom/google/googlenav/ui/view/dialog/aE;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->o:Lcom/google/googlenav/ui/view/dialog/aE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aE;->show()V

    const-string v0, "p"

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->l:Ljava/lang/String;

    return-void
.end method

.method private b(Z)V
    .registers 4

    if-nez p1, :cond_1a

    const/16 v0, 0x338

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const-string v0, "ce"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/hp;->a(Ljava/lang/String;)V

    :goto_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->j:Lcom/google/googlenav/ui/wizard/hu;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/hu;->a(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->a()V

    return-void

    :cond_1a
    const-string v0, "cu"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/hp;->a(Ljava/lang/String;)V

    goto :goto_11
.end method


# virtual methods
.method public B()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->j:Lcom/google/googlenav/ui/wizard/hu;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/hu;->a()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->a()V

    return-void
.end method

.method public W_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->j:Lcom/google/googlenav/ui/wizard/hu;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->j:Lcom/google/googlenav/ui/wizard/hu;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->o()V

    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const v0, 0x7f0f0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bn;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/hu;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hp;->g:Lcom/google/googlenav/bo;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hp;->j:Lcom/google/googlenav/ui/wizard/hu;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->l()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->i()Lcom/google/googlenav/ui/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bF;->a()Lay/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->o:Lcom/google/googlenav/ui/view/dialog/aE;

    invoke-virtual {v0, p1, v1}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hp;->m:Z

    new-instance v1, Lam/b;

    sget-object v0, Lbt/c;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hp;->r:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hp;->s:I

    iget v0, p0, Lcom/google/googlenav/ui/wizard/hp;->r:I

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lam/b;->a(ILjava/lang/String;)V

    goto :goto_1e

    :cond_2f
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hp;->s:I

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3, v4}, Lam/b;->a(IJ)V

    goto :goto_37

    :cond_4c
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/hp;->b(Lam/b;)V

    return-void
.end method

.method protected b()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/hp;->b(Z)V

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aC;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget-boolean v1, v1, Lcom/google/googlenav/bn;->a:Z

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hp;->g:Lcom/google/googlenav/bo;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/googlenav/ui/view/dialog/aC;-><init>(ZLcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/hp;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget-boolean v0, v0, Lcom/google/googlenav/bn;->a:Z

    if-eqz v0, :cond_26

    const-string v0, "s"

    :goto_23
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->l:Ljava/lang/String;

    goto :goto_8

    :cond_26
    const-string v0, "g"

    goto :goto_23
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->j:Lcom/google/googlenav/ui/wizard/hu;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->F()Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->D()Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->E()Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->C()Z

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public e()V
    .registers 3

    sget-boolean v0, Lcom/google/googlenav/ui/wizard/hp;->i:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget-boolean v0, v0, Lcom/google/googlenav/bn;->a:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v1, Lcom/google/googlenav/ui/wizard/hq;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/hq;-><init>(Lcom/google/googlenav/ui/wizard/hp;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/bN;)V

    return-void
.end method

.method public f()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/bn;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/au;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hp;->g:Lcom/google/googlenav/bo;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/googlenav/ui/view/dialog/au;-><init>(Lcom/google/googlenav/bn;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/hp;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->h:Lcom/google/googlenav/ui/view/dialog/au;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->h:Lcom/google/googlenav/ui/view/dialog/au;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/au;->show()V

    const-string v0, "m"

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->l:Ljava/lang/String;

    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/hp;->b(Lam/b;)V

    goto :goto_1c
.end method

.method public g()V
    .registers 3

    new-instance v0, Lam/b;

    sget-object v1, Lbt/c;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/hp;->b(Lam/b;)V

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget v0, v0, Lcom/google/googlenav/bn;->g:I

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->k:Lcom/google/googlenav/bn;

    iget v0, v0, Lcom/google/googlenav/bn;->h:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_14

    :cond_10
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->H()V

    :goto_13
    return-void

    :cond_14
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->G()V

    goto :goto_13
.end method

.method public i()Lcom/google/googlenav/ui/bF;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->q:Lcom/google/googlenav/ui/bF;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->a:Lah/f;

    if-nez v0, :cond_29

    :cond_8
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->t()Lah/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->a:Lah/f;

    new-instance v0, Lcom/google/googlenav/ui/bF;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hp;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v1

    invoke-virtual {v1}, Lay/p;->b()Lay/r;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hp;->a:Lah/f;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bF;-><init>(Lay/r;Lah/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->q:Lcom/google/googlenav/ui/bF;

    :cond_29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->q:Lcom/google/googlenav/ui/bF;

    return-object v0
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/hp;->b(Z)V

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->p:Lcom/google/googlenav/ui/view/dialog/aA;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hp;->B()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->D()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->E()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hp;->C()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/hp;->b(Z)V

    goto :goto_7
.end method
