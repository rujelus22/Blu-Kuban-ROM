.class Lcom/google/googlenav/ui/wizard/dE;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dD;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dE;->a:Lcom/google/googlenav/ui/wizard/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 3

    sget-object v0, Law/b;->h:Law/c;

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dE;->a:Lcom/google/googlenav/ui/wizard/dD;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dB;->a()V

    :cond_b
    return-void
.end method
