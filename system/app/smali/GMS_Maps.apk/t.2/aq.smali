.class public Lt/aq;
.super Ljava/lang/Object;


# instance fields
.field private a:Lt/af;

.field private b:I

.field private c:I

.field private d:[Lt/l;

.field private e:Lt/aa;

.field private f:[Ljava/lang/String;

.field private g:J

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:I

.field private k:Lcom/google/android/maps/driveabout/vector/cU;

.field private l:[Lt/al;

.field private m:J


# direct methods
.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lt/aq;->c:I

    iput-wide v1, p0, Lt/aq;->g:J

    iput v0, p0, Lt/aq;->j:I

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    iput-object v0, p0, Lt/aq;->k:Lcom/google/android/maps/driveabout/vector/cU;

    iput-wide v1, p0, Lt/aq;->m:J

    return-void
.end method


# virtual methods
.method public a()Lt/ao;
    .registers 18

    new-instance v1, Lt/ao;

    move-object/from16 v0, p0

    iget-object v2, v0, Lt/aq;->e:Lt/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lt/aq;->f:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lt/aq;->a:Lt/af;

    move-object/from16 v0, p0

    iget v5, v0, Lt/aq;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lt/aq;->c:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lt/aq;->h:[Ljava/lang/String;

    if-nez v7, :cond_49

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    :goto_1f
    move-object/from16 v0, p0

    iget-object v8, v0, Lt/aq;->i:[Ljava/lang/String;

    if-nez v8, :cond_4e

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    :goto_28
    move-object/from16 v0, p0

    iget v9, v0, Lt/aq;->j:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lt/aq;->d:[Lt/l;

    if-nez v10, :cond_53

    const/4 v10, 0x0

    new-array v10, v10, [Lt/l;

    :goto_35
    move-object/from16 v0, p0

    iget-object v11, v0, Lt/aq;->k:Lcom/google/android/maps/driveabout/vector/cU;

    move-object/from16 v0, p0

    iget-object v12, v0, Lt/aq;->l:[Lt/al;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lt/aq;->g:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lt/aq;->m:J

    invoke-direct/range {v1 .. v16}, Lt/ao;-><init>(Lt/aa;[Ljava/lang/String;Lt/af;II[Ljava/lang/String;[Ljava/lang/String;I[Lt/l;Lcom/google/android/maps/driveabout/vector/cU;[Lt/al;JJ)V

    return-object v1

    :cond_49
    move-object/from16 v0, p0

    iget-object v7, v0, Lt/aq;->h:[Ljava/lang/String;

    goto :goto_1f

    :cond_4e
    move-object/from16 v0, p0

    iget-object v8, v0, Lt/aq;->i:[Ljava/lang/String;

    goto :goto_28

    :cond_53
    move-object/from16 v0, p0

    iget-object v10, v0, Lt/aq;->d:[Lt/l;

    goto :goto_35
.end method

.method public a(I)Lt/aq;
    .registers 2

    iput p1, p0, Lt/aq;->c:I

    return-object p0
.end method

.method public a(J)Lt/aq;
    .registers 3

    iput-wide p1, p0, Lt/aq;->g:J

    return-object p0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cU;)Lt/aq;
    .registers 2

    iput-object p1, p0, Lt/aq;->k:Lcom/google/android/maps/driveabout/vector/cU;

    return-object p0
.end method

.method public a(Lt/aa;)Lt/aq;
    .registers 2

    iput-object p1, p0, Lt/aq;->e:Lt/aa;

    return-object p0
.end method

.method public a(Lt/af;)Lt/aq;
    .registers 2

    iput-object p1, p0, Lt/aq;->a:Lt/af;

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lt/aq;
    .registers 2

    iput-object p1, p0, Lt/aq;->h:[Ljava/lang/String;

    return-object p0
.end method

.method public a([Lt/l;)Lt/aq;
    .registers 2

    iput-object p1, p0, Lt/aq;->d:[Lt/l;

    return-object p0
.end method

.method public b(I)Lt/aq;
    .registers 2

    iput p1, p0, Lt/aq;->b:I

    return-object p0
.end method

.method public b(J)Lt/aq;
    .registers 3

    iput-wide p1, p0, Lt/aq;->m:J

    return-object p0
.end method

.method public b([Ljava/lang/String;)Lt/aq;
    .registers 2

    iput-object p1, p0, Lt/aq;->i:[Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lt/aq;
    .registers 2

    iput p1, p0, Lt/aq;->j:I

    return-object p0
.end method
