.class LaZ/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cK;


# instance fields
.field final synthetic a:LaZ/n;


# direct methods
.method constructor <init>(LaZ/n;)V
    .registers 2

    iput-object p1, p0, LaZ/o;->a:LaZ/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 4

    iget-object v0, p0, LaZ/o;->a:LaZ/n;

    invoke-static {v0}, LaZ/n;->a(LaZ/n;)LaJ/u;

    move-result-object v0

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    if-nez p1, :cond_25

    iget-object v0, p0, LaZ/o;->a:LaZ/n;

    invoke-static {v0}, LaZ/n;->b(LaZ/n;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x293

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method
