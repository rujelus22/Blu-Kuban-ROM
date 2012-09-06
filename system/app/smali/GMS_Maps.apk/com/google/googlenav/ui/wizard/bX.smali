.class public Lcom/google/googlenav/ui/wizard/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bx;->a:Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bx;->b:Landroid/view/View$OnClickListener;

    .line 305
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bx;->a:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bx;->b:Landroid/view/View$OnClickListener;

    .line 300
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 3
    .parameter

    .prologue
    .line 324
    new-instance v0, Lcom/google/googlenav/ui/wizard/by;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/by;-><init>(Lcom/google/googlenav/ui/wizard/bx;)V

    .line 325
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/by;->a:Landroid/widget/TextView;

    .line 326
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 331
    check-cast p2, Lcom/google/googlenav/ui/wizard/by;

    .line 332
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/by;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bx;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/aV;->au:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 333
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bx;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_16

    .line 334
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/by;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bx;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 336
    :cond_16
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 309
    const v0, 0x7f040185

    return v0
.end method
