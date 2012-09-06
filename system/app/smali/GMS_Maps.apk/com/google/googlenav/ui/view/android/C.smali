.class public Lcom/google/googlenav/ui/view/android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/app/AlertDialog;

.field final b:LaM/bj;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Z

.field final f:Z

.field g:Landroid/view/View;

.field h:Landroid/widget/TextView;

.field i:Landroid/view/View;

.field j:Landroid/widget/LinearLayout;

.field k:Ljava/util/List;


# direct methods
.method public constructor <init>(ILaM/bj;Ljava/lang/String;ZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v7

    :goto_16
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/view/android/c;-><init>(ILaM/bj;Ljava/lang/String;ZZLandroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 98
    return-void

    .line 92
    :cond_20
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->i()Landroid/app/Activity;

    move-result-object v7

    goto :goto_16
.end method

.method constructor <init>(ILaM/bj;Ljava/lang/String;ZZLandroid/view/LayoutInflater;Landroid/content/Context;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->k:Ljava/util/List;

    .line 103
    iput p1, p0, Lcom/google/googlenav/ui/view/android/c;->c:I

    .line 104
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/c;->b:LaM/bj;

    .line 105
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/c;->d:Ljava/lang/String;

    .line 106
    iput-boolean p4, p0, Lcom/google/googlenav/ui/view/android/c;->e:Z

    .line 107
    iput-boolean p5, p0, Lcom/google/googlenav/ui/view/android/c;->f:Z

    .line 109
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    const v0, 0x7f040005

    :goto_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p6, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/c;->a(Landroid/view/View;)V

    .line 113
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->a:Landroid/app/AlertDialog;

    .line 117
    return-void

    .line 109
    :cond_36
    const v0, 0x7f040004

    goto :goto_1c
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v0, Lcom/google/googlenav/ui/view/android/d;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/ui/view/android/d;-><init>(Lcom/google/googlenav/ui/view/android/c;I)V

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/view/android/f;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/f;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 198
    iget v0, p1, Lcom/google/googlenav/ui/view/android/e;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 199
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/f;->b:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/f;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/google/googlenav/ui/view/android/e;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :goto_1d
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/ViewGroup;

    iget v1, p1, Lcom/google/googlenav/ui/view/android/e;->c:I

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/c;->a(Landroid/view/ViewGroup;I)V

    .line 207
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    return-void

    .line 203
    :cond_2b
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/c;->a(Lcom/google/googlenav/ui/view/android/f;)V

    goto :goto_1d
.end method

.method private a(Lcom/google/googlenav/ui/view/android/f;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, -0x2

    .line 212
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 215
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/f;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/f;->c:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    const/high16 v0, 0x4180

    :goto_1c
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 217
    return-void

    .line 216
    :cond_20
    const/high16 v0, 0x4160

    goto :goto_1c
.end method

.method private c()I
    .registers 2

    .prologue
    .line 258
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f040007

    :goto_9
    return v0

    :cond_a
    const v0, 0x7f040006

    goto :goto_9
.end method

.method private d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xd5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/16 v0, 0x6c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 124
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f10001f

    const/4 v2, 0x0

    .line 239
    const v0, 0x7f10001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->g:Landroid/view/View;

    .line 240
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->h:Landroid/widget/TextView;

    .line 241
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->i:Landroid/view/View;

    .line 242
    const v0, 0x7f100020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->j:Landroid/widget/LinearLayout;

    move v1, v2

    .line 243
    :goto_2a
    const/4 v0, 0x4

    if-ge v1, v0, :cond_72

    .line 244
    new-instance v3, Lcom/google/googlenav/ui/view/android/f;

    invoke-direct {v3}, Lcom/google/googlenav/ui/view/android/f;-><init>()V

    .line 245
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/c;->c()I

    move-result v0

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/c;->j:Landroid/widget/LinearLayout;

    invoke-static {v0, v4, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v3, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/ViewGroup;

    .line 247
    iget-object v0, v3, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/ViewGroup;

    const v4, 0x7f100022

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/google/googlenav/ui/view/android/f;->b:Landroid/widget/ImageView;

    .line 249
    iget-object v0, v3, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/ViewGroup;

    const v4, 0x7f100023

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/google/googlenav/ui/view/android/f;->c:Landroid/widget/TextView;

    .line 250
    iget-object v0, v3, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/google/googlenav/ui/view/android/f;->d:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->j:Landroid/widget/LinearLayout;

    iget-object v4, v3, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 254
    :cond_72
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/c;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/c;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method a(Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 162
    move v1, v3

    :goto_4
    const/4 v0, 0x4

    if-ge v1, v0, :cond_18

    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/f;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 165
    :cond_18
    if-eqz p1, :cond_20

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 166
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    :goto_34
    return-void

    .line 172
    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/e;

    .line 173
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/c;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/f;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/c;->a(Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/view/android/f;)V

    .line 174
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3a

    .line 177
    :cond_55
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->h:Landroid/widget/TextView;

    invoke-static {v0, p2}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/c;->k:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/f;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/f;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34
.end method

.method public b()Ljava/util/List;
    .registers 6

    .prologue
    .line 137
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/c;->e:Z

    if-eqz v1, :cond_1b

    .line 139
    new-instance v1, Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0xef

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02018e

    const/16 v4, 0x25b

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/e;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1b
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/c;->f:Z

    if-eqz v1, :cond_32

    .line 143
    new-instance v1, Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x6a

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200a7

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/e;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_32
    new-instance v1, Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x617

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d3

    const/16 v4, 0x2bc

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/e;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/c;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/e;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v0
.end method
