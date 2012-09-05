.class public Lz/k;
.super Ljava/lang/Object;

# interfaces
.implements Lat/p;


# instance fields
.field private volatile a:I

.field private final b:Lat/h;


# direct methods
.method public constructor <init>(Lat/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz/k;->a:I

    iput-object p1, p0, Lz/k;->b:Lat/h;

    return-void
.end method

.method private a()V
    .registers 8

    new-instance v0, LC/i;

    iget v1, p0, Lz/k;->a:I

    iget-object v2, p0, Lz/k;->b:Lat/h;

    invoke-virtual {v2}, Lat/h;->p()I

    move-result v2

    iget-object v3, p0, Lz/k;->b:Lat/h;

    invoke-virtual {v3}, Lat/h;->q()I

    move-result v3

    iget-object v4, p0, Lz/k;->b:Lat/h;

    invoke-virtual {v4}, Lat/h;->m()J

    move-result-wide v4

    iget-object v6, p0, Lz/k;->b:Lat/h;

    invoke-virtual {v6}, Lat/h;->r()I

    move-result v6

    invoke-direct/range {v0 .. v6}, LC/i;-><init>(IIIJI)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .registers 5

    new-instance v0, LC/h;

    invoke-direct {v0, p1, p2}, LC/h;-><init>(IZ)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    invoke-direct {p0}, Lz/k;->a()V

    return-void
.end method

.method public a(Lat/g;)V
    .registers 4

    new-instance v0, LC/g;

    const-string v1, "onComplete"

    invoke-direct {v0, v1, p1}, LC/g;-><init>(Ljava/lang/String;Lat/g;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget v0, p0, Lz/k;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/k;->a:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_17

    invoke-direct {p0}, Lz/k;->a()V

    :cond_17
    return-void
.end method

.method public b(Lat/g;)V
    .registers 2

    return-void
.end method
