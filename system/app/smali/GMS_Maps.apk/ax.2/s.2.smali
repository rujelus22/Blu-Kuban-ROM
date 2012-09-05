.class final Lax/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lax/r;->f()Lcom/google/googlenav/ui/D;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lax/r;->f()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, LaY/K;->ae()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, LaY/K;->bK()V

    :cond_1d
    return-void
.end method
