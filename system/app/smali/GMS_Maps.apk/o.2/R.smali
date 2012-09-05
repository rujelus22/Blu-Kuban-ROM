.class public Lo/R;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/l;

.field private final c:I

.field private final d:Lu/j;


# direct methods
.method protected constructor <init>(ILu/j;Ljava/lang/CharSequence;Lo/l;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/R;->c:I

    iput-object p2, p0, Lo/R;->d:Lu/j;

    instance-of v0, p3, Landroid/text/Spanned;

    if-eqz v0, :cond_16

    check-cast p3, Landroid/text/Spanned;

    invoke-static {p3}, Lo/R;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/R;->a:Ljava/lang/String;

    :goto_13
    iput-object p4, p0, Lo/R;->b:Lo/l;

    return-void

    :cond_16
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1f

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lo/R;->a:Ljava/lang/String;

    goto :goto_13

    :cond_1f
    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2b
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/R;->a:Ljava/lang/String;

    goto :goto_13
.end method

.method private static a(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v3, Lu/K;

    invoke-virtual {v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move v1, v0

    :goto_11
    array-length v0, v3

    if-ge v1, v0, :cond_2b

    aget-object v0, v3, v1

    check-cast v0, Lu/K;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0}, Lu/K;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_2b
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/CharSequence;Lo/l;)Lo/R;
    .registers 5

    new-instance v0, Lo/R;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lo/R;-><init>(ILu/j;Ljava/lang/CharSequence;Lo/l;)V

    return-object v0
.end method

.method public static a(Lu/j;Ljava/lang/CharSequence;Lo/l;)Lo/R;
    .registers 5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lu/j;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    :goto_8
    new-instance v1, Lo/R;

    invoke-direct {v1, v0, p0, p1, p2}, Lo/R;-><init>(ILu/j;Ljava/lang/CharSequence;Lo/l;)V

    return-object v1

    :pswitch_e
    const/4 v0, 0x1

    goto :goto_8

    :pswitch_10
    const/4 v0, 0x3

    goto :goto_8

    :pswitch_12
    const/4 v0, 0x0

    goto :goto_8

    :pswitch_14
    const/4 v0, 0x2

    goto :goto_8

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo/R;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lo/l;
    .registers 2

    iget-object v0, p0, Lo/R;->b:Lo/l;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lo/R;->c:I

    return v0
.end method

.method public d()Lu/j;
    .registers 2

    iget-object v0, p0, Lo/R;->d:Lu/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lo/R;

    if-eqz v0, :cond_13

    check-cast p1, Lo/R;

    iget-object v0, p1, Lo/R;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/R;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lo/R;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
