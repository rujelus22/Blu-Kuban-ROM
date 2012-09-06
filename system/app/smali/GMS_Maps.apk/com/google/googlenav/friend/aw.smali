.class public Lcom/google/googlenav/friend/aw;
.super Lcom/google/googlenav/friend/bt;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/friend/bt;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V

    .line 288
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/googlenav/friend/aw;->b:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/googlenav/friend/ax;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/ax;-><init>(Lcom/google/googlenav/friend/aw;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ZLcom/google/googlenav/ui/wizard/dk;)V

    .line 294
    return-void
.end method
