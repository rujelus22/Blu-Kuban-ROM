.class Lcom/google/googlenav/ui/wizard/dJ;
.super Lcom/google/googlenav/ui/wizard/dE;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 3
    .parameter

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dJ;->b:Lcom/google/googlenav/ui/wizard/dp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/dE;-><init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dq;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1833
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dJ;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1842
    const/4 v0, 0x6

    return v0
.end method

.method public b(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1836
    const-string v0, "ADDRESS_EXTRA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1837
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dJ;->b:Lcom/google/googlenav/ui/wizard/dp;

    const/16 v2, 0x329

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(IILjava/lang/Object;)Z

    .line 1838
    return-void
.end method
