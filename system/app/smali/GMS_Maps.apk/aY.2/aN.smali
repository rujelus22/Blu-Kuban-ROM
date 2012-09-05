.class LaY/aN;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/F;


# instance fields
.field final synthetic a:LaY/aG;


# direct methods
.method constructor <init>(LaY/aG;)V
    .registers 2

    iput-object p1, p0, LaY/aN;->a:LaY/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 6

    iget-object v0, p0, LaY/aN;->a:LaY/aG;

    iget-boolean v0, v0, LaY/aG;->C:Z

    if-nez v0, :cond_1b

    check-cast p1, Lbb/a;

    iget-object v0, p0, LaY/aN;->a:LaY/aG;

    invoke-virtual {p1}, Lbb/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lbb/a;->b()I

    move-result v2

    invoke-virtual {p1}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LaY/aG;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
