.class public final Lcom/android/athome/picker/a/a;
.super Landroid/support/v4/app/d;
.source "SourceFile"


# static fields
.field private static final Z:[I


# instance fields
.field W:Ljava/lang/Object;

.field final X:Lcom/android/athome/picker/a/h;

.field final Y:Lcom/android/athome/picker/a/c;

.field private aa:I

.field private ab:Landroid/view/LayoutInflater;

.field private ac:Lcom/android/athome/picker/a/b;

.field private ad:Landroid/view/View$OnClickListener;

.field private ae:Lcom/android/athome/picker/a/d;

.field private af:Landroid/widget/ListView;

.field private ag:Landroid/widget/SeekBar;

.field private ah:Landroid/widget/ImageView;

.field private ai:Z

.field private aj:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/athome/picker/aj;->k:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/athome/picker/aj;->j:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/athome/picker/aj;->g:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/athome/picker/aj;->h:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/athome/picker/aj;->i:I

    aput v2, v0, v1

    sput-object v0, Lcom/android/athome/picker/a/a;->Z:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    .line 82
    new-instance v0, Lcom/android/athome/picker/a/h;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/a/h;-><init>(Lcom/android/athome/picker/a/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/a/a;->X:Lcom/android/athome/picker/a/h;

    .line 83
    new-instance v0, Lcom/android/athome/picker/a/c;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/a/c;-><init>(Lcom/android/athome/picker/a/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/a/a;->Y:Lcom/android/athome/picker/a/c;

    .line 88
    const/4 v0, 0x1

    sget v1, Lcom/android/athome/picker/al;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/android/athome/picker/a/a;->a(II)V

    .line 89
    return-void
.end method

.method static synthetic F()[I
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/athome/picker/a/a;->Z:[I

    return-object v0
.end method

.method static synthetic a(Lcom/android/athome/picker/a/a;)I
    .registers 2
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/android/athome/picker/a/a;->aa:I

    return v0
.end method

.method static synthetic a(Lcom/android/athome/picker/a/a;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/athome/picker/a/a;->aj:Z

    return p1
.end method

.method static synthetic b(Lcom/android/athome/picker/a/a;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->af:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/athome/picker/a/a;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ab:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ae:Lcom/android/athome/picker/a/d;

    return-object v0
.end method

.method static synthetic e(Lcom/android/athome/picker/a/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/athome/picker/a/a;->aj:Z

    return v0
.end method

.method static synthetic f(Lcom/android/athome/picker/a/a;)Landroid/widget/SeekBar;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method final E()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 124
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 145
    :goto_6
    return-void

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget v1, p0, Lcom/android/athome/picker/a/a;->aa:I

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/android/athome/picker/a/a;->ah:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/android/athome/picker/media/q;->l(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_36

    sget v0, Lcom/android/athome/picker/ah;->a:I

    :goto_19
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iput-boolean v3, p0, Lcom/android/athome/picker/a/a;->ai:Z

    .line 133
    invoke-static {v1}, Lcom/android/athome/picker/media/q;->k(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_39

    .line 135
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 136
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 137
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 144
    :goto_33
    iput-boolean v4, p0, Lcom/android/athome/picker/a/a;->ai:Z

    goto :goto_6

    .line 127
    :cond_36
    sget v0, Lcom/android/athome/picker/ah;->b:I

    goto :goto_19

    .line 139
    :cond_39
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    invoke-static {v1}, Lcom/android/athome/picker/media/q;->j(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 141
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    invoke-static {v1}, Lcom/android/athome/picker/media/q;->i(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_33
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 162
    iput-object p1, p0, Lcom/android/athome/picker/a/a;->ab:Landroid/view/LayoutInflater;

    .line 163
    sget v0, Lcom/android/athome/picker/aj;->f:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 165
    sget v0, Lcom/android/athome/picker/ai;->B:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/athome/picker/a/a;->ah:Landroid/widget/ImageView;

    .line 166
    sget v0, Lcom/android/athome/picker/ai;->C:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    .line 167
    invoke-virtual {p0}, Lcom/android/athome/picker/a/a;->E()V

    .line 168
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ag:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/athome/picker/a/j;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/a/j;-><init>(Lcom/android/athome/picker/a/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ad:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3c

    .line 171
    sget v0, Lcom/android/athome/picker/ai;->g:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v2, p0, Lcom/android/athome/picker/a/a;->ad:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_3c
    sget v0, Lcom/android/athome/picker/ai;->o:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 178
    new-instance v2, Lcom/android/athome/picker/a/d;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/a/d;-><init>(Lcom/android/athome/picker/a/a;)V

    iput-object v2, p0, Lcom/android/athome/picker/a/a;->ae:Lcom/android/athome/picker/a/d;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v2, p0, Lcom/android/athome/picker/a/a;->ae:Lcom/android/athome/picker/a/d;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    iput-object v0, p0, Lcom/android/athome/picker/a/a;->af:Landroid/widget/ListView;

    .line 182
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget v2, p0, Lcom/android/athome/picker/a/a;->aa:I

    iget-object v3, p0, Lcom/android/athome/picker/a/a;->Y:Lcom/android/athome/picker/a/c;

    invoke-static {v0, v2, v3}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILcom/android/athome/picker/media/b;)V

    .line 184
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ae:Lcom/android/athome/picker/a/d;

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->c()V

    .line 186
    return-object v1
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/d;->a(Landroid/app/Activity;)V

    .line 98
    invoke-static {p1}, Lcom/android/athome/picker/media/k;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/athome/picker/a/a;->ad:Landroid/view/View$OnClickListener;

    .line 117
    return-void
.end method

.method public final a(Lcom/android/athome/picker/a/b;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/athome/picker/a/a;->ac:Lcom/android/athome/picker/a/b;

    .line 93
    return-void
.end method

.method public final b(I)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput p1, p0, Lcom/android/athome/picker/a/a;->aa:I

    .line 121
    return-void
.end method

.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 191
    new-instance v0, Lcom/android/athome/picker/a/g;

    invoke-virtual {p0}, Lcom/android/athome/picker/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/athome/picker/a/a;->b()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/athome/picker/a/g;-><init>(Lcom/android/athome/picker/a/a;Landroid/content/Context;I)V

    return-object v0
.end method

.method public final c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-super {p0}, Landroid/support/v4/app/d;->c()V

    .line 104
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ac:Lcom/android/athome/picker/a/b;

    if-eqz v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ac:Lcom/android/athome/picker/a/b;

    invoke-interface {v0}, Lcom/android/athome/picker/a/b;->a()V

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->ae:Lcom/android/athome/picker/a/d;

    if-eqz v0, :cond_13

    .line 108
    iput-object v2, p0, Lcom/android/athome/picker/a/a;->ae:Lcom/android/athome/picker/a/d;

    .line 110
    :cond_13
    iput-object v2, p0, Lcom/android/athome/picker/a/a;->ab:Landroid/view/LayoutInflater;

    .line 111
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/athome/picker/a/a;->Y:Lcom/android/athome/picker/a/c;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Lcom/android/athome/picker/media/b;)V

    .line 112
    iput-object v2, p0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    .line 113
    return-void
.end method

.method final c(I)V
    .registers 5
    .parameter

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/athome/picker/a/a;->ai:Z

    if-eqz v0, :cond_5

    .line 157
    :cond_4
    :goto_4
    return-void

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget v1, p0, Lcom/android/athome/picker/a/a;->aa:I

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/android/athome/picker/media/q;->k(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 153
    invoke-static {v0}, Lcom/android/athome/picker/media/q;->j(Ljava/lang/Object;)I

    move-result v1

    .line 154
    const/4 v2, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 155
    invoke-static {v0, v1}, Lcom/android/athome/picker/media/q;->c(Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method public final q()V
    .registers 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v4/app/d;->q()V

    .line 197
    return-void
.end method
