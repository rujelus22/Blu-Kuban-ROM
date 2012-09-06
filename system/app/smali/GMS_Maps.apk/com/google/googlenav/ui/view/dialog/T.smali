.class Lcom/google/googlenav/ui/view/dialog/t;
.super Landroid/support/v4/view/am;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/s;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/t;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-direct {p0}, Landroid/support/v4/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public d_(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/t;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/s;->a(Lcom/google/googlenav/ui/view/dialog/s;)Landroid/view/View;

    move-result-object v3

    if-lez p1, :cond_1b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/t;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/s;->b(Lcom/google/googlenav/ui/view/dialog/s;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    if-ge p1, v3, :cond_1d

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    return-void

    :cond_1b
    move v0, v2

    .line 157
    goto :goto_b

    :cond_1d
    move v1, v2

    .line 159
    goto :goto_17
.end method
