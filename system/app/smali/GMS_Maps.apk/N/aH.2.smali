.class public Ln/aH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ln/am;

.field private b:I

.field private c:B

.field private d:I

.field private e:[Ln/l;

.field private f:Ln/ah;

.field private g:[Ljava/lang/String;

.field private h:J

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:I

.field private l:Lcom/google/android/maps/driveabout/vector/dg;

.field private m:[Ln/aC;

.field private n:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v0, p0, Ln/aH;->d:I

    .line 120
    iput-wide v1, p0, Ln/aH;->h:J

    .line 123
    iput v0, p0, Ln/aH;->k:I

    .line 124
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    iput-object v0, p0, Ln/aH;->l:Lcom/google/android/maps/driveabout/vector/dg;

    .line 126
    iput-wide v1, p0, Ln/aH;->n:J

    return-void
.end method


# virtual methods
.method public a()Ln/aF;
    .registers 20

    .prologue
    .line 199
    new-instance v2, Ln/aF;

    move-object/from16 v0, p0

    iget-object v3, v0, Ln/aH;->f:Ln/ah;

    move-object/from16 v0, p0

    iget-object v4, v0, Ln/aH;->g:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Ln/aH;->a:Ln/am;

    move-object/from16 v0, p0

    iget v6, v0, Ln/aH;->b:I

    move-object/from16 v0, p0

    iget-byte v7, v0, Ln/aH;->c:B

    move-object/from16 v0, p0

    iget v8, v0, Ln/aH;->d:I

    move-object/from16 v0, p0

    iget-object v9, v0, Ln/aH;->i:[Ljava/lang/String;

    if-nez v9, :cond_4f

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    :goto_23
    move-object/from16 v0, p0

    iget-object v10, v0, Ln/aH;->j:[Ljava/lang/String;

    if-nez v10, :cond_54

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    :goto_2c
    move-object/from16 v0, p0

    iget v11, v0, Ln/aH;->k:I

    move-object/from16 v0, p0

    iget-object v12, v0, Ln/aH;->e:[Ln/l;

    if-nez v12, :cond_59

    const/4 v12, 0x0

    new-array v12, v12, [Ln/l;

    :goto_39
    move-object/from16 v0, p0

    iget-object v13, v0, Ln/aH;->l:Lcom/google/android/maps/driveabout/vector/dg;

    move-object/from16 v0, p0

    iget-object v14, v0, Ln/aH;->m:[Ln/aC;

    move-object/from16 v0, p0

    iget-wide v15, v0, Ln/aH;->h:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Ln/aH;->n:J

    move-wide/from16 v17, v0

    invoke-direct/range {v2 .. v18}, Ln/aF;-><init>(Ln/ah;[Ljava/lang/String;Ln/am;IBI[Ljava/lang/String;[Ljava/lang/String;I[Ln/l;Lcom/google/android/maps/driveabout/vector/dg;[Ln/aC;JJ)V

    return-object v2

    :cond_4f
    move-object/from16 v0, p0

    iget-object v9, v0, Ln/aH;->i:[Ljava/lang/String;

    goto :goto_23

    :cond_54
    move-object/from16 v0, p0

    iget-object v10, v0, Ln/aH;->j:[Ljava/lang/String;

    goto :goto_2c

    :cond_59
    move-object/from16 v0, p0

    iget-object v12, v0, Ln/aH;->e:[Ln/l;

    goto :goto_39
.end method

.method public a(I)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 144
    iput p1, p0, Ln/aH;->d:I

    .line 145
    return-object p0
.end method

.method public a(J)Ln/aH;
    .registers 3
    .parameter

    .prologue
    .line 139
    iput-wide p1, p0, Ln/aH;->h:J

    .line 140
    return-object p0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Ln/aH;->l:Lcom/google/android/maps/driveabout/vector/dg;

    .line 185
    return-object p0
.end method

.method public a(Ln/ah;)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Ln/aH;->f:Ln/ah;

    .line 130
    return-object p0
.end method

.method public a(Ln/am;)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Ln/aH;->a:Ln/am;

    .line 155
    return-object p0
.end method

.method public a([Ljava/lang/String;)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Ln/aH;->i:[Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public a([Ln/l;)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Ln/aH;->e:[Ln/l;

    .line 180
    return-object p0
.end method

.method public b(I)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 159
    iput p1, p0, Ln/aH;->b:I

    .line 160
    return-object p0
.end method

.method public b(J)Ln/aH;
    .registers 3
    .parameter

    .prologue
    .line 149
    iput-wide p1, p0, Ln/aH;->n:J

    .line 150
    return-object p0
.end method

.method public b([Ljava/lang/String;)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Ln/aH;->j:[Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public c(I)Ln/aH;
    .registers 2
    .parameter

    .prologue
    .line 174
    iput p1, p0, Ln/aH;->k:I

    .line 175
    return-object p0
.end method
