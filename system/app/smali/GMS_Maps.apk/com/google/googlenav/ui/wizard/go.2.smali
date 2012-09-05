.class public Lcom/google/googlenav/ui/wizard/go;
.super Lcom/google/googlenav/ui/wizard/aT;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aT;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V
    .registers 17

    invoke-static {p4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-super/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/aT;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    :goto_11
    return-void

    :cond_12
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-super/range {v0 .. v8}, Lcom/google/googlenav/ui/wizard/aT;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_11
.end method

.method protected e()Lcom/google/googlenav/ui/view/android/ap;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/gp;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/gp;-><init>(Lcom/google/googlenav/ui/wizard/go;Lcom/google/googlenav/ui/p;)V

    return-object v0
.end method
