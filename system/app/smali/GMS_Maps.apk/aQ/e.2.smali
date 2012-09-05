.class public LaQ/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/ez;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ez;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaQ/e;->a:Lcom/google/googlenav/ui/wizard/ez;

    return-void
.end method

.method static synthetic a(LaQ/e;)Lcom/google/googlenav/ui/wizard/ez;
    .registers 2

    iget-object v0, p0, LaQ/e;->a:Lcom/google/googlenav/ui/wizard/ez;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f02b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LaQ/e;->c:Landroid/widget/ImageView;

    const v0, 0x7f0f02b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/e;->b:Landroid/widget/TextView;

    iget-object v0, p0, LaQ/e;->a:Lcom/google/googlenav/ui/wizard/ez;

    if-nez v0, :cond_27

    const v0, 0x7f0f02b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_26
    return-void

    :cond_27
    new-instance v0, LaQ/f;

    invoke-direct {v0, p0}, LaQ/f;-><init>(LaQ/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_26
.end method

.method public a(Ljava/lang/String;ZZ)V
    .registers 6

    if-eqz p3, :cond_24

    iget-object v0, p0, LaQ/e;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, LaQ/e;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_20

    const v0, 0x7f02001f

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_12
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v0, p0, LaQ/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    return-void

    :cond_20
    const v0, 0x7f0201b5

    goto :goto_f

    :cond_24
    iget-object v0, p0, LaQ/e;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    :cond_2c
    if-eqz p3, :cond_43

    iget-object v1, p0, LaQ/e;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_3c

    const/16 v0, 0x2ed

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :cond_3c
    const/16 v0, 0x242

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_43
    iget-object v0, p0, LaQ/e;->b:Landroid/widget/TextView;

    const/16 v1, 0x2e9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method
