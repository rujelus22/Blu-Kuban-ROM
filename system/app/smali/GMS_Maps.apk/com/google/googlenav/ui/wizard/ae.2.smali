.class Lcom/google/googlenav/ui/wizard/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aT;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ad;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ae;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aS;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v0

    :cond_c
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ae;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/ah;->a(Lcom/google/googlenav/aU;)V

    return-void
.end method
