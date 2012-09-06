.class public final Lcom/twitter/android/widget/g;
.super Landroid/text/SpannableStringBuilder;


# static fields
.field static final a:Landroid/text/Editable$Factory;


# instance fields
.field private b:Lcom/twitter/android/widget/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/widget/i;

    invoke-direct {v0}, Lcom/twitter/android/widget/i;-><init>()V

    sput-object v0, Lcom/twitter/android/widget/g;->a:Landroid/text/Editable$Factory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/g;->length()I

    move-result v0

    const-class v2, Lcom/twitter/android/widget/k;

    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/android/widget/g;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/widget/k;

    array-length v2, v0

    :goto_e
    if-ge v1, v2, :cond_36

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/twitter/android/widget/k;->a()I

    move-result v4

    if-ne v4, p1, :cond_37

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/g;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/g;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/g;->removeSpan(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/twitter/android/widget/g;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_36

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x21

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/twitter/android/widget/g;->setSpan(Ljava/lang/Object;III)V

    :cond_36
    return-void

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public final a(Lcom/twitter/android/widget/h;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/g;->b:Lcom/twitter/android/widget/h;

    return-void
.end method

.method public final bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lcom/twitter/android/widget/g;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 14

    const-class v0, Lcom/twitter/android/widget/k;

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/widget/g;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/widget/k;

    array-length v1, v0

    if-nez v1, :cond_10

    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    :cond_f
    :goto_f
    return-object p0

    :cond_10
    const/4 v2, 0x0

    array-length v3, v0

    const/4 v1, 0x0

    move v7, v1

    move-object v1, v2

    move v2, v7

    :goto_16
    if-ge v2, v3, :cond_3b

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/twitter/android/widget/g;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/twitter/android/widget/g;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-le p2, v5, :cond_38

    if-ge p1, v6, :cond_38

    if-nez v1, :cond_2d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    invoke-virtual {v4}, Lcom/twitter/android/widget/k;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_3b
    if-eqz v1, :cond_45

    if-ne p4, p5, :cond_f

    iget-object v0, p0, Lcom/twitter/android/widget/g;->b:Lcom/twitter/android/widget/h;

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/h;->a(Ljava/util/ArrayList;)V

    goto :goto_f

    :cond_45
    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_f
.end method
