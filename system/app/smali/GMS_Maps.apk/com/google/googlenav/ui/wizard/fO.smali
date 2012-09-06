.class public Lcom/google/googlenav/ui/wizard/fo;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/google/googlenav/ui/view/dialog/br;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fo;->a:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fo;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fo;->j()V

    .line 44
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/googlenav/ui/wizard/fp;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fp;-><init>(Lcom/google/googlenav/ui/wizard/fo;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fo;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 49
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    .line 50
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fo;->a:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fo;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-nez v0, :cond_a

    .line 70
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fo;->b()V

    .line 75
    :goto_9
    return-void

    .line 72
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fo;->h:Lcom/google/googlenav/ui/view/android/bb;

    const v1, 0x7f100034

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fo;->b:Lcom/google/googlenav/ui/view/dialog/br;

    if-eqz v0, :cond_f

    .line 56
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fo;->b:Lcom/google/googlenav/ui/view/dialog/br;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/br;->dismiss()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fo;->b:Lcom/google/googlenav/ui/view/dialog/br;

    .line 59
    :cond_f
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fo;->a:Ljava/lang/String;

    .line 60
    return-void
.end method
