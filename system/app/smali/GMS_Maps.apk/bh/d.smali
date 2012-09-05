.class public Lbh/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;


# instance fields
.field private final i:Lbh/f;

.field private final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_flakes_grid"

    aput-object v1, v0, v2

    sput-object v0, Lbh/d;->a:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "weather_cloud_light_0_50pct"

    aput-object v1, v0, v2

    const-string v1, "weather_cloud_light_1_50pct"

    aput-object v1, v0, v3

    const-string v1, "weather_cloud_light_2_50pct"

    aput-object v1, v0, v4

    const-string v1, "weather_cloud_light_3_50pct"

    aput-object v1, v0, v5

    const-string v1, "weather_cloud_light_4_50pct"

    aput-object v1, v0, v6

    sput-object v0, Lbh/d;->b:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "weather_cloud_heavy_01"

    aput-object v1, v0, v2

    const-string v1, "weather_cloud_heavy_02"

    aput-object v1, v0, v3

    const-string v1, "weather_cloud_heavy_03"

    aput-object v1, v0, v4

    const-string v1, "weather_cloud_heavy_04"

    aput-object v1, v0, v5

    const-string v1, "weather_cloud_heavy_05"

    aput-object v1, v0, v6

    sput-object v0, Lbh/d;->c:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lbh/d;->d:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_fog"

    aput-object v1, v0, v2

    sput-object v0, Lbh/d;->e:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_lightning_01b"

    aput-object v1, v0, v2

    sput-object v0, Lbh/d;->f:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_tilecover"

    aput-object v1, v0, v2

    sput-object v0, Lbh/d;->g:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "weather_icon_grid"

    aput-object v1, v0, v2

    sput-object v0, Lbh/d;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbh/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbh/d;->i:Lbh/f;

    new-instance v0, Lbh/e;

    invoke-direct {v0, p0}, Lbh/e;-><init>(Lbh/d;)V

    iput-object v0, p0, Lbh/d;->j:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hosted_images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbh/d;)Z
    .registers 2

    invoke-direct {p0}, Lbh/d;->h()Z

    move-result v0

    return v0
.end method

.method private a(Z[Ljava/lang/String;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    array-length v3, p2

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_1f

    aget-object v4, p2, v2

    invoke-direct {p0, v4}, Lbh/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/ui/aN;->c(Ljava/lang/String;)Lah/f;

    move-result-object v5

    if-nez v5, :cond_1c

    if-eqz p1, :cond_1b

    invoke-direct {p0, v4}, Lbh/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aN;->a(Ljava/lang/String;)V

    :cond_1b
    move v0, v1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1f
    return v0
.end method

.method private a([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .registers 6

    array-length v0, p1

    new-array v2, v0, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    array-length v0, p1

    if-ge v1, v0, :cond_41

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lbh/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aN;->c(Ljava/lang/String;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not loaded!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_41
    return-object v2
.end method

.method static synthetic b(Lbh/d;)Lbh/f;
    .registers 2

    iget-object v0, p0, Lbh/d;->i:Lbh/f;

    return-object v0
.end method

.method private h()Z
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lbh/d;->a:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lbh/d;->b:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lbh/d;->c:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lbh/d;->d:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lbh/d;->e:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lbh/d;->f:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lbh/d;->g:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lbh/d;->h:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    :cond_42
    return v0
.end method


# virtual methods
.method public a()Z
    .registers 6

    const/4 v2, 0x1

    invoke-direct {p0}, Lbh/d;->h()Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v1, Lbh/d;->a:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lbh/d;->b:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lbh/d;->c:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lbh/d;->d:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lbh/d;->e:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lbh/d;->f:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lbh/d;->g:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    sget-object v1, Lbh/d;->h:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lbh/d;->a(Z[Ljava/lang/String;)Z

    iget-object v1, p0, Lbh/d;->j:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_37
    return v0
.end method

.method public b()[Landroid/graphics/Bitmap;
    .registers 2

    sget-object v0, Lbh/d;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lbh/d;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()[Landroid/graphics/Bitmap;
    .registers 2

    sget-object v0, Lbh/d;->b:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lbh/d;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public d()[Landroid/graphics/Bitmap;
    .registers 2

    sget-object v0, Lbh/d;->f:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lbh/d;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public e()[Landroid/graphics/Bitmap;
    .registers 2

    sget-object v0, Lbh/d;->c:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lbh/d;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public f()[Landroid/graphics/Bitmap;
    .registers 2

    sget-object v0, Lbh/d;->e:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lbh/d;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/graphics/Bitmap;
    .registers 3

    sget-object v0, Lbh/d;->h:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lbh/d;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
