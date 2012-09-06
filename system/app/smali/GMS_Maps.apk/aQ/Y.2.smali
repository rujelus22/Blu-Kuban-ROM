.class public LaQ/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lcom/google/googlenav/ca;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ca;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LaQ/Y;->a:Lcom/google/googlenav/ca;

    .line 47
    iput p2, p0, LaQ/Y;->b:I

    .line 48
    iput p3, p0, LaQ/Y;->c:I

    .line 49
    iput p4, p0, LaQ/Y;->d:I

    .line 50
    return-void
.end method

.method static synthetic a(LaQ/Y;)I
    .registers 2
    .parameter

    .prologue
    .line 34
    iget v0, p0, LaQ/Y;->b:I

    return v0
.end method

.method private static a(LaQ/aa;)V
    .registers 3
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 197
    iget-object v0, p0, LaQ/aa;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, LaQ/aa;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, LaQ/aa;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, LaQ/aa;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, LaQ/aa;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    return-void
.end method

.method private static a(Landroid/widget/ImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method private static a(Landroid/widget/ImageView;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/view/dialog/bh;->a(J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    return-void
.end method

.method static synthetic b(LaQ/Y;)I
    .registers 2
    .parameter

    .prologue
    .line 34
    iget v0, p0, LaQ/Y;->d:I

    return v0
.end method

.method static synthetic c(LaQ/Y;)Lcom/google/googlenav/ca;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, LaQ/Y;->a:Lcom/google/googlenav/ca;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 75
    new-instance v1, LaQ/aa;

    invoke-direct {v1}, LaQ/aa;-><init>()V

    .line 76
    invoke-static {v1, p1}, LaQ/aa;->a(LaQ/aa;Landroid/view/View;)Landroid/view/View;

    .line 77
    const v0, 0x7f100052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/aa;->b(LaQ/aa;Landroid/view/View;)Landroid/view/View;

    .line 78
    const v0, 0x7f1002f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aa;->a:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f1002f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aa;->b:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f1002f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aa;->c:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f1002f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aa;->d:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f1002f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aa;->e:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f100090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/aa;->a(LaQ/aa;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 84
    const v0, 0x7f100194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-static {v1, v0}, LaQ/aa;->a(LaQ/aa;Lcom/google/googlenav/ui/view/android/DistanceView;)Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 85
    const v0, 0x7f100195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-static {v1, v0}, LaQ/aa;->a(LaQ/aa;Lcom/google/googlenav/ui/view/android/HeadingView;)Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 86
    const v0, 0x7f1002f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/aa;->b(LaQ/aa;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 88
    return-object v1
.end method

.method public a(LaQ/aa;Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 103
    if-eqz p2, :cond_9c

    .line 104
    invoke-static {p1}, LaQ/aa;->a(LaQ/aa;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 105
    invoke-static {p1}, LaQ/aa;->a(LaQ/aa;)Landroid/view/View;

    move-result-object v1

    new-instance v2, LaQ/Z;

    invoke-direct {v2, p0, p3}, LaQ/Z;-><init>(LaQ/Y;Lcom/google/googlenav/ui/g;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0, p2, p1}, LaQ/Y;->a(Lcom/google/googlenav/ca;LaQ/aa;)V

    .line 118
    invoke-static {p1}, LaQ/aa;->b(LaQ/aa;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {p1}, LaQ/aa;->b(LaQ/aa;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    invoke-static {p1}, LaQ/aa;->c(LaQ/aa;)Lcom/google/googlenav/ui/view/android/DistanceView;

    move-result-object v1

    invoke-static {p1}, LaQ/aa;->d(LaQ/aa;)Lcom/google/googlenav/ui/view/android/HeadingView;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/googlenav/ca;->j()Lat/B;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 122
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 123
    invoke-virtual {p2}, Lcom/google/googlenav/ca;->l()I

    move-result v2

    if-eqz v2, :cond_62

    .line 124
    const-string v2, "i "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 125
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-static {p1}, LaQ/aa;->b(LaQ/aa;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020010

    invoke-direct {v2, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v5, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 128
    :cond_62
    invoke-virtual {p2}, Lcom/google/googlenav/ca;->k()I

    move-result v2

    if-lez v2, :cond_8d

    .line 129
    invoke-virtual {p2, v5}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    :goto_73
    invoke-virtual {p2}, Lcom/google/googlenav/ca;->k()I

    move-result v2

    if-ge v0, v2, :cond_8d

    .line 131
    const-string v2, ", "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 134
    :cond_8d
    invoke-static {p1}, LaQ/aa;->e(LaQ/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {p1}, LaQ/aa;->e(LaQ/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_9b
    return-void

    .line 137
    :cond_9c
    invoke-static {p1}, LaQ/aa;->b(LaQ/aa;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x4be

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {p1}, LaQ/aa;->b(LaQ/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    invoke-static {p1}, LaQ/aa;->c(LaQ/aa;)Lcom/google/googlenav/ui/view/android/DistanceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    .line 140
    invoke-static {p1}, LaQ/aa;->d(LaQ/aa;)Lcom/google/googlenav/ui/view/android/HeadingView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/HeadingView;->setVisibility(I)V

    .line 141
    invoke-static {p1}, LaQ/aa;->e(LaQ/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-static {p1}, LaQ/aa;->a(LaQ/aa;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 143
    invoke-static {p1}, LaQ/Y;->a(LaQ/aa;)V

    goto :goto_9b
.end method

.method a(Lcom/google/googlenav/ca;LaQ/aa;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->d()Ljava/util/Set;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 151
    array-length v1, v0

    packed-switch v1, :pswitch_data_b8

    .line 183
    :goto_19
    return-void

    .line 153
    :pswitch_1a
    invoke-static {p2}, LaQ/Y;->a(LaQ/aa;)V

    .line 154
    iget-object v1, p2, LaQ/aa;->a:Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/view/dialog/bh;->a(J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    iget-object v0, p2, LaQ/aa;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    .line 159
    :pswitch_32
    iget-object v1, p2, LaQ/aa;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v1, p2, LaQ/aa;->b:Landroid/widget/ImageView;

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    .line 161
    iget-object v1, p2, LaQ/aa;->e:Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    .line 162
    iget-object v0, p2, LaQ/aa;->c:Landroid/widget/ImageView;

    invoke-static {v0}, LaQ/Y;->a(Landroid/widget/ImageView;)V

    .line 163
    iget-object v0, p2, LaQ/aa;->d:Landroid/widget/ImageView;

    invoke-static {v0}, LaQ/Y;->a(Landroid/widget/ImageView;)V

    goto :goto_19

    .line 166
    :pswitch_58
    iget-object v1, p2, LaQ/aa;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v1, p2, LaQ/aa;->b:Landroid/widget/ImageView;

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    .line 168
    iget-object v1, p2, LaQ/aa;->c:Landroid/widget/ImageView;

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    .line 169
    iget-object v1, p2, LaQ/aa;->d:Landroid/widget/ImageView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    .line 170
    iget-object v0, p2, LaQ/aa;->e:Landroid/widget/ImageView;

    invoke-static {v0}, LaQ/Y;->a(Landroid/widget/ImageView;)V

    goto :goto_19

    .line 173
    :pswitch_84
    iget-object v1, p2, LaQ/aa;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v1, p2, LaQ/aa;->b:Landroid/widget/ImageView;

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    .line 175
    iget-object v1, p2, LaQ/aa;->c:Landroid/widget/ImageView;

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    .line 176
    iget-object v1, p2, LaQ/aa;->d:Landroid/widget/ImageView;

    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    .line 177
    iget-object v1, p2, LaQ/aa;->e:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LaQ/Y;->a(Landroid/widget/ImageView;J)V

    goto/16 :goto_19

    .line 151
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_32
        :pswitch_58
        :pswitch_84
    .end packed-switch
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 93
    check-cast p2, LaQ/aa;

    .line 94
    iget-object v0, p0, LaQ/Y;->a:Lcom/google/googlenav/ca;

    invoke-virtual {p0, p2, v0, p1}, LaQ/Y;->a(LaQ/aa;Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V

    .line 95
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, LaQ/Y;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 54
    const v0, 0x7f040112

    return v0
.end method
