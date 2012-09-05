.class Lat/k;
.super Lat/a;


# instance fields
.field final synthetic a:Lat/h;


# direct methods
.method private constructor <init>(Lat/h;)V
    .registers 2

    iput-object p1, p0, Lat/k;->a:Lat/h;

    invoke-direct {p0}, Lat/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lat/h;Lat/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lat/k;-><init>(Lat/h;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5

    iget-object v0, p0, Lat/k;->a:Lat/h;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lat/h;->c(Lat/h;J)J

    iget-object v0, p0, Lat/k;->a:Lat/h;

    invoke-static {v0}, Lat/h;->e(Lat/h;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lat/h;->b(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public l_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
