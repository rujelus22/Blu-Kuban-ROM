.class public LaQ/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, LaQ/l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LaQ/l;->b:I

    iput-object p2, p0, LaQ/l;->c:Ljava/lang/String;

    iput-object p3, p0, LaQ/l;->d:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, LaQ/l;->c:Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, LaQ/l;->d:Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, LaQ/l;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    iget-object v0, p0, LaQ/l;->a:Landroid/view/View;

    iget-boolean v1, p0, LaQ/l;->e:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget v0, p0, LaQ/l;->b:I

    if-lez v0, :cond_4e

    iget-object v0, p0, LaQ/l;->h:Landroid/widget/ImageView;

    iget v1, p0, LaQ/l;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, LaQ/l;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_27
    iget-object v0, p0, LaQ/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_54

    iget-object v0, p0, LaQ/l;->f:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaQ/l;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_37
    iget-object v0, p0, LaQ/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_5a

    iget-object v0, p0, LaQ/l;->g:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LaQ/l;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, LaQ/l;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_4e
    iget-object v0, p0, LaQ/l;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_27

    :cond_54
    iget-object v0, p0, LaQ/l;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_37

    :cond_5a
    iget-object v0, p0, LaQ/l;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 4

    const v0, 0x7f0300f2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaQ/l;->a:Landroid/view/View;

    iget-object v0, p0, LaQ/l;->a:Landroid/view/View;

    const v1, 0x7f0f02be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/l;->f:Landroid/widget/TextView;

    iget-object v0, p0, LaQ/l;->a:Landroid/view/View;

    const v1, 0x7f0f02bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/l;->g:Landroid/widget/TextView;

    iget-object v0, p0, LaQ/l;->a:Landroid/view/View;

    const v1, 0x7f0f0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LaQ/l;->h:Landroid/widget/ImageView;

    invoke-direct {p0}, LaQ/l;->b()V

    iget-object v0, p0, LaQ/l;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iput p1, p0, LaQ/l;->b:I

    iput-object p2, p0, LaQ/l;->c:Ljava/lang/String;

    iput-object p3, p0, LaQ/l;->d:Ljava/lang/String;

    iput-boolean p4, p0, LaQ/l;->e:Z

    invoke-direct {p0}, LaQ/l;->b()V

    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, LaQ/l;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, LaQ/l;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
