.class public Lcom/google/googlenav/ui/bm;
.super Lcom/google/googlenav/ui/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/p;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public h()V
    .registers 2

    .prologue
    .line 36
    const-string v0, "NEARBY_TRANSIT_ICONS"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "NEARBY_TRANSIT_ICONS"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/bm;->b(Ljava/lang/String;)V

    .line 29
    return-void
.end method
