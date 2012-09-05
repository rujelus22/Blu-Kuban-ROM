.class Lcom/google/googlenav/ui/wizard/gV;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/be;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gU;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gV;->a:Lcom/google/googlenav/ui/wizard/gU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gV;->a:Lcom/google/googlenav/ui/wizard/gU;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gU;->a(Lcom/google/googlenav/ui/wizard/gU;)Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x325

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    return-void
.end method
