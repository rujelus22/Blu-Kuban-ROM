.class Ls/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Ls/o;


# direct methods
.method private constructor <init>(Ls/o;)V
    .registers 2

    iput-object p1, p0, Ls/u;->a:Ls/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ls/o;Ls/p;)V
    .registers 3

    invoke-direct {p0, p1}, Ls/u;-><init>(Ls/o;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 6

    iget-object v0, p0, Ls/u;->a:Ls/o;

    invoke-static {v0}, Ls/o;->a(Ls/o;)Ls/v;

    move-result-object v0

    invoke-interface {v0}, Ls/v;->c()Ls/t;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Lq/n;

    invoke-virtual {v0}, Ls/t;->a()I

    move-result v2

    invoke-virtual {v0}, Ls/t;->b()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lq/n;-><init>(III)V

    invoke-static {v1}, LC/f;->b(LC/j;)V

    iget-object v1, p0, Ls/u;->a:Ls/o;

    invoke-static {v1}, Ls/o;->c(Ls/o;)Ls/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls/g;->a(Ls/t;)V

    :cond_25
    return-void
.end method
