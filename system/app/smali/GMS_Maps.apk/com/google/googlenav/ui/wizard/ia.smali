.class public Lcom/google/googlenav/ui/wizard/ia;
.super Lcom/google/googlenav/ui/wizard/bj;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bj;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move-object v5, p5

    move-object/from16 v6, p7

    .line 35
    invoke-super/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 40
    :goto_11
    return-void

    .line 37
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

    invoke-super/range {v0 .. v8}, Lcom/google/googlenav/ui/wizard/bj;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    goto :goto_11
.end method

.method protected e()Lcom/google/googlenav/ui/view/android/V;
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lcom/google/googlenav/ui/wizard/ib;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/ib;-><init>(Lcom/google/googlenav/ui/wizard/ia;Lcom/google/googlenav/ui/g;)V

    return-object v0
.end method
