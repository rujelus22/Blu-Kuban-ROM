.class public Lcom/google/googlenav/ui/wizard/gL;
.super Lcom/google/googlenav/ui/wizard/aT;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aT;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/aX;)V
    .registers 11

    const/16 v0, 0x3cc

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x3f3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x402

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x3ce

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v0, 0x3f2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-super/range {v0 .. v8}, Lcom/google/googlenav/ui/wizard/aT;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method protected e()Lcom/google/googlenav/ui/view/android/ap;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/gM;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/gM;-><init>(Lcom/google/googlenav/ui/wizard/gL;Lcom/google/googlenav/ui/p;)V

    return-object v0
.end method
