.class public Lbb/y;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lbb/n;

.field public final d:[Lcom/google/googlenav/ui/bh;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Z

.field public final i:Lbb/c;

.field public final j:Lbb/c;

.field public final k:Ljava/util/Vector;

.field public final l:Z

.field public final m:Z

.field public final n:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/lang/String;Ljava/lang/String;IZZZLbb/c;Lbb/c;Ljava/util/Vector;[B)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb/y;->a:Ljava/lang/String;

    iput-object p2, p0, Lbb/y;->b:Ljava/lang/String;

    iput-object p3, p0, Lbb/y;->c:Lbb/n;

    iput-object p4, p0, Lbb/y;->d:[Lcom/google/googlenav/ui/bh;

    iput-object p5, p0, Lbb/y;->e:Ljava/lang/String;

    iput-object p6, p0, Lbb/y;->f:Ljava/lang/String;

    iput p7, p0, Lbb/y;->g:I

    iput-boolean p8, p0, Lbb/y;->h:Z

    iput-boolean p9, p0, Lbb/y;->l:Z

    iput-boolean p10, p0, Lbb/y;->m:Z

    iput-object p11, p0, Lbb/y;->i:Lbb/c;

    iput-object p12, p0, Lbb/y;->j:Lbb/c;

    iput-object p13, p0, Lbb/y;->k:Ljava/util/Vector;

    iput-object p14, p0, Lbb/y;->n:[B

    return-void
.end method

.method public static a(Ljava/lang/String;Lbb/n;Ljava/lang/String;Ljava/lang/String;IZ)Lbb/y;
    .registers 18

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v11}, Lbb/y;->a(Ljava/lang/String;Lbb/n;Ljava/lang/String;Ljava/lang/String;IZZZLbb/c;Lbb/c;Ljava/util/Vector;[B)Lbb/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lbb/n;Ljava/lang/String;Ljava/lang/String;IZZZLbb/c;Lbb/c;Ljava/util/Vector;[B)Lbb/y;
    .registers 27

    new-instance v0, Lbb/y;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lbb/y;-><init>(Ljava/lang/String;Ljava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/lang/String;Ljava/lang/String;IZZZLbb/c;Lbb/c;Ljava/util/Vector;[B)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lbb/y;->d:[Lcom/google/googlenav/ui/bh;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbb/y;->d:[Lcom/google/googlenav/ui/bh;

    array-length v0, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
