.class public Lcom/google/googlenav/ui/wizard/fh;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private volatile a:I

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 37
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fh;->a:I

    .line 39
    new-instance v0, Lcom/google/googlenav/ui/wizard/fi;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fi;-><init>(Lcom/google/googlenav/ui/wizard/fh;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->b:Landroid/view/View$OnClickListener;

    .line 50
    new-instance v0, Lcom/google/googlenav/ui/wizard/fj;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fj;-><init>(Lcom/google/googlenav/ui/wizard/fh;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->c:Landroid/view/View$OnClickListener;

    .line 63
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fh;->f()V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fh;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/google/googlenav/ui/wizard/fh;->a:I

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fh;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/fh;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/fh;)I
    .registers 2
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fh;->a:I

    return v0
.end method


# virtual methods
.method protected a(I)V
    .registers 4
    .parameter

    .prologue
    .line 158
    iput p1, p0, Lcom/google/googlenav/ui/wizard/fh;->a:I

    .line 159
    const-string v0, "OFFER_SETTINGS_PREFERENCE"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    .line 160
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 136
    const v0, 0x7f100030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 137
    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v1, Lcom/google/googlenav/ui/wizard/fk;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fk;-><init>(Lcom/google/googlenav/ui/wizard/fh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 73
    :cond_9
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fh;->a:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_15

    .line 74
    const/16 v0, 0x32e

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 79
    :goto_14
    return-void

    .line 77
    :cond_15
    new-instance v0, Lcom/google/googlenav/ui/wizard/fm;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fm;-><init>(Lcom/google/googlenav/ui/wizard/fh;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fh;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    goto :goto_14
.end method

.method public e()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fh;->a:I

    return v0
.end method

.method protected f()V
    .registers 4

    .prologue
    .line 148
    const-string v0, "OFFER_SETTINGS_PREFERENCE"

    const/4 v1, -0x1

    new-instance v2, Lcom/google/googlenav/ui/wizard/fl;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/fl;-><init>(Lcom/google/googlenav/ui/wizard/fh;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V

    .line 155
    return-void
.end method
