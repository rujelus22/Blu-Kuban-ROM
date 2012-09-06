.class public Lcom/google/googlenav/ui/view/dialog/at;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/google/googlenav/ui/wizard/cw;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/cw;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 70
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->a:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->b:I

    .line 71
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/at;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 72
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/at;->q:Lcom/google/googlenav/ui/wizard/cw;

    .line 73
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 2
    .parameter

    .prologue
    .line 276
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-static {p0, p1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    return v0
.end method

.method private a(Landroid/view/View;III)Landroid/widget/ImageView;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xf

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 194
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v0, -0x1

    if-eq p4, v0, :cond_30

    .line 198
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    if-ne p4, v4, :cond_75

    .line 200
    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->o:Landroid/widget/TextView;

    .line 204
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/at;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v1, p4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_30

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_30
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 212
    const v0, 0x7f10021b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 213
    if-ne p4, v4, :cond_7a

    .line 214
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    const/16 v1, 0x14d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/av;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/av;-><init>(Lcom/google/googlenav/ui/view/dialog/at;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :cond_59
    :goto_59
    const v0, 0x7f10021a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 236
    const/16 v1, 0x14a

    invoke-direct {p0, p3, v1}, Lcom/google/googlenav/ui/view/dialog/at;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const v0, 0x7f10021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    .line 201
    :cond_75
    if-ne p4, v3, :cond_25

    .line 202
    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->p:Landroid/widget/TextView;

    goto :goto_25

    .line 222
    :cond_7a
    if-ne p4, v3, :cond_59

    .line 223
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    const/16 v1, 0x14b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aw;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aw;-><init>(Lcom/google/googlenav/ui/view/dialog/at;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_59
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/at;)Lcom/google/googlenav/ui/wizard/cw;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->q:Lcom/google/googlenav/ui/wizard/cw;

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/at;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v3, p1}, Lcom/google/googlenav/ui/view/dialog/at;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 2
    .parameter

    .prologue
    .line 281
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/at;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/at;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    const v0, 0x7f02020f

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 325
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ax;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/ax;-><init>(Lcom/google/googlenav/ui/view/dialog/at;)V

    invoke-virtual {v0, p1, v1}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    .line 334
    return-void
.end method

.method public final a(Lcom/google/googlenav/ui/wizard/cC;)V
    .registers 4
    .parameter

    .prologue
    .line 255
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/ay;->a:[I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/cC;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 269
    :goto_b
    return-void

    .line 257
    :pswitch_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/cC;->b()LT/f;

    move-result-object v1

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 260
    :pswitch_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/cC;->b()LT/f;

    move-result-object v1

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 263
    :pswitch_28
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->m:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/cC;->b()LT/f;

    move-result-object v1

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 266
    :pswitch_36
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->n:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/cC;->b()LT/f;

    move-result-object v1

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 255
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1a
        :pswitch_28
        :pswitch_36
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 311
    iget v2, p0, Lcom/google/googlenav/ui/view/dialog/at;->a:I

    if-ne v1, v2, :cond_13

    .line 312
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/at;->q:Lcom/google/googlenav/ui/wizard/cw;

    sget-object v2, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/at;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/cw;->a(Lcom/google/googlenav/ui/wizard/iS;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 318
    :goto_12
    return v0

    .line 314
    :cond_13
    iget v2, p0, Lcom/google/googlenav/ui/view/dialog/at;->b:I

    if-ne v1, v2, :cond_21

    .line 315
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/at;->q:Lcom/google/googlenav/ui/wizard/cw;

    sget-object v2, Lcom/google/googlenav/ui/wizard/iS;->a:Lcom/google/googlenav/ui/wizard/iS;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/at;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/cw;->a(Lcom/google/googlenav/ui/wizard/iS;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_12

    .line 318
    :cond_21
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/at;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    const v1, 0x7f04008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    const v0, 0x7f1001fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 84
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_2c
    const v0, 0x7f100204

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    const/16 v2, 0x14e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/at;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v0

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v2

    .line 112
    const v0, 0x7f100206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    const/16 v3, 0x14f

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v0, 0x7f100207

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/at;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/at;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v2

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v2

    .line 120
    const/16 v3, 0x150

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v0, 0x7f100209

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    const/16 v2, 0x152

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v0, 0x7f10020c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    const/4 v2, 0x6

    const/16 v3, 0x153

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/view/dialog/at;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v0, 0x7f10020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    const/4 v2, 0x4

    const/16 v3, 0x155

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/view/dialog/at;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v0, 0x7f100210

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    const/16 v2, 0x154

    invoke-direct {p0, v7, v2}, Lcom/google/googlenav/ui/view/dialog/at;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v0, 0x7f100211

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->n:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f100212

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    const/16 v2, 0x159

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v0, 0x7f100213

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x15a

    const/4 v3, 0x7

    const/16 v4, 0xe

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/googlenav/ui/view/dialog/at;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->d:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f100214

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x15c

    const/4 v3, 0x5

    const/16 v4, 0xf

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/googlenav/ui/view/dialog/at;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->e:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f100215

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x15b

    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/googlenav/ui/view/dialog/at;->a(Landroid/view/View;III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->m:Landroid/widget/ImageView;

    .line 166
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_153

    .line 168
    const v0, 0x7f100216

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x156

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_153
    return-object v1

    .line 88
    :cond_154
    const v0, 0x7f1001a8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 89
    const v0, 0x7f1001a9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f02020f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v4, Lcom/google/googlenav/ui/view/dialog/au;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/dialog/au;-><init>(Lcom/google/googlenav/ui/view/dialog/at;)V

    invoke-virtual {v0, v3, v4}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 101
    const v0, 0x7f10001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    const/16 v3, 0x15d

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->q:Lcom/google/googlenav/ui/wizard/cw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cw;->h()V

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f020231

    const/4 v2, 0x0

    .line 292
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->a:I

    const/16 v1, 0x14b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 294
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 296
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->b:I

    const/16 v1, 0x14d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 298
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/at;->q:Lcom/google/googlenav/ui/wizard/cw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cw;->a()V

    .line 178
    return-void
.end method
