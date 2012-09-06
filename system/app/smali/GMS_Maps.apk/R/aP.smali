.class public Lr/aP;
.super Lr/c;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/List;


# instance fields
.field protected i:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr/aP;->h:Ljava/util/List;

    .line 39
    return-void
.end method

.method public constructor <init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;IFLjava/util/Locale;ZLjava/io/File;Lr/t;)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/dg;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lr/aP;->a(Lac/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x100

    sget-object v6, Lr/aP;->h:Ljava/util/List;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v1 .. v14}, Lr/c;-><init>(Lac/p;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/dg;ILjava/util/List;IIFZLjava/util/Locale;ZLjava/io/File;Lr/t;)V

    .line 44
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lr/aP;->i:J

    .line 69
    return-void
.end method

.method private static a(Lac/p;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 78
    if-eqz p0, :cond_14

    invoke-interface {p0}, Lac/p;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "DriveAbout"

    invoke-interface {p0}, Lac/p;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 80
    :cond_14
    const-string v0, ""

    .line 85
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lac/p;->x()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method


# virtual methods
.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 165
    iput-wide p1, p0, Lr/aP;->i:J

    .line 166
    return-void
.end method

.method protected m()Lr/j;
    .registers 2

    .prologue
    .line 125
    new-instance v0, Lr/aQ;

    invoke-direct {v0, p0}, Lr/aQ;-><init>(Lr/aP;)V

    return-object v0
.end method

.method public n_()V
    .registers 2

    .prologue
    .line 114
    invoke-static {}, LaT/f;->a()V

    .line 117
    :try_start_3
    invoke-super {p0}, Lr/c;->n_()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 119
    invoke-static {}, LaT/f;->b()V

    .line 121
    return-void

    .line 119
    :catchall_a
    move-exception v0

    invoke-static {}, LaT/f;->b()V

    throw v0
.end method
