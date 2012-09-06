.class public LaQ/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lcom/google/googlenav/ca;

.field private final b:I

.field private final c:LaQ/af;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ca;LaQ/af;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, LaQ/ab;->a:Lcom/google/googlenav/ca;

    .line 45
    iput p3, p0, LaQ/ab;->b:I

    .line 46
    iput-object p2, p0, LaQ/ab;->c:LaQ/af;

    .line 47
    iput p4, p0, LaQ/ab;->d:I

    .line 48
    return-void
.end method

.method static synthetic a(LaQ/ab;)LaQ/af;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, LaQ/ab;->c:LaQ/af;

    return-object v0
.end method

.method static synthetic a(LaQ/ab;LaQ/ae;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, LaQ/ab;->b(LaQ/ae;)V

    return-void
.end method

.method private a(LaQ/ae;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 94
    const/16 v0, 0x73

    const-string v1, "e"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "t=a"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, LaQ/ab;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, LaQ/ae;->c(LaQ/ae;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-static {p1}, LaQ/ae;->a(LaQ/ae;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-static {p1}, LaQ/ae;->d(LaQ/ae;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method

.method private a(LaQ/ae;Lcom/google/googlenav/ca;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 117
    invoke-static {p1}, LaQ/ae;->e(LaQ/ae;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x488

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/googlenav/ca;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_24
    invoke-virtual {p2}, Lcom/google/googlenav/ca;->l()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 122
    invoke-static {p1}, LaQ/ae;->b(LaQ/ae;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ca;->b(I)Lcom/google/googlenav/ck;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v2, v3, v1, v4}, LaQ/ab;->a(Landroid/content/Context;Lcom/google/googlenav/ck;Landroid/text/SpannableStringBuilder;I)V

    .line 123
    invoke-virtual {p2}, Lcom/google/googlenav/ca;->l()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_48

    .line 124
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 128
    :cond_4b
    invoke-virtual {p2}, Lcom/google/googlenav/ca;->l()I

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_6c

    .line 130
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 133
    :cond_6c
    invoke-static {p1}, LaQ/ae;->f(LaQ/ae;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 134
    invoke-static {p1}, LaQ/ae;->f(LaQ/ae;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 135
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/googlenav/ck;Landroid/text/SpannableStringBuilder;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 145
    invoke-virtual {p2}, Lcom/google/googlenav/ck;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 146
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 147
    invoke-virtual {p2}, Lcom/google/googlenav/ck;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 148
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 150
    :cond_2f
    invoke-virtual {p2}, Lcom/google/googlenav/ck;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 151
    invoke-virtual {p2}, Lcom/google/googlenav/ck;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 152
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    :cond_45
    invoke-virtual {p2}, Lcom/google/googlenav/ck;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 155
    invoke-virtual {p2}, Lcom/google/googlenav/ck;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 158
    :cond_5b
    invoke-virtual {p2}, Lcom/google/googlenav/ck;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 159
    new-instance v0, LaQ/ad;

    invoke-direct {v0, p0, p2}, LaQ/ad;-><init>(LaQ/ab;Lcom/google/googlenav/ck;)V

    .line 165
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 166
    invoke-virtual {p2}, Lcom/google/googlenav/ck;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 167
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 168
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 170
    :cond_87
    return-void
.end method

.method static synthetic b(LaQ/ab;LaQ/ae;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, LaQ/ab;->a(LaQ/ae;)V

    return-void
.end method

.method private b(LaQ/ae;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 105
    const/16 v0, 0x73

    const-string v1, "c"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "t=a"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, LaQ/ab;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, LaQ/ae;->c(LaQ/ae;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-static {p1}, LaQ/ae;->a(LaQ/ae;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-static {p1}, LaQ/ae;->d(LaQ/ae;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 67
    new-instance v1, LaQ/ae;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/ae;-><init>(LaQ/ac;)V

    .line 68
    const v0, 0x7f100465

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ae;->a(LaQ/ae;Landroid/view/View;)Landroid/view/View;

    .line 69
    const v0, 0x7f100466

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/ae;->a(LaQ/ae;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 70
    const v0, 0x7f100469

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/ae;->b(LaQ/ae;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 71
    const v0, 0x7f1001b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ae;->b(LaQ/ae;Landroid/view/View;)Landroid/view/View;

    .line 72
    const v0, 0x7f100468

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ae;->c(LaQ/ae;Landroid/view/View;)Landroid/view/View;

    .line 73
    const v0, 0x7f100467

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ae;->d(LaQ/ae;Landroid/view/View;)Landroid/view/View;

    .line 74
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 79
    check-cast p2, LaQ/ae;

    .line 80
    invoke-static {p2}, LaQ/ae;->b(LaQ/ae;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LaQ/ac;

    invoke-direct {v1, p0, p2}, LaQ/ac;-><init>(LaQ/ab;LaQ/ae;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, LaQ/ab;->a:Lcom/google/googlenav/ca;

    invoke-direct {p0, p2, v0}, LaQ/ab;->a(LaQ/ae;Lcom/google/googlenav/ca;)V

    .line 91
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, LaQ/ab;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 52
    const v0, 0x7f0401d5

    return v0
.end method
