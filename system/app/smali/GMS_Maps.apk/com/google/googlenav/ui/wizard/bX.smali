.class Lcom/google/googlenav/ui/wizard/bX;
.super Ljava/lang/Object;

# interfaces
.implements Lat/d;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bV;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bV;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bX;->a:Lcom/google/googlenav/ui/wizard/bV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public X()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bX;->a:Lcom/google/googlenav/ui/wizard/bV;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/bV;->b(Lcom/google/googlenav/ui/wizard/bV;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bX;->a:Lcom/google/googlenav/ui/wizard/bV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bV;->a()V

    return-void
.end method
