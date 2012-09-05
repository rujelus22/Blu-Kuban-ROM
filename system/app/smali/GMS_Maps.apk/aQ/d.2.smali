.class public LaQ/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/ui/wizard/C;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/C;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LaQ/d;->a:I

    if-eqz p2, :cond_14

    :goto_7
    iput-object p2, p0, LaQ/d;->b:Ljava/lang/String;

    if-eqz p3, :cond_17

    :goto_b
    iput-object p3, p0, LaQ/d;->c:Ljava/lang/String;

    iput-object p5, p0, LaQ/d;->e:Landroid/view/View$OnClickListener;

    iput-object p6, p0, LaQ/d;->f:Landroid/view/View$OnLongClickListener;

    iput-object p4, p0, LaQ/d;->d:Lcom/google/googlenav/ui/wizard/C;

    return-void

    :cond_14
    const-string p2, ""

    goto :goto_7

    :cond_17
    const-string p3, ""

    goto :goto_b
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, LaQ/d;->d:Lcom/google/googlenav/ui/wizard/C;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0f0061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f014e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f01b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, LaQ/d;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, LaQ/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaQ/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaQ/d;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_38

    iget-object v0, p0, LaQ/d;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_38
    iget-object v0, p0, LaQ/d;->f:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_41

    iget-object v0, p0, LaQ/d;->f:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_41
    return-object p1
.end method
