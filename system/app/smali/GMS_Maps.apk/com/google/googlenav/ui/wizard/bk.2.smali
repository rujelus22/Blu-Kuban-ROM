.class Lcom/google/googlenav/ui/wizard/bK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bK;->a:Ljava/lang/CharSequence;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bK;->b:Landroid/view/View$OnClickListener;

    .line 225
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bK;->a:Ljava/lang/CharSequence;

    .line 219
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bK;->b:Landroid/view/View$OnClickListener;

    .line 220
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 3
    .parameter

    .prologue
    .line 244
    new-instance v0, Lcom/google/googlenav/ui/wizard/bL;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bL;-><init>(Lcom/google/googlenav/ui/wizard/bK;)V

    .line 245
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/bL;->a:Landroid/widget/TextView;

    .line 246
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 251
    check-cast p2, Lcom/google/googlenav/ui/wizard/bL;

    .line 252
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bL;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bK;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bK;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_14

    .line 254
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/bL;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bK;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_14
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 229
    const v0, 0x7f040185

    return v0
.end method
