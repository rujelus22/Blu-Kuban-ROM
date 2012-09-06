.class public Lcom/google/googlenav/ui/view/android/v;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lad/b;Lcom/google/googlenav/ui/g;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/android/v;->a(Landroid/view/ViewGroup;Lad/b;Lcom/google/googlenav/ui/g;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 50
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Lad/b;Lcom/google/googlenav/ui/g;Z)Landroid/view/View;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f10017a

    const v3, 0x7f100170

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 158
    if-nez v0, :cond_b8

    .line 159
    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 161
    :goto_21
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const v0, 0x7f100173

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    const/16 v2, 0xf1

    invoke-static {v0, p1, p2, v2}, Lcom/google/googlenav/ui/view/android/v;->a(Landroid/view/View;Lad/b;Lcom/google/googlenav/ui/g;I)V

    .line 167
    const v0, 0x7f10001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 168
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 171
    if-eqz p3, :cond_a8

    .line 172
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 174
    new-instance v3, Lcom/google/googlenav/ui/view/android/x;

    invoke-direct {v3, p2}, Lcom/google/googlenav/ui/view/android/x;-><init>(Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const v0, 0x7f100179

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x2fc

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :goto_63
    invoke-virtual {p1}, Lad/b;->k()I

    move-result v0

    if-ne v0, v5, :cond_b0

    .line 195
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 198
    new-instance v3, Lcom/google/googlenav/ui/view/android/y;

    invoke-direct {v3, p2}, Lcom/google/googlenav/ui/view/android/y;-><init>(Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v0, 0x7f10017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x587

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const v0, 0x7f10017c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lad/b;->Q()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :goto_a4
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    return-object v1

    .line 189
    :cond_a8
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_63

    .line 214
    :cond_b0
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a4

    :cond_b8
    move-object v1, v0

    goto/16 :goto_21
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const v1, 0x7f0f00fd

    const v2, 0x7f0f00fe

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected static a()V
    .registers 0

    .prologue
    .line 224
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 60
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 61
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, p0, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x22

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 63
    return-void
.end method

.method public static a(Landroid/view/View;Lad/b;Lcom/google/googlenav/ui/g;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f100176

    const v5, 0x7f0f00ff

    const/4 v4, 0x1

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 72
    new-instance v0, Lcom/google/googlenav/ui/view/android/w;

    invoke-direct {v0, p2, p3}, Lcom/google/googlenav/ui/view/android/w;-><init>(Lcom/google/googlenav/ui/g;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f100174

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x5c0

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f100175

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lad/b;->as()Lad/y;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bA;->a(Lad/y;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p1}, Lad/b;->M()I

    move-result v0

    invoke-virtual {p1}, Lad/b;->ab()Lad/h;

    move-result-object v2

    invoke-virtual {v2}, Lad/h;->q()I

    move-result v2

    add-int/2addr v0, v2

    .line 90
    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bi;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/v;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lad/b;->k()I

    move-result v2

    if-ne v2, v4, :cond_9c

    .line 96
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 97
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 98
    const-string v0, " - "

    invoke-static {v1, v2, v0, v5}, Lcom/google/googlenav/ui/view/android/v;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    .line 99
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {p1}, Lad/b;->az()I

    move-result v3

    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/ui/wizard/iA;->a(Lad/b;Lcom/google/googlenav/ui/bn;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    const v3, 0x7f0f002c

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/v;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    .line 103
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_87
    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    invoke-virtual {p1}, Lad/b;->k()I

    move-result v1

    if-eqz v1, :cond_100

    .line 131
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :cond_9b
    :goto_9b
    return-void

    .line 108
    :cond_9c
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 111
    invoke-virtual {p1}, Lad/b;->k()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e6

    .line 112
    sget-char v3, Lcom/google/googlenav/ui/bn;->bn:C

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 114
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 120
    :cond_ba
    :goto_ba
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    const-string v0, " - "

    invoke-static {v1, v2, v0, v5}, Lcom/google/googlenav/ui/view/android/v;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    .line 122
    invoke-virtual {p1}, Lad/b;->am()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/v;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 123
    const-string v0, " - "

    invoke-static {v1, v2, v0, v5}, Lcom/google/googlenav/ui/view/android/v;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    .line 124
    invoke-virtual {p1}, Lad/b;->aH()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0f0100

    invoke-static {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/v;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)V

    .line 125
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_87

    .line 115
    :cond_e6
    invoke-virtual {p1}, Lad/b;->k()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_ba

    .line 116
    sget-char v3, Lcom/google/googlenav/ui/bn;->bl:C

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 118
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_ba

    .line 133
    :cond_100
    invoke-virtual {p1}, Lad/b;->ab()Lad/h;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_9b

    .line 136
    sget-object v2, Lcom/google/googlenav/ui/view/android/z;->a:[I

    invoke-virtual {v1}, Lad/h;->r()Lad/f;

    move-result-object v1

    invoke-virtual {v1}, Lad/f;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_12e

    .line 147
    const v1, 0x7f02041e

    .line 149
    :goto_118
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9b

    .line 138
    :pswitch_121
    const v1, 0x7f020420

    .line 139
    goto :goto_118

    .line 141
    :pswitch_125
    const v1, 0x7f02041f

    .line 142
    goto :goto_118

    .line 144
    :pswitch_129
    const v1, 0x7f020421

    .line 145
    goto :goto_118

    .line 136
    nop

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_121
        :pswitch_125
        :pswitch_129
    .end packed-switch
.end method
