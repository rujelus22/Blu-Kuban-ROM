.class Lcom/google/googlenav/ui/wizard/fZ;
.super Ljava/lang/Object;

# interfaces
.implements LaT/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fX;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fX;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fZ;->a:Lcom/google/googlenav/ui/wizard/fX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fZ;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x325

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fZ;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x10a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_13
.end method
