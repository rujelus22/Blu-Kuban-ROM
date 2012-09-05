.class Lcom/google/googlenav/ui/wizard/cU;
.super Lcom/google/googlenav/ui/wizard/cP;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cU;->b:Lcom/google/googlenav/ui/wizard/cA;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/cP;-><init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cB;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cB;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cU;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    return-void
.end method


# virtual methods
.method public ab_()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public b(IILandroid/content/Intent;)V
    .registers 8

    const-string v0, "ADDRESS_EXTRA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cU;->b:Lcom/google/googlenav/ui/wizard/cA;

    const/16 v2, 0x329

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(IILjava/lang/Object;)Z

    return-void
.end method
