.class public Lcom/google/googlenav/ui/wizard/fn;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/bu;


# instance fields
.field private a:LaM/m;

.field private b:Lcom/google/googlenav/ui/view/dialog/bs;

.field private c:Lcom/google/googlenav/ai;

.field private i:I


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/view/dialog/bs;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fn;->c:Lcom/google/googlenav/ai;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fn;->i:I

    .line 33
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fn;->b:Lcom/google/googlenav/ui/view/dialog/bs;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;ILaM/m;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fn;->c:Lcom/google/googlenav/ai;

    .line 38
    iput p2, p0, Lcom/google/googlenav/ui/wizard/fn;->i:I

    .line 39
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fn;->a:LaM/m;

    .line 40
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fn;->j()V

    .line 41
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/dialog/br;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fn;->a()V

    .line 80
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_a

    .line 66
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 63
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fn;->h()V

    .line 64
    const/4 v0, 0x1

    goto :goto_4

    .line 61
    :pswitch_data_a
    .packed-switch 0x3f9
        :pswitch_5
    .end packed-switch
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fn;->b:Lcom/google/googlenav/ui/view/dialog/bs;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bs;->a(Lcom/google/googlenav/ui/view/dialog/bu;)Lcom/google/googlenav/ui/view/dialog/br;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fn;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 48
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fn;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 49
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fn;->c:Lcom/google/googlenav/ai;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/fn;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/ai;I)V

    .line 50
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/view/dialog/br;)Z
    .registers 3
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fn;->a()V

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fn;->a:LaM/m;

    if-eqz v0, :cond_c

    .line 86
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fn;->a:LaM/m;

    invoke-virtual {v0}, LaM/m;->h()V

    .line 88
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fn;->i:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fn;->c:Lcom/google/googlenav/ai;

    .line 56
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 57
    return-void
.end method

.method public c(Lcom/google/googlenav/ui/view/dialog/br;)Z
    .registers 3
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
