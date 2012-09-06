.class public Li/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Li/l;

.field private final c:I

.field private final d:Lo/j;


# direct methods
.method protected constructor <init>(ILo/j;Ljava/lang/CharSequence;Li/l;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Li/U;->c:I

    .line 49
    iput-object p2, p0, Li/U;->d:Lo/j;

    .line 50
    instance-of v0, p3, Landroid/text/Spanned;

    if-eqz v0, :cond_16

    .line 51
    check-cast p3, Landroid/text/Spanned;

    invoke-static {p3}, Li/U;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/U;->a:Ljava/lang/String;

    .line 59
    :goto_13
    iput-object p4, p0, Li/U;->b:Li/l;

    .line 60
    return-void

    .line 52
    :cond_16
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 53
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Li/U;->a:Ljava/lang/String;

    goto :goto_13

    .line 54
    :cond_1f
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_2b
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/U;->a:Ljava/lang/String;

    goto :goto_13
.end method

.method public static a(ILjava/lang/CharSequence;Li/l;)Li/U;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Li/U;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Li/U;-><init>(ILo/j;Ljava/lang/CharSequence;Li/l;)V

    return-object v0
.end method

.method public static a(Lo/j;Ljava/lang/CharSequence;Li/l;)Li/U;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x6

    .line 65
    invoke-virtual {p0}, Lo/j;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 79
    :goto_8
    new-instance v1, Li/U;

    invoke-direct {v1, v0, p0, p1, p2}, Li/U;-><init>(ILo/j;Ljava/lang/CharSequence;Li/l;)V

    return-object v1

    .line 67
    :pswitch_e
    const/4 v0, 0x1

    .line 68
    goto :goto_8

    .line 70
    :pswitch_10
    const/4 v0, 0x3

    .line 71
    goto :goto_8

    .line 73
    :pswitch_12
    const/4 v0, 0x0

    .line 74
    goto :goto_8

    .line 76
    :pswitch_14
    const/4 v0, 0x2

    goto :goto_8

    .line 65
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method

.method private static a(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v3, Lo/K;

    invoke-virtual {v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move v1, v0

    .line 112
    :goto_11
    array-length v0, v3

    if-ge v1, v0, :cond_2b

    .line 113
    aget-object v0, v3, v1

    check-cast v0, Lo/K;

    .line 114
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0}, Lo/K;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 117
    :cond_2b
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Li/U;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Li/l;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Li/U;->b:Li/l;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Li/U;->c:I

    return v0
.end method

.method public d()Lo/j;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Li/U;->d:Lo/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 127
    if-ne p1, p0, :cond_4

    .line 128
    const/4 v0, 0x1

    .line 134
    :goto_3
    return v0

    .line 130
    :cond_4
    instance-of v0, p1, Li/U;

    if-eqz v0, :cond_13

    .line 131
    check-cast p1, Li/U;

    .line 132
    iget-object v0, p1, Li/U;->a:Ljava/lang/String;

    iget-object v1, p0, Li/U;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 134
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Li/U;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
