.class public Lcom/google/googlenav/ui/wizard/ix;
.super Lcom/google/googlenav/ui/wizard/bj;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bj;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/bn;)V
    .registers 11
    .parameter

    .prologue
    .line 35
    const/16 v0, 0x4ab

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x4e0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x4ed

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x4b0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v0, 0x4df

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-super/range {v0 .. v8}, Lcom/google/googlenav/ui/wizard/bj;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    .line 44
    return-void
.end method

.method protected e()Lcom/google/googlenav/ui/view/android/V;
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/googlenav/ui/wizard/iy;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/iy;-><init>(Lcom/google/googlenav/ui/wizard/ix;Lcom/google/googlenav/ui/g;)V

    return-object v0
.end method
