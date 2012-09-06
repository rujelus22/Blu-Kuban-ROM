.class public Lr/I;
.super Lr/c;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr/I;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;IIFLjava/util/Locale;Ljava/io/File;Lr/t;)V
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
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "its"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/dg;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x100

    sget-object v6, Lr/I;->h:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v1 .. v14}, Lr/c;-><init>(Lac/p;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/dg;ILjava/util/List;IIFZLjava/util/Locale;ZLjava/io/File;Lr/t;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected m()Lr/j;
    .registers 2

    .prologue
    .line 59
    new-instance v0, Lr/J;

    invoke-direct {v0, p0}, Lr/J;-><init>(Lr/I;)V

    return-object v0
.end method
