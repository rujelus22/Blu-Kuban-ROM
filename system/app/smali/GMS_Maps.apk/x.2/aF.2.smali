.class public Lx/aF;
.super Lx/d;


# static fields
.field private static final g:Ljava/util/List;


# instance fields
.field protected h:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lx/aF;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/Locale;ZLjava/io/File;)V
    .registers 19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/maps/driveabout/vector/cU;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lx/aF;->a(Lat/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x100

    sget-object v5, Lx/aF;->g:Ljava/util/List;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v7, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lx/d;-><init>(Lat/h;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lx/aF;->h:J

    return-void
.end method

.method private static a(Lat/h;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lat/h;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "DriveAbout"

    invoke-virtual {p0}, Lat/h;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_14
    const-string v0, ""

    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lat/h;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-static {}, Lbf/e;->a()V

    :try_start_3
    invoke-super {p0}, Lx/d;->a()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    invoke-static {}, Lbf/e;->b()V

    return-void

    :catchall_a
    move-exception v0

    invoke-static {}, Lbf/e;->b()V

    throw v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lx/aF;->h:J

    return-void
.end method

.method protected n()Lx/o;
    .registers 2

    new-instance v0, Lx/aG;

    invoke-direct {v0, p0}, Lx/aG;-><init>(Lx/aF;)V

    return-object v0
.end method
