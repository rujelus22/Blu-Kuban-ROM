.class final LaZ/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aB;


# instance fields
.field final synthetic a:LaY/G;

.field final synthetic b:LaY/i;

.field final synthetic c:I

.field final synthetic d:LaZ/j;

.field final synthetic e:Lt/L;


# direct methods
.method constructor <init>(LaY/G;LaY/i;ILaZ/j;Lt/L;)V
    .registers 6

    iput-object p1, p0, LaZ/f;->a:LaY/G;

    iput-object p2, p0, LaZ/f;->b:LaY/i;

    iput p3, p0, LaZ/f;->c:I

    iput-object p4, p0, LaZ/f;->d:LaZ/j;

    iput-object p5, p0, LaZ/f;->e:Lt/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/L;)V
    .registers 5

    iget-object v0, p0, LaZ/f;->a:LaY/G;

    invoke-virtual {v0}, LaY/G;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lau/b;

    invoke-static {p1}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v1

    iget-object v2, p0, LaZ/f;->b:LaY/i;

    invoke-virtual {v2, v1}, LaY/i;->a(LaJ/B;)Lt/y;

    move-result-object v2

    invoke-static {v1, v2}, Lau/x;->a(LaJ/B;Lt/y;)Lau/x;

    move-result-object v2

    iget v1, p0, LaZ/f;->c:I

    if-nez v1, :cond_4a

    new-instance v1, Lau/j;

    invoke-virtual {v0}, Lau/b;->au()Lau/x;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lau/j;-><init>(Lau/x;Lau/x;)V

    move-object v0, v1

    :goto_24
    iget-object v1, p0, LaZ/f;->a:LaY/G;

    invoke-virtual {v1, v0}, LaY/G;->a(Lau/j;)Lau/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lau/b;->a(Z)V

    new-instance v1, LaZ/g;

    invoke-direct {v1, p0}, LaZ/g;-><init>(LaZ/f;)V

    invoke-virtual {v0, v1}, Lau/b;->a(Lau/e;)V

    iget-object v1, p0, LaZ/f;->a:LaY/G;

    invoke-virtual {v1, v0}, LaY/G;->c(Lau/b;)V

    iget-object v0, p0, LaZ/f;->a:LaY/G;

    invoke-virtual {v0}, LaY/G;->c()V

    iget v0, p0, LaZ/f;->c:I

    if-nez v0, :cond_55

    const-string v0, "ds"

    :goto_46
    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    return-void

    :cond_4a
    new-instance v1, Lau/j;

    invoke-virtual {v0}, Lau/b;->as()Lau/x;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lau/j;-><init>(Lau/x;Lau/x;)V

    move-object v0, v1

    goto :goto_24

    :cond_55
    const-string v0, "de"

    goto :goto_46
.end method
