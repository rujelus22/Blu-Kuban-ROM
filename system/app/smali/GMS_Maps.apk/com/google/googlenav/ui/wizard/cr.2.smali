.class public Lcom/google/googlenav/ui/wizard/cR;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/googlenav/friend/history/w;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/history/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 36
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cR;->a:Lcom/google/googlenav/friend/history/w;

    .line 37
    return-void
.end method


# virtual methods
.method protected b()V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aF;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cS;

    invoke-direct {v1, p0, p0}, Lcom/google/googlenav/ui/wizard/cS;-><init>(Lcom/google/googlenav/ui/wizard/cR;Lcom/google/googlenav/ui/wizard/cR;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/dialog/aF;-><init>(Lcom/google/googlenav/ui/view/dialog/aL;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cR;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cR;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 43
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cR;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 49
    return-void
.end method
