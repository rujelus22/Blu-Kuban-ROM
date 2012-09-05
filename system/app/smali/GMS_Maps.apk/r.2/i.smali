.class Lr/i;
.super Ljava/lang/Object;

# interfaces
.implements Lx/az;


# instance fields
.field final synthetic a:Lr/h;


# direct methods
.method constructor <init>(Lr/h;)V
    .registers 2

    iput-object p1, p0, Lr/i;->a:Lr/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/ay;)V
    .registers 3

    iget-object v0, p0, Lr/i;->a:Lr/h;

    invoke-virtual {v0}, Lr/h;->a()V

    return-void
.end method

.method public a(Lx/ay;Lt/af;)V
    .registers 7

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3}, Lx/ay;->a(Lt/af;Z)Lt/ae;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lr/i;->a:Lr/h;

    invoke-interface {v0}, Lt/ae;->d()Lt/af;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lr/h;->a(Lt/af;ILt/ae;)V

    :cond_10
    return-void
.end method
