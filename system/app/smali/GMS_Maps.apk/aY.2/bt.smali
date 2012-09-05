.class LaY/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaY/br;


# direct methods
.method constructor <init>(LaY/br;)V
    .registers 2

    iput-object p1, p0, LaY/bt;->a:LaY/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, LaY/bt;->a:LaY/br;

    iget-boolean v0, v0, LaY/br;->E:Z

    if-nez v0, :cond_1f

    new-instance v0, Lbb/a;

    const/16 v1, 0xfa3

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lbb/a;-><init>(II)V

    iget-object v1, p0, LaY/bt;->a:LaY/br;

    invoke-virtual {v0}, Lbb/a;->a()I

    move-result v2

    invoke-virtual {v0}, Lbb/a;->b()I

    move-result v3

    invoke-virtual {v0}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, LaY/br;->a(IILjava/lang/Object;)Z

    :cond_1f
    return-void
.end method
