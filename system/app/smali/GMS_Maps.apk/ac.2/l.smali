.class public LaC/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, LaC/l;->b:I

    .line 72
    iput-object p2, p0, LaC/l;->c:Ljava/lang/String;

    .line 73
    iput-object p3, p0, LaC/l;->d:Ljava/lang/String;

    .line 74
    iput-boolean p4, p0, LaC/l;->e:Z

    .line 75
    iput-boolean p5, p0, LaC/l;->f:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZLaC/m;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, LaC/l;-><init>(ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput p1, p0, LaC/l;->b:I

    .line 99
    iput-object p2, p0, LaC/l;->c:Ljava/lang/String;

    .line 100
    iput-object p3, p0, LaC/l;->d:Ljava/lang/String;

    .line 101
    iput-boolean p4, p0, LaC/l;->e:Z

    .line 103
    iget-object v0, p0, LaC/l;->a:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 104
    invoke-direct {p0}, LaC/l;->b()V

    .line 106
    :cond_f
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 110
    iget-boolean v2, p0, LaC/l;->e:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, LaC/l;->c:Ljava/lang/String;

    if-nez v2, :cond_15

    iget-object v2, p0, LaC/l;->d:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 111
    :cond_f
    iget-object v0, p0, LaC/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_14
    return-void

    .line 115
    :cond_15
    iget-object v2, p0, LaC/l;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget v2, p0, LaC/l;->b:I

    if-lez v2, :cond_54

    .line 118
    iget-object v2, p0, LaC/l;->i:Landroid/widget/ImageView;

    iget v3, p0, LaC/l;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v2, p0, LaC/l;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :goto_2a
    iget-object v2, p0, LaC/l;->c:Ljava/lang/String;

    if-eqz v2, :cond_5a

    .line 125
    iget-object v2, p0, LaC/l;->g:Landroid/widget/TextView;

    iget-object v3, p0, LaC/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, LaC/l;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_3a
    iget-object v2, p0, LaC/l;->d:Ljava/lang/String;

    if-eqz v2, :cond_60

    .line 132
    iget-object v2, p0, LaC/l;->h:Landroid/widget/TextView;

    iget-object v3, p0, LaC/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, LaC/l;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_4a
    iget-object v2, p0, LaC/l;->j:Landroid/view/View;

    iget-boolean v3, p0, LaC/l;->f:Z

    if-eqz v3, :cond_66

    :goto_50
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    .line 121
    :cond_54
    iget-object v2, p0, LaC/l;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2a

    .line 128
    :cond_5a
    iget-object v2, p0, LaC/l;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3a

    .line 135
    :cond_60
    iget-object v2, p0, LaC/l;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a

    :cond_66
    move v0, v1

    .line 138
    goto :goto_50
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 4

    .prologue
    .line 79
    const v0, 0x7f040139

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaC/l;->a:Landroid/view/View;

    .line 80
    iget-object v0, p0, LaC/l;->a:Landroid/view/View;

    const v1, 0x7f10033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaC/l;->g:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, LaC/l;->a:Landroid/view/View;

    const v1, 0x7f10033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaC/l;->h:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, LaC/l;->a:Landroid/view/View;

    const v1, 0x7f100033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LaC/l;->i:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, LaC/l;->a:Landroid/view/View;

    const v1, 0x7f10001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaC/l;->j:Landroid/view/View;

    .line 85
    invoke-direct {p0}, LaC/l;->b()V

    .line 86
    iget-object v0, p0, LaC/l;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(ILjava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, LaC/l;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, LaC/l;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method
