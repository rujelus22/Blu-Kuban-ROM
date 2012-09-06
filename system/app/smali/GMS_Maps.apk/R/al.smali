.class public Lr/al;
.super Lr/c;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr/al;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Locale;Ljava/io/File;Lr/t;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rgts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/dg;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x100

    sget-object v6, Lr/al;->h:Ljava/util/List;

    const/4 v7, 0x1

    const/16 v8, 0x18

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v1 .. v14}, Lr/c;-><init>(Lac/p;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/dg;ILjava/util/List;IIFZLjava/util/Locale;ZLjava/io/File;Lr/t;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected m()Lr/j;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lr/am;

    invoke-direct {v0, p0}, Lr/am;-><init>(Lr/al;)V

    return-object v0
.end method
