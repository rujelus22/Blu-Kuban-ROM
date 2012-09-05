.class Lcom/google/googlenav/actionbar/e;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;


# direct methods
.method constructor <init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/actionbar/e;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 4

    sget-object v0, Law/b;->f:Law/c;

    if-eq p1, v0, :cond_21

    sget-object v0, Law/b;->e:Law/c;

    if-eq p1, v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/actionbar/e;->a:Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-static {v0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->c(Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, LaY/K;->az()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, LaY/K;->Z()V

    :cond_21
    return-void
.end method
