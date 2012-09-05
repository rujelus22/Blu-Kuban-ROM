.class Lcom/google/googlenav/ui/wizard/cQ;
.super Lcom/google/googlenav/ui/wizard/cP;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cQ;->b:Lcom/google/googlenav/ui/wizard/cA;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/cP;-><init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cB;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cB;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cQ;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    return-void
.end method


# virtual methods
.method public ab_()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public b(IILandroid/content/Intent;)V
    .registers 8

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cQ;->b:Lcom/google/googlenav/ui/wizard/cA;

    const/16 v2, 0x327

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(IILjava/lang/Object;)Z

    return-void
.end method
