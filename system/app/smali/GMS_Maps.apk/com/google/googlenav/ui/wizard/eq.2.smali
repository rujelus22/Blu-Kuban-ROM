.class Lcom/google/googlenav/ui/wizard/eq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/ey;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eo;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eq;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eq;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->b(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    return-void
.end method
