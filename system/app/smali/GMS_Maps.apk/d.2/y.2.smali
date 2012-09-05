.class Ld/y;
.super Landroid/os/Handler;


# instance fields
.field protected final a:Lm/c;

.field private final b:Ld/F;

.field private final c:Landroid/os/Handler;

.field private final d:I

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ld/F;Landroid/os/Handler;ILm/c;)V
    .registers 6

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ld/z;

    invoke-direct {v0, p0}, Ld/z;-><init>(Ld/y;)V

    iput-object v0, p0, Ld/y;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Ld/y;->b:Ld/F;

    iput-object p2, p0, Ld/y;->c:Landroid/os/Handler;

    iput p3, p0, Ld/y;->d:I

    invoke-static {p4}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/y;->a:Lm/c;

    return-void
.end method

.method static synthetic a(Ld/y;)Ld/F;
    .registers 2

    iget-object v0, p0, Ld/y;->b:Ld/F;

    return-object v0
.end method

.method static synthetic b(Ld/y;)I
    .registers 2

    iget v0, p0, Ld/y;->d:I

    return v0
.end method

.method static synthetic c(Ld/y;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Ld/y;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Ld/y;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ld/y;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(FFFF)V
    .registers 6

    iget-object v0, p0, Ld/y;->b:Ld/F;

    invoke-virtual {v0, p1, p2, p3, p4}, Ld/F;->a(FFFF)V

    return-void
.end method

.method a(IFFFIJJ)V
    .registers 19

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Ld/y;->b:Ld/F;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Ld/F;->a(FFFIJJ)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Ld/y;->b:Ld/F;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Ld/F;->b(FFFIJJ)V

    goto :goto_f

    :cond_20
    const/4 v0, 0x2

    if-ne p1, v0, :cond_30

    iget-object v0, p0, Ld/y;->b:Ld/F;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Ld/F;->c(FFFIJJ)V

    goto :goto_f

    :cond_30
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Ld/y;->b:Ld/F;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Ld/F;->d(FFFIJJ)V

    goto :goto_f
.end method

.method public a(Landroid/location/GpsStatus;J)V
    .registers 5

    invoke-static {p1}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld/y;->b:Ld/F;

    invoke-virtual {v0, p1, p2, p3}, Ld/F;->a(Landroid/location/GpsStatus;J)V

    return-void
.end method

.method a(Landroid/location/Location;J)V
    .registers 5

    invoke-static {p1}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld/y;->b:Ld/F;

    invoke-virtual {v0, p1, p2, p3}, Ld/F;->a(Landroid/location/Location;J)Z

    return-void
.end method

.method a(Ld/al;)V
    .registers 3

    new-instance v0, Ld/A;

    invoke-direct {v0, p0, p1}, Ld/A;-><init>(Ld/y;Ld/al;)V

    invoke-virtual {p0, v0}, Ld/y;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Ljava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V
    .registers 14

    iget-object v0, p0, Ld/y;->b:Ld/F;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ld/F;->a(Ljava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V

    return-void
.end method

.method a(Ljava/util/List;J)V
    .registers 5

    invoke-static {p1}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ld/B;

    invoke-direct {v0, p0, p1, p2, p3}, Ld/B;-><init>(Ld/y;Ljava/util/List;J)V

    invoke-virtual {p0, v0}, Ld/y;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
