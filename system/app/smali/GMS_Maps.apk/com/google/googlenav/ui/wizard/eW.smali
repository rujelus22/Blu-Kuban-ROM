.class public Lcom/google/googlenav/ui/wizard/ew;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/bu;


# instance fields
.field private a:Lcom/google/googlenav/ui/view/dialog/bs;

.field private b:Lcom/google/googlenav/ui/view/android/bb;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/view/dialog/bs;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 26
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ew;->a:Lcom/google/googlenav/ui/view/dialog/bs;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/android/bb;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ew;->b:Lcom/google/googlenav/ui/view/android/bb;

    .line 31
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ew;->j()V

    .line 32
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/dialog/br;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ew;->b:Lcom/google/googlenav/ui/view/android/bb;

    .line 62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ew;->a()V

    .line 63
    if-eqz v0, :cond_a

    .line 64
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 66
    :cond_a
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_a

    .line 56
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 53
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ew;->h()V

    .line 54
    const/4 v0, 0x1

    goto :goto_4

    .line 51
    :pswitch_data_a
    .packed-switch 0x3f9
        :pswitch_5
    .end packed-switch
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ew;->a:Lcom/google/googlenav/ui/view/dialog/bs;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bs;->a(Lcom/google/googlenav/ui/view/dialog/bu;)Lcom/google/googlenav/ui/view/dialog/br;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ew;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 39
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ew;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 40
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/br;->n()V

    .line 41
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/view/dialog/br;)Z
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ew;->b:Lcom/google/googlenav/ui/view/android/bb;

    .line 71
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ew;->a()V

    .line 72
    if-eqz v0, :cond_a

    .line 73
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 75
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ew;->b:Lcom/google/googlenav/ui/view/android/bb;

    .line 46
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 47
    return-void
.end method

.method public c(Lcom/google/googlenav/ui/view/dialog/br;)Z
    .registers 3
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
