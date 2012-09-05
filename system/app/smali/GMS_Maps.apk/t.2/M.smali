.class public Lt/M;
.super Ljava/lang/Object;

# interfaces
.implements Lt/l;


# instance fields
.field private final a:Lt/af;

.field private final b:Lt/L;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lt/m;

.field private final h:Ljava/lang/String;

.field private final i:Lt/Z;

.field private final j:I

.field private final k:[I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:F

.field private p:I

.field private q:F

.field private r:F

.field private final s:[Lt/a;

.field private final t:Lt/A;

.field private final u:Lt/A;

.field private final v:[Lt/c;

.field private final w:I

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt/af;Lt/L;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lt/Z;II[I)V
    .registers 16

    const/high16 v1, -0x4080

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt/M;->p:I

    iput v1, p0, Lt/M;->q:F

    iput v1, p0, Lt/M;->r:F

    iput-object p1, p0, Lt/M;->a:Lt/af;

    iput-object p2, p0, Lt/M;->b:Lt/L;

    iput-object p6, p0, Lt/M;->f:Ljava/lang/String;

    iput-object p7, p0, Lt/M;->h:Ljava/lang/String;

    iput-object p3, p0, Lt/M;->c:Ljava/lang/String;

    iput-object p4, p0, Lt/M;->d:Ljava/lang/String;

    iput-object p5, p0, Lt/M;->e:Ljava/lang/String;

    iput-object p8, p0, Lt/M;->i:Lt/Z;

    iput p9, p0, Lt/M;->j:I

    iput p10, p0, Lt/M;->n:I

    iput-object p11, p0, Lt/M;->k:[I

    iget-object v0, p0, Lt/M;->d:Ljava/lang/String;

    invoke-static {v0}, Lt/M;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    :try_start_2b
    iget-object v0, p0, Lt/M;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lt/M;->p:I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_33} :catch_74

    :cond_33
    :goto_33
    iget v0, p0, Lt/M;->n:I

    ushr-int/lit8 v0, v0, 0x1e

    const/high16 v1, 0x3f80

    const/4 v2, 0x1

    shl-int v0, v2, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lt/M;->o:F

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    iget v1, p0, Lt/M;->n:I

    ushr-int/lit8 v1, v1, 0x1c

    and-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lt/M;->l:I

    iget v0, p0, Lt/M;->n:I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_6c

    const/16 v0, 0x1e

    iput v0, p0, Lt/M;->m:I

    :goto_5a
    iput-object v3, p0, Lt/M;->s:[Lt/a;

    iput-object v3, p0, Lt/M;->t:Lt/A;

    iput-object v3, p0, Lt/M;->u:Lt/A;

    iput-object v3, p0, Lt/M;->v:[Lt/c;

    const/4 v0, -0x1

    iput v0, p0, Lt/M;->w:I

    iput-object v3, p0, Lt/M;->x:Ljava/lang/String;

    iput-object v3, p0, Lt/M;->y:Ljava/lang/String;

    iput-object v3, p0, Lt/M;->g:Lt/m;

    return-void

    :cond_6c
    iget v1, p0, Lt/M;->l:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lt/M;->m:I

    goto :goto_5a

    :catch_74
    move-exception v0

    goto :goto_33
.end method

.method public constructor <init>(Lt/af;Lt/L;Lt/m;[Lt/a;Lt/A;Lt/A;[Lt/c;Ljava/lang/String;Lt/Z;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V
    .registers 21

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lt/M;->p:I

    const/high16 v1, -0x4080

    iput v1, p0, Lt/M;->q:F

    const/high16 v1, -0x4080

    iput v1, p0, Lt/M;->r:F

    iput-object p3, p0, Lt/M;->g:Lt/m;

    iput-object p4, p0, Lt/M;->s:[Lt/a;

    iput-object p5, p0, Lt/M;->t:Lt/A;

    iput-object p6, p0, Lt/M;->u:Lt/A;

    iput-object p7, p0, Lt/M;->v:[Lt/c;

    iput-object p8, p0, Lt/M;->e:Ljava/lang/String;

    iput-object p9, p0, Lt/M;->i:Lt/Z;

    iput p10, p0, Lt/M;->w:I

    iput-object p11, p0, Lt/M;->x:Ljava/lang/String;

    iput p12, p0, Lt/M;->j:I

    iput p13, p0, Lt/M;->l:I

    const/4 v1, -0x1

    move/from16 v0, p14

    if-ne v0, v1, :cond_2b

    const/16 p14, 0x1e

    :cond_2b
    move/from16 v0, p14

    iput v0, p0, Lt/M;->m:I

    move/from16 v0, p15

    iput v0, p0, Lt/M;->n:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lt/M;->y:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lt/M;->c:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lt/M;->k:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lt/M;->f:Ljava/lang/String;

    iput-object p1, p0, Lt/M;->a:Lt/af;

    iput-object p2, p0, Lt/M;->b:Lt/L;

    const/4 v1, 0x0

    iput-object v1, p0, Lt/M;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lt/M;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lt/M;->o:F

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "(?i)<img.*?alt=\"(.*?)\".*?>"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)<img.*?alt=\'(.*?)\'.*?>"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)<img.*?alt=([^>\\s]*).*?>"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)<img.*?>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/M;
    .registers 33

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ge v0, v3, :cond_6f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lt/L;->a(Ljava/io/DataInput;Lt/af;)Lt/L;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/co;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lt/aa;->a(I)Lt/Z;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v12

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v13

    const-string v10, ""

    const/4 v3, 0x0

    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_59

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    :cond_59
    new-array v14, v3, [I

    const/4 v4, 0x0

    :goto_5c
    if-ge v4, v3, :cond_67

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v15

    aput v15, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_67
    new-instance v3, Lt/M;

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v14}, Lt/M;-><init>(Lt/af;Lt/L;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lt/Z;II[I)V

    :goto_6e
    return-object v3

    :cond_6f
    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v13, v4, [Lt/a;

    const/4 v3, 0x0

    :goto_76
    if-ge v3, v4, :cond_87

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lt/a;->a(Ljava/io/DataInput;Lt/af;I)Lt/a;

    move-result-object v5

    aput-object v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    :cond_87
    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v3}, Lt/a;->b()Lt/L;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lt/aa;->a(I)Lt/Z;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v19

    const/4 v8, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lt/H;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    aget-object v8, p4, v19

    :cond_a9
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, Lt/A;->a(Ljava/io/DataInput;ILt/aa;[Ljava/lang/String;Lt/Z;Ljava/lang/String;)Lt/A;

    move-result-object v14

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, Lt/A;->a(Ljava/io/DataInput;ILt/aa;[Ljava/lang/String;Lt/Z;Ljava/lang/String;)Lt/A;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v0, v4, [Lt/c;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    :goto_ca
    if-ge v3, v4, :cond_d5

    invoke-static/range {p0 .. p1}, Lt/c;->b(Ljava/io/DataInput;I)Lt/c;

    move-result-object v5

    aput-object v5, v16, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    :cond_d5
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v21

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v22

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v23

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v24

    const/4 v12, 0x0

    const/4 v3, 0x1

    move/from16 v0, v24

    invoke-static {v3, v0}, Lt/H;->a(II)Z

    move-result v3

    if-eqz v3, :cond_131

    invoke-static/range {p0 .. p0}, Lt/m;->a(Ljava/io/DataInput;)Lt/m;

    move-result-object v12

    :cond_f3
    :goto_f3
    const/16 v17, 0x0

    invoke-static/range {v24 .. v24}, Lt/M;->a(I)Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/co;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17

    :cond_107
    const/16 v25, 0x0

    invoke-static/range {v24 .. v24}, Lt/M;->c(I)Z

    move-result v3

    if-eqz v3, :cond_113

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v25

    :cond_113
    invoke-static/range {v24 .. v24}, Lt/M;->b(I)Z

    move-result v3

    if-eqz v3, :cond_13f

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v26

    :goto_11d
    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v27, v0

    const/4 v3, 0x0

    :goto_126
    if-ge v3, v4, :cond_178

    invoke-static/range {p0 .. p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v5

    aput v5, v27, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_126

    :cond_131
    const/4 v3, 0x2

    move/from16 v0, v24

    invoke-static {v3, v0}, Lt/H;->a(II)Z

    move-result v3

    if-eqz v3, :cond_f3

    invoke-static/range {p0 .. p0}, Lt/m;->b(Ljava/io/DataInput;)Lt/m;

    move-result-object v12

    goto :goto_f3

    :cond_13f
    invoke-virtual {v14}, Lt/A;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lt/A;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_166

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_166

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_11d

    :cond_178
    new-instance v9, Lt/M;

    move-object/from16 v10, p2

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v9 .. v27}, Lt/M;-><init>(Lt/af;Lt/L;Lt/m;[Lt/a;Lt/A;Lt/A;[Lt/c;Ljava/lang/String;Lt/Z;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V

    move-object v3, v9

    goto/16 :goto_6e
.end method

.method private static a(I)Z
    .registers 2

    const/16 v0, 0x20

    invoke-static {v0, p0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .registers 2

    const/16 v0, 0x80

    invoke-static {v0, p0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_1e

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static c(I)Z
    .registers 2

    const/16 v0, 0x40

    invoke-static {v0, p0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lt/m;
    .registers 2

    iget-object v0, p0, Lt/M;->g:Lt/m;

    return-object v0
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lt/M;->q:F

    return-void
.end method

.method public b(F)V
    .registers 2

    iput p1, p0, Lt/M;->r:F

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lt/M;->t:Lt/A;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Lt/af;
    .registers 2

    iget-object v0, p0, Lt/M;->a:Lt/af;

    return-object v0
.end method

.method public d()Lt/L;
    .registers 2

    iget-object v0, p0, Lt/M;->b:Lt/L;

    return-object v0
.end method

.method public e()Lt/Z;
    .registers 2

    iget-object v0, p0, Lt/M;->i:Lt/Z;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/M;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/M;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lt/M;->j:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lt/M;->p:I

    return v0
.end method

.method public k()[I
    .registers 2

    iget-object v0, p0, Lt/M;->k:[I

    return-object v0
.end method

.method public l()I
    .registers 8

    const/4 v2, 0x0

    const/16 v0, 0x70

    iget-object v1, p0, Lt/M;->c:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lt/M;->c:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lt/M;->d:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lt/M;->d:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lt/M;->e:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lt/M;->e:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lt/M;->f:Ljava/lang/String;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lt/M;->f:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget-object v1, p0, Lt/M;->h:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lt/M;->h:Ljava/lang/String;

    invoke-static {v1}, Lt/H;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3a
    iget-object v1, p0, Lt/M;->s:[Lt/a;

    if-eqz v1, :cond_51

    iget-object v5, p0, Lt/M;->s:[Lt/a;

    array-length v6, v5

    move v3, v2

    move v1, v2

    :goto_43
    if-ge v3, v6, :cond_52

    aget-object v4, v5, v3

    invoke-virtual {v4}, Lt/a;->d()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_43

    :cond_51
    move v1, v2

    :cond_52
    iget-object v3, p0, Lt/M;->v:[Lt/c;

    if-eqz v3, :cond_68

    iget-object v5, p0, Lt/M;->v:[Lt/c;

    array-length v6, v5

    move v3, v2

    :goto_5a
    if-ge v3, v6, :cond_68

    aget-object v4, v5, v3

    invoke-virtual {v4}, Lt/c;->c()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_5a

    :cond_68
    add-int/2addr v1, v2

    iget-object v2, p0, Lt/M;->t:Lt/A;

    invoke-static {v2}, Lt/H;->a(Lt/A;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lt/M;->u:Lt/A;

    invoke-static {v2}, Lt/H;->a(Lt/A;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lt/M;->g:Lt/m;

    invoke-static {v2}, Lt/H;->a(Lt/m;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lt/M;->i:Lt/Z;

    invoke-static {v2}, Lt/H;->a(Lt/Z;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lt/M;->x:Ljava/lang/String;

    invoke-static {v2}, Lt/H;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lt/M;->y:Ljava/lang/String;

    invoke-static {v2}, Lt/H;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/M;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/M;->e:Ljava/lang/String;

    invoke-static {v0}, Lt/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/M;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p()F
    .registers 2

    iget v0, p0, Lt/M;->o:F

    return v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lt/M;->l:I

    return v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lt/M;->m:I

    return v0
.end method

.method public s()F
    .registers 2

    iget v0, p0, Lt/M;->q:F

    return v0
.end method

.method public t()F
    .registers 2

    iget v0, p0, Lt/M;->r:F

    return v0
.end method

.method public u()[Lt/a;
    .registers 2

    iget-object v0, p0, Lt/M;->s:[Lt/a;

    return-object v0
.end method

.method public v()Lt/A;
    .registers 2

    iget-object v0, p0, Lt/M;->t:Lt/A;

    return-object v0
.end method

.method public w()Lt/A;
    .registers 2

    iget-object v0, p0, Lt/M;->u:Lt/A;

    return-object v0
.end method

.method public x()[Lt/c;
    .registers 2

    iget-object v0, p0, Lt/M;->v:[Lt/c;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/M;->y:Ljava/lang/String;

    return-object v0
.end method

.method public z()Z
    .registers 3

    const/16 v0, 0x10

    iget v1, p0, Lt/M;->n:I

    invoke-static {v0, v1}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method
