.class public LaC/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/gi;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, LaC/e;->a:Lcom/google/googlenav/ui/wizard/gi;

    .line 33
    return-void
.end method

.method static synthetic a(LaC/e;)Lcom/google/googlenav/ui/wizard/gi;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, LaC/e;->a:Lcom/google/googlenav/ui/wizard/gi;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 36
    const v0, 0x7f10032f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LaC/e;->c:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f100330

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaC/e;->b:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, LaC/e;->a:Lcom/google/googlenav/ui/wizard/gi;

    if-nez v0, :cond_27

    .line 39
    const v0, 0x7f100331

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_26
    return-void

    .line 42
    :cond_27
    new-instance v0, LaC/f;

    invoke-direct {v0, p0}, LaC/f;-><init>(LaC/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_26
.end method

.method public a(Ljava/lang/String;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p3, :cond_24

    .line 62
    iget-object v0, p0, LaC/e;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, LaC/e;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_20

    const v0, 0x7f0202e3

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :goto_12
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 71
    iget-object v0, p0, LaC/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1f
    return-void

    .line 63
    :cond_20
    const v0, 0x7f02030f

    goto :goto_f

    .line 66
    :cond_24
    iget-object v0, p0, LaC/e;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 73
    :cond_2c
    if-eqz p3, :cond_43

    .line 74
    iget-object v1, p0, LaC/e;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_3c

    const/16 v0, 0x3a5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :cond_3c
    const/16 v0, 0x299

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 78
    :cond_43
    iget-object v0, p0, LaC/e;->b:Landroid/widget/TextView;

    const/16 v1, 0x3a1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method
