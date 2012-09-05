.class public Lcom/google/googlenav/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/E;


# static fields
.field private static final v:Lar/d;


# instance fields
.field private a:LaJ/o;

.field private final b:LaJ/p;

.field private final c:LaJ/u;

.field private final d:Lcom/google/googlenav/layer/m;

.field private e:Ljava/lang/String;

.field private f:B

.field private g:B

.field private h:Ljava/util/Vector;

.field private i:I

.field private final j:Ljava/util/Hashtable;

.field private final k:Ljava/util/Hashtable;

.field private final l:Ljava/util/Hashtable;

.field private m:Lcom/google/googlenav/T;

.field private n:LaJ/P;

.field private o:LaJ/n;

.field private p:LaJ/H;

.field private q:[LaJ/P;

.field private r:Lcom/google/googlenav/S;

.field private s:I

.field private t:[Lcom/google/googlenav/T;

.field private u:LaY/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/googlenav/R;

    invoke-direct {v0}, Lcom/google/googlenav/R;-><init>()V

    sput-object v0, Lcom/google/googlenav/Q;->v:Lar/d;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/googlenav/Q;->i:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/google/googlenav/Q;->a:LaJ/o;

    iput-object p3, p0, Lcom/google/googlenav/Q;->b:LaJ/p;

    iput-object p4, p0, Lcom/google/googlenav/Q;->c:LaJ/u;

    iput-object p1, p0, Lcom/google/googlenav/Q;->d:Lcom/google/googlenav/layer/m;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/Q;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->f()B

    move-result v0

    iput-byte v0, p0, Lcom/google/googlenav/Q;->f:B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    iput v1, p0, Lcom/google/googlenav/Q;->i:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/Q;->k:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/Q;->l:Ljava/util/Hashtable;

    invoke-virtual {p4}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/Q;->p:LaJ/H;

    invoke-virtual {p3}, LaJ/p;->g()[LaJ/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/Q;->q:[LaJ/P;

    return-void
.end method

.method private a(Ljava/util/Vector;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/Q;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/googlenav/Q;->l:Ljava/util/Hashtable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_22
    return-void
.end method

.method private b(Lcom/google/googlenav/T;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->C()LaJ/g;

    move-result-object v0

    invoke-interface {v0}, LaJ/g;->b()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/T;->C()LaJ/g;

    move-result-object v1

    invoke-interface {v1}, LaJ/g;->b()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private i()B
    .registers 3

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlenav/Q;->d:Lcom/google/googlenav/layer/m;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->m()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/Q;->b:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->k()B

    move-result v0

    :cond_10
    return v0
.end method

.method private j()Ljava/util/Vector;
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/Q;->b:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->g()[LaJ/P;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/Q;->i()B

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_2e

    iget-object v4, p0, Lcom/google/googlenav/Q;->a:LaJ/o;

    aget-object v5, v1, v0

    invoke-static {v2, v5}, LaJ/P;->a(BLaJ/P;)LaJ/P;

    move-result-object v5

    invoke-interface {v4, v5}, LaJ/o;->a(LaJ/P;)LaJ/n;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, LaJ/n;->e()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_2e
    return-object v3
.end method

.method private k()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/Q;->r:Lcom/google/googlenav/S;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/Q;->p:LaJ/H;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/Q;->q:[LaJ/P;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/Q;->p:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/Q;->c:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->c()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/Q;->p:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->b()LaJ/Y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/Q;->c:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->d()LaJ/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-direct {p0}, Lcom/google/googlenav/Q;->l()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/googlenav/Q;->r:Lcom/google/googlenav/S;

    invoke-direct {p0}, Lcom/google/googlenav/Q;->m()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/S;->a(Z)V

    iput-object v2, p0, Lcom/google/googlenav/Q;->r:Lcom/google/googlenav/S;

    iput-object v2, p0, Lcom/google/googlenav/Q;->p:LaJ/H;

    iput-object v2, p0, Lcom/google/googlenav/Q;->q:[LaJ/P;

    :cond_46
    return-void
.end method

.method private l()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/Q;->q:[LaJ/P;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/google/googlenav/Q;->i()B

    move-result v2

    iget-object v1, p0, Lcom/google/googlenav/Q;->q:[LaJ/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_39

    iget-object v3, p0, Lcom/google/googlenav/Q;->q:[LaJ/P;

    aget-object v3, v3, v1

    invoke-virtual {v3}, LaJ/P;->j()Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_1e
    iget-object v4, p0, Lcom/google/googlenav/Q;->b:LaJ/p;

    invoke-virtual {v4, v3}, LaJ/p;->a(LaJ/P;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/google/googlenav/Q;->a:LaJ/o;

    invoke-static {v2, v3}, LaJ/P;->a(BLaJ/P;)LaJ/P;

    move-result-object v3

    invoke-interface {v4, v3}, LaJ/o;->a(LaJ/P;)LaJ/n;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, LaJ/n;->e()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_5

    :cond_39
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private m()Z
    .registers 11

    invoke-direct {p0}, Lcom/google/googlenav/Q;->j()Ljava/util/Vector;

    move-result-object v2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_17
    if-ltz v1, :cond_54

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/n;

    iget-object v5, p0, Lcom/google/googlenav/Q;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    int-to-long v8, v1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, LaJ/n;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :cond_36
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    iget-object v6, p0, Lcom/google/googlenav/Q;->c:LaJ/u;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {v6, v0}, LaJ/u;->d(LaJ/B;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_4f
    return v0

    :cond_50
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_17

    :cond_54
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method private n()V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/Q;->s:I

    iget-object v0, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v2}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iput v0, p0, Lcom/google/googlenav/Q;->s:I

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2a
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public a(LaJ/B;)Ljava/util/Enumeration;
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/Q;->i()B

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/Q;->c:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->d()LaJ/Y;

    move-result-object v2

    invoke-static {v1, p1, v2}, LaJ/P;->a(BLaJ/B;LaJ/Y;)LaJ/P;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/Q;->n:LaJ/P;

    invoke-virtual {v1, v2}, LaJ/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    iput-object v1, p0, Lcom/google/googlenav/Q;->n:LaJ/P;

    iput-object v0, p0, Lcom/google/googlenav/Q;->o:LaJ/n;

    :cond_1b
    iget-object v1, p0, Lcom/google/googlenav/Q;->o:LaJ/n;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/googlenav/Q;->o:LaJ/n;

    invoke-virtual {v1}, LaJ/n;->e()Z

    move-result v1

    if-nez v1, :cond_36

    :cond_27
    iget-object v1, p0, Lcom/google/googlenav/Q;->a:LaJ/o;

    iget-object v2, p0, Lcom/google/googlenav/Q;->n:LaJ/P;

    invoke-interface {v1, v2}, LaJ/o;->a(LaJ/P;)LaJ/n;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/Q;->o:LaJ/n;

    iget-object v1, p0, Lcom/google/googlenav/Q;->o:LaJ/n;

    if-nez v1, :cond_36

    :cond_35
    :goto_35
    return-object v0

    :cond_36
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/Q;->o:LaJ/n;

    iget-object v4, p0, Lcom/google/googlenav/Q;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, LaJ/n;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_35
.end method

.method public a()V
    .registers 12

    invoke-direct {p0}, Lcom/google/googlenav/Q;->k()V

    iget-object v0, p0, Lcom/google/googlenav/Q;->d:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/Q;->d:Lcom/google/googlenav/layer/m;

    iget-object v1, p0, Lcom/google/googlenav/Q;->c:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->d()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->b(I)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/Q;->i:I

    iget-object v0, p0, Lcom/google/googlenav/Q;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-direct {p0}, Lcom/google/googlenav/Q;->j()Ljava/util/Vector;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_4c
    if-ltz v2, :cond_df

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/n;

    iget-object v1, p0, Lcom/google/googlenav/Q;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v5

    int-to-long v9, v2

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v0, v1, v7, v8}, LaJ/n;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_da

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v7

    :cond_6b
    :goto_6b
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    iget-object v1, p0, Lcom/google/googlenav/Q;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/T;

    if-eqz v1, :cond_f6

    invoke-virtual {v0}, Lcom/google/googlenav/T;->l()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/T;->a(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->m()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/T;->b(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->n()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/T;->c(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->C()LaJ/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->c(LaJ/g;)V

    :goto_a1
    iget-object v0, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    iget-byte v0, p0, Lcom/google/googlenav/Q;->f:B

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->a(B)V

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v8, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c6
    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    if-eqz v0, :cond_6b

    invoke-direct {p0, v1}, Lcom/google/googlenav/Q;->b(Lcom/google/googlenav/T;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v1}, Lcom/google/googlenav/T;->C()LaJ/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/T;->c(LaJ/g;)V

    goto :goto_6b

    :cond_da
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_4c

    :cond_df
    invoke-direct {p0, v4}, Lcom/google/googlenav/Q;->a(Ljava/util/Vector;)V

    iput-object v4, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/Q;->i:I

    iget-object v0, p0, Lcom/google/googlenav/Q;->u:LaY/k;

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/Q;->u:LaY/k;

    invoke-interface {v1, v0}, LaY/k;->b(LaY/i;)V

    goto/16 :goto_2a

    :cond_f6
    move-object v1, v0

    goto :goto_a1
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/google/googlenav/Q;->g:B

    return-void
.end method

.method public a(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/Q;->f()I

    move-result v0

    if-lt p1, v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/googlenav/Q;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->h()Z

    move-result v1

    if-eqz v1, :cond_1d

    check-cast v0, Lcom/google/googlenav/T;

    iput-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    :goto_19
    invoke-direct {p0}, Lcom/google/googlenav/Q;->n()V

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    goto :goto_19
.end method

.method public a(Lcom/google/googlenav/S;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/Q;->r:Lcom/google/googlenav/S;

    return-void
.end method

.method public a(Lcom/google/googlenav/T;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/Q;->k:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/Q;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/googlenav/Q;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/Q;->i:I

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/T;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    :cond_13
    :goto_13
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/google/googlenav/T;->l()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/T;->a(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->m()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/T;->b(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->n()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/T;->c(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->o()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/T;->d(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->p()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/T;->e(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/T;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/T;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/googlenav/T;->C()LaJ/g;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/T;->b(LaJ/g;)V

    invoke-virtual {v0}, Lcom/google/googlenav/T;->C()LaJ/g;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/T;->c(LaJ/g;)V

    :cond_54
    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iput-object p2, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    :cond_66
    iget-object v0, p0, Lcom/google/googlenav/Q;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6b
    iget-object v0, p0, Lcom/google/googlenav/Q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7e

    iget-object v1, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_7e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6b .. :try_end_7e} :catch_9f

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    iget-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_87
    if-ge v2, v3, :cond_a1

    iget-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_87

    :catch_9f
    move-exception v0

    goto :goto_7e

    :cond_a1
    move-object v0, v1

    goto/16 :goto_13
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/D;
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->C()LaJ/g;

    move-result-object v0

    invoke-interface {v0}, LaJ/g;->b()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/Q;->a(LaJ/B;)Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_15
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-direct {p0, v0}, Lcom/google/googlenav/Q;->b(Lcom/google/googlenav/T;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->C()LaJ/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/T;->c(LaJ/g;)V

    goto :goto_4
.end method

.method public b(LaJ/B;)V
    .registers 6

    if-nez p1, :cond_9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/Q;->s:I

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/T;

    iput-object v0, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    iget-object v0, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    array-length v0, v0

    if-ge v1, v0, :cond_35

    iget-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->a()LaJ/B;

    move-result-object v2

    invoke-virtual {v2, p1}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/T;->b(J)V

    iget-object v2, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_35
    iget-object v0, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    sget-object v1, Lcom/google/googlenav/Q;->v:Lar/d;

    invoke-static {v0, v1}, Lar/a;->a([Ljava/lang/Object;Lar/d;)V

    invoke-direct {p0}, Lcom/google/googlenav/Q;->n()V

    goto :goto_8
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/Q;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public c(I)I
    .registers 2

    return p1
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/Q;->g:B

    return v0
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/Q;->k:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    invoke-virtual {v1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/Q;->m:Lcom/google/googlenav/T;

    goto :goto_5
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/Q;->i:I

    return v0
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/Q;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/Q;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/Q;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/Q;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    return-void
.end method

.method public h()[Lcom/google/googlenav/T;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/Q;->t:[Lcom/google/googlenav/T;

    return-object v0
.end method
