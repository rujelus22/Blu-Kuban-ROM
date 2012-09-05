.class public Lx/am;
.super Lx/d;


# static fields
.field private static final g:Ljava/util/List;


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

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lx/am;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Locale;Ljava/io/File;)V
    .registers 17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rgts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/maps/driveabout/vector/cU;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x100

    sget-object v5, Lx/am;->g:Ljava/util/List;

    const/4 v6, 0x1

    const/16 v7, 0x18

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v9, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lx/d;-><init>(Lat/h;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V

    return-void
.end method


# virtual methods
.method protected n()Lx/o;
    .registers 2

    new-instance v0, Lx/an;

    invoke-direct {v0, p0}, Lx/an;-><init>(Lx/am;)V

    return-object v0
.end method
