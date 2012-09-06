.class public Lcom/google/googlenav/ui/view/android/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/view/dialog/q;

.field private b:[Lcom/google/googlenav/ui/view/android/az;

.field private final c:Landroid/view/View;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/googlenav/ui/g;

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/googlenav/ui/g;ZZII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/av;->c:Landroid/view/View;

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->d:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/av;->e:Lcom/google/googlenav/ui/g;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    .line 60
    iput p5, p0, Lcom/google/googlenav/ui/view/android/av;->g:I

    .line 61
    iput p6, p0, Lcom/google/googlenav/ui/view/android/av;->f:I

    .line 62
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/av;->d()V

    .line 63
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/av;->b(Z)V

    .line 64
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_27

    .line 65
    invoke-direct {p0, p4}, Lcom/google/googlenav/ui/view/android/av;->a(Z)V

    .line 67
    :cond_27
    return-void
.end method

.method private static a(II)Lcom/google/googlenav/ui/view/android/az;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-static {p0, p1}, Lad/b;->b(II)Z

    move-result v5

    .line 205
    packed-switch p0, :pswitch_data_68

    .line 222
    new-instance v0, Lcom/google/googlenav/ui/view/android/az;

    if-eqz v5, :cond_63

    const v1, 0x7f0202b1

    :goto_e
    const/16 v2, 0x107

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe8

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/az;-><init>(ILjava/lang/String;IIZ)V

    :goto_1a
    return-object v0

    .line 207
    :pswitch_1b
    new-instance v0, Lcom/google/googlenav/ui/view/android/az;

    if-eqz v5, :cond_2f

    const v1, 0x7f0202b9

    :goto_22
    const/16 v2, 0x5d7

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe9

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/az;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1a

    :cond_2f
    const v1, 0x7f0202ba

    goto :goto_22

    .line 211
    :pswitch_33
    new-instance v0, Lcom/google/googlenav/ui/view/android/az;

    if-eqz v5, :cond_47

    const v1, 0x7f0202c1

    :goto_3a
    const/16 v2, 0x5e0

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xea

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/az;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1a

    :cond_47
    const v1, 0x7f0202c2

    goto :goto_3a

    .line 216
    :pswitch_4b
    new-instance v0, Lcom/google/googlenav/ui/view/android/az;

    if-eqz v5, :cond_5f

    const v1, 0x7f0202af

    :goto_52
    const/16 v2, 0x23e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xeb

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/az;-><init>(ILjava/lang/String;IIZ)V

    goto :goto_1a

    :cond_5f
    const v1, 0x7f0202b0

    goto :goto_52

    .line 222
    :cond_63
    const v1, 0x7f0202b2

    goto :goto_e

    .line 205
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_33
        :pswitch_4b
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/av;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/av;->b(I)V

    return-void
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->c:Landroid/view/View;

    const v1, 0x7f10024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    if-eqz p1, :cond_30

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/av;->a(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 89
    const v1, 0x7f10024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    const/16 v1, 0x50c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_2f
    return-void

    .line 92
    :cond_30
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f
.end method

.method private b(I)V
    .registers 5
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->e:Lcom/google/googlenav/ui/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private b(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->c:Landroid/view/View;

    const v1, 0x7f10024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 102
    const/16 v1, 0xec

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/av;->a(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    if-eqz p1, :cond_32

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    const v1, 0x7f10024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    const/16 v1, 0x300

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_31
    return-void

    .line 109
    :cond_32
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31
.end method

.method private d()V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->c:Landroid/view/View;

    const v1, 0x7f100250

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 119
    const/16 v1, 0xed

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/av;->a(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget v1, p0, Lcom/google/googlenav/ui/view/android/av;->f:I

    iget v2, p0, Lcom/google/googlenav/ui/view/android/av;->g:I

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/android/av;->a(II)Lcom/google/googlenav/ui/view/android/az;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/az;->a(Landroid/view/View;)V

    .line 123
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/av;->e()[Lcom/google/googlenav/ui/view/android/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->b:[Lcom/google/googlenav/ui/view/android/az;

    .line 124
    return-void
.end method

.method private e()[Lcom/google/googlenav/ui/view/android/az;
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/az;

    .line 189
    iget v1, p0, Lcom/google/googlenav/ui/view/android/av;->g:I

    invoke-static {v2, v1}, Lcom/google/googlenav/ui/view/android/av;->a(II)Lcom/google/googlenav/ui/view/android/az;

    move-result-object v1

    aput-object v1, v0, v2

    .line 191
    iget v1, p0, Lcom/google/googlenav/ui/view/android/av;->g:I

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/view/android/av;->a(II)Lcom/google/googlenav/ui/view/android/az;

    move-result-object v1

    aput-object v1, v0, v3

    .line 193
    iget v1, p0, Lcom/google/googlenav/ui/view/android/av;->g:I

    invoke-static {v4, v1}, Lcom/google/googlenav/ui/view/android/av;->a(II)Lcom/google/googlenav/ui/view/android/az;

    move-result-object v1

    aput-object v1, v0, v4

    .line 195
    iget v1, p0, Lcom/google/googlenav/ui/view/android/av;->g:I

    invoke-static {v5, v1}, Lcom/google/googlenav/ui/view/android/av;->a(II)Lcom/google/googlenav/ui/view/android/az;

    move-result-object v1

    aput-object v1, v0, v5

    .line 197
    return-object v0
.end method


# virtual methods
.method protected a(I)Lcom/google/googlenav/ui/android/ac;
    .registers 3
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/googlenav/ui/view/android/aw;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/aw;-><init>(Lcom/google/googlenav/ui/view/android/av;I)V

    return-object v0
.end method

.method public a()V
    .registers 8

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    if-nez v0, :cond_3f

    .line 135
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 136
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    .line 138
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/q;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/av;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/av;->c:Landroid/view/View;

    const v4, 0x7f100251

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/view/android/ay;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/av;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/av;->b:[Lcom/google/googlenav/ui/view/android/az;

    invoke-direct {v4, v5, v6}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Landroid/content/Context;[Lcom/google/googlenav/ui/view/android/az;)V

    new-instance v5, Lcom/google/googlenav/ui/view/android/ax;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/view/android/ax;-><init>(Lcom/google/googlenav/ui/view/android/av;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/googlenav/ui/view/dialog/q;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    .line 155
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/dialog/q;->setOwnerActivity(Landroid/app/Activity;)V

    .line 157
    :cond_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->show()V

    .line 158
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->dismiss()V

    .line 168
    :cond_9
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/av;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 172
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/av;->b()V

    .line 176
    :goto_f
    return-void

    .line 174
    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/av;->a()V

    goto :goto_f
.end method
