.class Lu/G;
.super Ljava/lang/Object;

# interfaces
.implements Lat/p;


# instance fields
.field final synthetic a:Lu/E;


# direct methods
.method private constructor <init>(Lu/E;)V
    .registers 2

    iput-object p1, p0, Lu/G;->a:Lu/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/E;Lu/F;)V
    .registers 3

    invoke-direct {p0, p1}, Lu/G;-><init>(Lu/E;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lu/G;->a:Lu/E;

    invoke-static {v0}, Lu/E;->a(Lu/E;)Lu/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu/r;->a(IZ)V

    return-void
.end method

.method public a(Lat/g;)V
    .registers 3

    instance-of v0, p1, Lu/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lu/G;->a:Lu/E;

    invoke-static {v0}, Lu/E;->a(Lu/E;)Lu/r;

    move-result-object v0

    check-cast p1, Lu/g;

    invoke-virtual {v0, p1}, Lu/r;->a(Lu/g;)V

    :cond_f
    return-void
.end method

.method public b(Lat/g;)V
    .registers 3

    instance-of v0, p1, Lu/g;

    if-eqz v0, :cond_13

    check-cast p1, Lu/g;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lu/g;->a(I)V

    iget-object v0, p0, Lu/G;->a:Lu/E;

    invoke-static {v0}, Lu/E;->a(Lu/E;)Lu/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/r;->a(Lu/g;)V

    :cond_13
    return-void
.end method
