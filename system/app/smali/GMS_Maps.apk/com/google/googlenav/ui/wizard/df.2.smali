.class Lcom/google/googlenav/ui/wizard/dF;
.super Lcom/google/googlenav/ui/wizard/dE;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 3
    .parameter

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dF;->b:Lcom/google/googlenav/ui/wizard/dp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/dE;-><init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dq;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1819
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dF;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1829
    const/4 v0, 0x5

    return v0
.end method

.method public b(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1822
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->getPostalAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dF;->b:Lcom/google/googlenav/ui/wizard/dp;

    const/16 v2, 0x327

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(IILjava/lang/Object;)Z

    .line 1825
    return-void
.end method
