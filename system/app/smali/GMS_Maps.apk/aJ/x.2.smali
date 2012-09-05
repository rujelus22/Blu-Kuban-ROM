.class LaJ/x;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/K;


# instance fields
.field private final a:Lak/m;

.field private final b:Ljava/lang/String;

.field private final c:LaJ/D;

.field private d:I

.field private e:I

.field private f:I

.field private final g:LaJ/z;

.field private final h:Ljava/util/Vector;

.field private final i:Ljava/util/Hashtable;

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:J

.field private o:J

.field private p:Z


# direct methods
.method constructor <init>(LaJ/D;Ljava/lang/String;II)V
    .registers 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iput-object v0, p0, LaJ/x;->a:Lak/m;

    iput v1, p0, LaJ/x;->e:I

    iput v1, p0, LaJ/x;->f:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaJ/x;->i:Ljava/util/Hashtable;

    iput v2, p0, LaJ/x;->j:I

    iput v2, p0, LaJ/x;->k:I

    iput-object p1, p0, LaJ/x;->c:LaJ/D;

    iput-object p2, p0, LaJ/x;->b:Ljava/lang/String;

    add-int/lit16 v0, p3, -0x7d0

    iput v0, p0, LaJ/x;->m:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/x;->n:J

    const-wide/16 v2, 0x841

    add-long/2addr v0, v2

    iput-wide v0, p0, LaJ/x;->o:J

    add-int/lit8 v0, p4, -0x1

    iput v0, p0, LaJ/x;->d:I

    iput-boolean v4, p0, LaJ/x;->l:Z

    invoke-direct {p0}, LaJ/x;->j()V

    iput-boolean v4, p0, LaJ/x;->p:Z

    new-instance v0, LaJ/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LaJ/z;-><init>(LaJ/x;LaJ/y;)V

    iput-object v0, p0, LaJ/x;->g:LaJ/z;

    return-void
.end method

.method private a(LaJ/f;LaJ/P;)LaJ/I;
    .registers 6

    invoke-virtual {p0, p1}, LaJ/x;->a(LaJ/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LaJ/f;->a(Ljava/lang/String;LaJ/P;)LaJ/I;

    move-result-object v0

    if-nez v0, :cond_20

    monitor-enter p0

    :try_start_b
    invoke-virtual {p1}, LaJ/f;->c()I

    move-result v1

    invoke-direct {p0, v1}, LaJ/x;->b(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, LaJ/x;->a(LaJ/f;I)V

    iget-object v2, p0, LaJ/x;->a:Lak/m;

    invoke-virtual {p0, v1}, LaJ/x;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lak/m;->b(Ljava/lang/String;)Z

    monitor-exit p0

    :cond_20
    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v0
.end method

.method static synthetic a(LaJ/x;LaJ/f;LaJ/P;)LaJ/I;
    .registers 4

    invoke-direct {p0, p1, p2}, LaJ/x;->a(LaJ/f;LaJ/P;)LaJ/I;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LaJ/x;LaJ/P;)LaJ/e;
    .registers 3

    invoke-direct {p0, p1}, LaJ/x;->b(LaJ/P;)LaJ/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Hashtable;I)LaJ/f;
    .registers 10

    new-instance v3, LaJ/f;

    invoke-direct {v3}, LaJ/f;-><init>()V

    const/4 v1, 0x1

    iget-object v0, p0, LaJ/x;->c:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->i()[LaJ/P;

    move-result-object v4

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_10
    if-ltz v2, :cond_41

    aget-object v0, v4, v2

    iget-object v5, p0, LaJ/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_42

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->e()Z

    move-result v5

    if-eqz v5, :cond_42

    new-instance v5, LaJ/e;

    invoke-direct {v5, v0}, LaJ/e;-><init>(LaJ/I;)V

    invoke-virtual {v5}, LaJ/e;->c()I

    move-result v0

    add-int v6, v1, v0

    if-gt v6, p2, :cond_42

    invoke-virtual {v3, v5}, LaJ/f;->a(LaJ/e;)Z

    move-result v5

    if-eqz v5, :cond_42

    add-int/2addr v0, v1

    :goto_3c
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_10

    :cond_41
    return-object v3

    :cond_42
    move v0, v1

    goto :goto_3c
.end method

.method private a(LaJ/f;I)V
    .registers 7

    invoke-virtual {p1}, LaJ/f;->d()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p1}, LaJ/f;->a()I

    move-result v1

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/x;->l:Z

    invoke-virtual {p1}, LaJ/f;->e()V

    iget-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, LaJ/f;->a(I)LaJ/e;

    move-result-object v2

    iget-object v3, p0, LaJ/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v2}, LaJ/e;->a()LaJ/P;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private declared-synchronized a(LaJ/f;[BI)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, LaJ/x;->k:I

    if-nez v0, :cond_f

    iget-object v0, p0, LaJ/x;->a:Lak/m;

    const/4 v1, 0x0

    new-array v1, v1, [B

    iget-object v2, p0, LaJ/x;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_21

    :cond_f
    :try_start_f
    invoke-virtual {p0, p3}, LaJ/x;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3, p2}, LaJ/f;->a(Ljava/lang/String;I[B)V

    invoke-direct {p0, p1}, LaJ/x;->b(LaJ/f;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_21
    .catch Lak/n; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_19} :catch_24

    :goto_19
    monitor-exit p0

    return-void

    :catch_1b
    move-exception v0

    const/4 v1, 0x0

    :try_start_1d
    invoke-direct {p0, v0, v1}, LaJ/x;->a(Lak/n;Z)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_19

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_24
    move-exception v0

    :try_start_25
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_21

    goto :goto_19
.end method

.method private a(Lak/n;Z)V
    .registers 7

    invoke-virtual {p0}, LaJ/x;->f()I

    move-result v1

    invoke-virtual {p0}, LaJ/x;->a()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "B "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "R"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_48

    const-string v0, " catalog"

    :goto_2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lak/n;->a()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_47

    invoke-direct {p0}, LaJ/x;->k()Z

    move-result v0

    if-eqz v0, :cond_4b

    add-int/lit16 v0, v1, -0x3e8

    iput v0, p0, LaJ/x;->m:I

    :cond_47
    :goto_47
    return-void

    :cond_48
    const-string v0, ""

    goto :goto_2b

    :cond_4b
    iput v2, p0, LaJ/x;->d:I

    goto :goto_47
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v1

    :cond_4
    move v0, v1

    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x0

    aput-object v1, p1, v0

    const/4 v1, 0x1

    goto :goto_3

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private b(I)I
    .registers 5

    iget-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_1c

    iget-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/f;

    invoke-virtual {v0}, LaJ/f;->c()I

    move-result v0

    if-ne v0, p1, :cond_19

    move v0, v1

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    const/4 v0, -0x1

    goto :goto_18
.end method

.method private b(LaJ/P;)LaJ/e;
    .registers 3

    iget-object v0, p0, LaJ/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/f;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0, p1}, LaJ/f;->a(LaJ/P;)LaJ/e;

    move-result-object v0

    goto :goto_b
.end method

.method private b(LaJ/f;)V
    .registers 6

    invoke-virtual {p1}, LaJ/f;->a()I

    move-result v1

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/x;->l:Z

    iget v0, p0, LaJ/x;->j:I

    invoke-virtual {p1}, LaJ/f;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LaJ/x;->j:I

    iget-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_2b

    invoke-virtual {p1, v0}, LaJ/f;->a(I)LaJ/e;

    move-result-object v2

    iget-object v3, p0, LaJ/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v2}, LaJ/e;->a()LaJ/P;

    move-result-object v2

    invoke-virtual {v3, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2b
    return-void
.end method

.method private c(I)LaJ/f;
    .registers 3

    iget-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/f;

    return-object v0
.end method

.method private declared-synchronized j()V
    .registers 9

    const/4 v2, 0x0

    const/16 v1, 0xa

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, LaJ/x;->l:Z

    iget-object v0, p0, LaJ/x;->a:Lak/m;

    iget-object v3, p0, LaJ/x;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_60

    invoke-static {v3}, Lak/k;->a([B)Ljava/io/DataInput;

    move-result-object v4

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_5d

    move-result v0

    if-eq v0, v1, :cond_29

    :goto_1b
    :try_start_1b
    iget-boolean v2, p0, LaJ/x;->l:Z

    if-eqz v2, :cond_22

    invoke-virtual {p0}, LaJ/x;->c()V

    :cond_22
    if-eq v0, v1, :cond_27

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/x;->l:Z
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_5a

    :cond_27
    monitor-exit p0

    return-void

    :cond_29
    :try_start_29
    invoke-interface {v4}, Ljava/io/DataInput;->readBoolean()Z

    invoke-interface {v4}, Ljava/io/DataInput;->readShort()S

    move-result v5

    iput v5, p0, LaJ/x;->e:I

    invoke-interface {v4}, Ljava/io/DataInput;->readShort()S

    move-result v5

    iput v5, p0, LaJ/x;->f:I

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v5

    :goto_3c
    if-ge v2, v5, :cond_48

    invoke-static {v4}, LaJ/f;->a(Ljava/io/DataInput;)LaJ/f;

    move-result-object v6

    invoke-direct {p0, v6}, LaJ/x;->b(LaJ/f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_48
    array-length v2, v3

    iput v2, p0, LaJ/x;->k:I

    const/4 v2, 0x0

    iput-boolean v2, p0, LaJ/x;->l:Z
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4e} :catch_4f

    goto :goto_1b

    :catch_4f
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_53
    :try_start_53
    const-string v3, "FLASH"

    invoke-static {v3, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_5a

    move v0, v2

    goto :goto_1b

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_5d
    move-exception v0

    move v2, v1

    goto :goto_53

    :cond_60
    move v0, v1

    goto :goto_1b
.end method

.method private k()Z
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LaJ/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_16
    iget-object v2, p0, LaJ/x;->a:Lak/m;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-interface {v2, v3, v1}, Lak/m;->a([BLjava/lang/String;)I

    iget-object v2, p0, LaJ/x;->a:Lak/m;

    invoke-interface {v2, v1}, Lak/m;->b(Ljava/lang/String;)Z
    :try_end_23
    .catch Lak/n; {:try_start_16 .. :try_end_23} :catch_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :catch_25
    move-exception v1

    goto :goto_24
.end method


# virtual methods
.method a()I
    .registers 2

    iget-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method a(Ljava/util/Hashtable;)I
    .registers 21

    const/4 v2, 0x2

    new-array v12, v2, [I

    fill-array-data v12, :array_202

    const/4 v2, 0x2

    new-array v13, v2, [LaJ/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v13, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v13, v2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v14

    monitor-enter p0

    :try_start_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, LaJ/x;->p:Z

    if-eqz v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, LaJ/x;->d()Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, LaJ/x;->p:Z

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, LaJ/x;->m:I

    invoke-virtual/range {p0 .. p0}, LaJ/x;->f()I

    move-result v3

    sub-int v11, v2, v3

    const v2, 0x11940

    if-lt v11, v2, :cond_45

    invoke-virtual/range {p0 .. p0}, LaJ/x;->a()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, LaJ/x;->d:I

    if-lt v2, v3, :cond_db

    :cond_45
    const/4 v10, -0x1

    const/4 v8, -0x1

    const-wide/high16 v6, -0x8000

    const-wide/high16 v2, -0x8000

    invoke-virtual/range {p0 .. p0}, LaJ/x;->a()I

    move-result v16

    const/4 v9, 0x0

    :goto_50
    move/from16 v0, v16

    if-ge v9, v0, :cond_7a

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, LaJ/x;->c(I)LaJ/f;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, LaJ/f;->a(J)J

    move-result-wide v4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_68

    cmp-long v17, v4, v2

    if-lez v17, :cond_1ff

    :cond_68
    const/4 v2, -0x1

    if-eq v10, v2, :cond_6f

    cmp-long v2, v4, v6

    if-lez v2, :cond_77

    :cond_6f
    move-wide v2, v6

    move-wide v6, v4

    move v4, v10

    move v10, v9

    :goto_73
    add-int/lit8 v9, v9, 0x1

    move v8, v4

    goto :goto_50

    :cond_77
    move-wide v2, v4

    move v4, v9

    goto :goto_73

    :cond_7a
    const/4 v2, -0x1

    if-eq v10, v2, :cond_1fc

    const/4 v2, 0x0

    aput v10, v12, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, LaJ/x;->c(I)LaJ/f;

    move-result-object v3

    aput-object v3, v13, v2

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, LaJ/f;->b()I

    move-result v2

    add-int/2addr v2, v11

    :goto_91
    const v3, 0x11940

    if-ge v2, v3, :cond_ad

    const/4 v3, -0x1

    if-eq v8, v3, :cond_ad

    const/4 v3, 0x1

    aput v8, v12, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, LaJ/x;->c(I)LaJ/f;

    move-result-object v4

    aput-object v4, v13, v3

    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v3}, LaJ/f;->b()I

    move-result v3

    add-int/2addr v2, v3

    :cond_ad
    const v3, 0x11940

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_1e .. :try_end_b5} :catchall_df

    const/16 v3, 0x1770

    if-ge v2, v3, :cond_e2

    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_d9

    move-object/from16 v0, p0

    iget-object v2, v0, LaJ/x;->a:Lak/m;

    const/4 v3, 0x0

    aget-object v3, v13, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, LaJ/x;->a(LaJ/f;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lak/m;->b(Ljava/lang/String;)Z

    const/4 v2, 0x0

    aget-object v2, v13, v2

    const/4 v3, 0x0

    aget v3, v12, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, LaJ/x;->a(LaJ/f;I)V

    :cond_d9
    const/4 v2, 0x1

    :goto_da
    return v2

    :cond_db
    const v2, 0x11940

    goto :goto_b4

    :catchall_df
    move-exception v2

    :try_start_e0
    monitor-exit p0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v2

    :cond_e2
    monitor-enter p1

    :try_start_e3
    move-object/from16 v0, p0

    iget-object v3, v0, LaJ/x;->c:LaJ/D;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, LaJ/D;->b(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, LaJ/x;->a(Ljava/util/Hashtable;I)LaJ/f;
    :try_end_f2
    .catchall {:try_start_e3 .. :try_end_f2} :catchall_16a

    move-result-object v5

    :try_start_f3
    move-object/from16 v0, p0

    iget-object v2, v0, LaJ/x;->c:LaJ/D;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LaJ/D;->b(Z)V

    monitor-exit p1
    :try_end_fc
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_174

    invoke-virtual {v5}, LaJ/f;->b()I

    move-result v6

    const/16 v2, 0x1770

    if-lt v6, v2, :cond_1f2

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_106
    move-object/from16 v0, p0

    iget v3, v0, LaJ/x;->m:I

    invoke-virtual/range {p0 .. p0}, LaJ/x;->f()I

    move-result v4

    sub-int v7, v3, v4

    const/4 v3, 0x2

    new-array v8, v3, [Z

    fill-array-data v8, :array_20a

    const/4 v4, 0x0

    const/4 v3, 0x0

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    :goto_11d
    const/4 v9, 0x2

    if-ge v4, v9, :cond_148

    aget-object v9, v13, v4

    if-eqz v9, :cond_144

    aget-object v9, v13, v4

    invoke-virtual {v9}, LaJ/f;->d()Z

    move-result v9

    if-eqz v9, :cond_144

    aget-object v9, v13, v4

    invoke-virtual {v9, v14, v15}, LaJ/f;->a(J)J

    move-result-wide v9

    invoke-virtual {v5, v14, v15}, LaJ/f;->a(J)J

    move-result-wide v16

    cmp-long v9, v9, v16

    if-lez v9, :cond_144

    const/4 v9, 0x1

    aput-boolean v9, v8, v4

    aget-object v9, v13, v4

    invoke-virtual {v9}, LaJ/f;->b()I

    move-result v9

    add-int/2addr v3, v9

    :cond_144
    add-int v9, v7, v3

    if-gt v6, v9, :cond_177

    :cond_148
    invoke-virtual/range {p0 .. p0}, LaJ/x;->a()I

    move-result v4

    add-int/2addr v3, v7

    if-le v6, v3, :cond_17a

    const/4 v3, 0x2

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    :goto_155
    monitor-exit p0
    :try_end_156
    .catchall {:try_start_106 .. :try_end_156} :catchall_1ef

    if-ltz v3, :cond_165

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, LaJ/f;->a(Ljava/util/Hashtable;)[B

    move-result-object v4

    if-eqz v4, :cond_165

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v3}, LaJ/x;->a(LaJ/f;[BI)V

    :cond_165
    :goto_165
    invoke-virtual/range {p0 .. p0}, LaJ/x;->b()Z

    goto/16 :goto_da

    :catchall_16a
    move-exception v2

    :try_start_16b
    move-object/from16 v0, p0

    iget-object v3, v0, LaJ/x;->c:LaJ/D;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LaJ/D;->b(Z)V

    throw v2

    :catchall_174
    move-exception v2

    monitor-exit p1
    :try_end_176
    .catchall {:try_start_16b .. :try_end_176} :catchall_174

    throw v2

    :cond_177
    add-int/lit8 v4, v4, 0x1

    goto :goto_11d

    :cond_17a
    const/4 v3, 0x0

    :try_start_17b
    aget-boolean v3, v8, v3

    if-eqz v3, :cond_1cf

    if-gt v6, v7, :cond_187

    move-object/from16 v0, p0

    iget v3, v0, LaJ/x;->d:I

    if-lt v4, v3, :cond_1cf

    :cond_187
    const/4 v3, 0x4

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, LaJ/f;->c()I

    move-result v2

    const/4 v4, 0x0

    aget-object v4, v13, v4

    const/4 v6, 0x0

    aget v6, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, LaJ/x;->a(LaJ/f;I)V

    const/4 v4, 0x1

    aget-boolean v4, v8, v4

    if-eqz v4, :cond_1f5

    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v6, 0x1

    aget v6, v12, v6

    if-ge v4, v6, :cond_1ae

    const/4 v4, 0x1

    aget v6, v12, v4

    add-int/lit8 v6, v6, -0x1

    aput v6, v12, v4

    :cond_1ae
    move-object/from16 v0, p0

    iget-object v4, v0, LaJ/x;->a:Lak/m;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, LaJ/x;->a(LaJ/f;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lak/m;->b(Ljava/lang/String;)Z

    const/4 v4, 0x1

    aget-object v4, v13, v4

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, LaJ/x;->a(LaJ/f;I)V

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto :goto_155

    :cond_1cf
    move-object/from16 v0, p0

    iget v3, v0, LaJ/x;->d:I

    if-ge v4, v3, :cond_1e7

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v2, v0, LaJ/x;->j:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, LaJ/x;->j:I

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_155

    :cond_1e7
    const/4 v3, 0x5

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_155

    :catchall_1ef
    move-exception v2

    monitor-exit p0
    :try_end_1f1
    .catchall {:try_start_17b .. :try_end_1f1} :catchall_1ef

    throw v2

    :cond_1f2
    const/4 v2, 0x0

    goto/16 :goto_165

    :cond_1f5
    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_155

    :cond_1fc
    move v2, v11

    goto/16 :goto_91

    :cond_1ff
    move v4, v8

    goto/16 :goto_73

    :array_202
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_20a
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public a(LaJ/P;)LaJ/I;
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, LaJ/x;->b(LaJ/P;)LaJ/e;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v0, p0, LaJ/x;->g:LaJ/z;

    invoke-virtual {v0, v1, p1}, LaJ/z;->a(LaJ/e;LaJ/P;)LaJ/I;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LaJ/e;->a(J)V

    :cond_1e
    return-object v0
.end method

.method a(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LaJ/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(LaJ/f;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, LaJ/f;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaJ/x;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p0}, LaJ/x;->i()Z

    invoke-virtual {p0}, LaJ/x;->b()Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :catch_b
    move-exception v0

    :try_start_c
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget v0, p0, LaJ/x;->e:I

    if-eq p1, v0, :cond_a

    iget v0, p0, LaJ/x;->e:I

    if-ne v0, v2, :cond_12

    :cond_a
    iget v0, p0, LaJ/x;->f:I

    if-eq p2, v0, :cond_1f

    iget v0, p0, LaJ/x;->f:I

    if-eq v0, v2, :cond_1f

    :cond_12
    move v0, v1

    :goto_13
    iput p1, p0, LaJ/x;->e:I

    iput p2, p0, LaJ/x;->f:I

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, LaJ/x;->c()V

    iput-boolean v1, p0, LaJ/x;->l:Z

    :cond_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method declared-synchronized b()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, LaJ/x;->l:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_51

    if-nez v2, :cond_9

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    iget-object v2, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0xa

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v2, p0, LaJ/x;->e:I

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, p0, LaJ/x;->f:I

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v2, v1

    :goto_30
    if-ge v2, v3, :cond_3c

    invoke-direct {p0, v2}, LaJ/x;->c(I)LaJ/f;

    move-result-object v6

    invoke-virtual {v6, v5}, LaJ/f;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_51

    move-result-object v2

    :try_start_43
    iget-object v3, p0, LaJ/x;->a:Lak/m;

    iget-object v4, p0, LaJ/x;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lak/m;->a([BLjava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_51
    .catch Lak/n; {:try_start_43 .. :try_end_4a} :catch_54

    :goto_4a
    :try_start_4a
    array-length v1, v2

    iput v1, p0, LaJ/x;->k:I

    const/4 v1, 0x0

    iput-boolean v1, p0, LaJ/x;->l:Z
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_51

    goto :goto_7

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_54
    move-exception v0

    const/4 v3, 0x1

    :try_start_56
    invoke-direct {p0, v0, v3}, LaJ/x;->a(Lak/n;Z)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_51

    move v0, v1

    goto :goto_4a
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput v0, p0, LaJ/x;->k:I

    const/4 v0, 0x0

    iput v0, p0, LaJ/x;->j:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/x;->l:Z

    iget-object v0, p0, LaJ/x;->a:Lak/m;

    iget-object v1, p0, LaJ/x;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lak/m;->c(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()Z
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_3
    iget-object v0, p0, LaJ/x;->a:Lak/m;

    iget-object v3, p0, LaJ/x;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Lak/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, LaJ/x;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_12
    if-ltz v3, :cond_2f

    iget-object v0, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/f;

    invoke-virtual {p0, v0}, LaJ/x;->a(LaJ/f;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LaJ/x;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    invoke-direct {p0, v0, v3}, LaJ/x;->a(LaJ/f;I)V

    move v0, v1

    :goto_2a
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v0

    goto :goto_12

    :cond_2f
    if-eqz v4, :cond_59

    iget-object v0, p0, LaJ/x;->b:Ljava/lang/String;

    invoke-static {v0, v4}, LaJ/x;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    move v0, v2

    move v2, v1

    :goto_39
    array-length v5, v4

    if-ge v2, v5, :cond_49

    aget-object v5, v4, v2

    if-eqz v5, :cond_46

    iget-object v0, p0, LaJ/x;->a:Lak/m;

    invoke-interface {v0, v5}, Lak/m;->b(Ljava/lang/String;)Z

    move v0, v1

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_49
    move v2, v3

    :goto_4a
    invoke-virtual {p0}, LaJ/x;->a()I
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_54

    move-result v3

    if-lez v3, :cond_57

    if-nez v2, :cond_57

    :goto_52
    monitor-exit p0

    return v1

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_57
    move v1, v0

    goto :goto_52

    :cond_59
    move v0, v2

    move v2, v1

    goto :goto_4a

    :cond_5c
    move v0, v2

    goto :goto_2a
.end method

.method declared-synchronized e()I
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, LaJ/x;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_9
    if-ge v0, v2, :cond_17

    invoke-direct {p0, v0}, LaJ/x;->c(I)LaJ/f;

    move-result-object v3

    invoke-virtual {v3}, LaJ/f;->b()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_19

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    monitor-exit p0

    return v1

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, LaJ/x;->k:I

    invoke-virtual {p0}, LaJ/x;->e()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/x;->n:J

    return-void
.end method

.method public h()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/x;->n:J

    return-void
.end method

.method public i()Z
    .registers 11

    const-wide/16 v8, 0x841

    const/4 v0, 0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iget-object v3, p0, LaJ/x;->c:LaJ/D;

    invoke-virtual {v3}, LaJ/D;->a()Ljava/util/Hashtable;

    move-result-object v3

    iget-wide v4, p0, LaJ/x;->o:J

    cmp-long v4, v4, v1

    if-gez v4, :cond_3d

    iget-wide v4, p0, LaJ/x;->n:J

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    cmp-long v1, v4, v1

    if-gez v1, :cond_3d

    :try_start_24
    invoke-virtual {p0, v3}, LaJ/x;->a(Ljava/util/Hashtable;)I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_40

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    :cond_2e
    :goto_2e
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    add-long/2addr v1, v8

    iput-wide v1, p0, LaJ/x;->o:J

    :cond_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_2e

    :catchall_40
    move-exception v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    add-long/2addr v1, v8

    iput-wide v1, p0, LaJ/x;->o:J

    throw v0
.end method
