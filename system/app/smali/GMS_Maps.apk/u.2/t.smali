.class Lu/t;
.super Lz/c;


# instance fields
.field final synthetic a:Lu/r;


# direct methods
.method constructor <init>(Lu/r;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lu/t;->a:Lu/r;

    invoke-direct {p0, p2}, Lz/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lu/t;->a:Lu/r;

    invoke-static {v0}, Lu/r;->a(Lu/r;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lu/t;->a:Lu/r;

    invoke-static {v0}, Lu/r;->c(Lu/r;)Lu/p;

    move-result-object v0

    iget-object v1, p0, Lu/t;->a:Lu/r;

    invoke-static {v1}, Lu/r;->b(Lu/r;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/p;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lu/t;->a:Lu/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/r;->a(Lu/r;Landroid/location/Location;)Landroid/location/Location;

    :cond_1d
    iget-object v0, p0, Lu/t;->a:Lu/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/r;->a(Lu/r;Z)Z

    return-void
.end method
