.class public LI/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:LI/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LI/o;

    invoke-direct {v0}, LI/o;-><init>()V

    sput-object v0, LI/n;->a:LI/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/text/Spannable;
    .registers 3

    sget-object v0, LI/n;->a:LI/p;

    invoke-static {p0, p1, v0}, LI/n;->a(Landroid/content/Context;ILI/p;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;ILI/p;)Landroid/text/Spannable;
    .registers 7

    const v1, 0x15180

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_8

    move p1, v0

    :cond_8
    div-int v0, p1, v1

    rem-int v1, p1, v1

    div-int/lit16 v1, v1, 0xe10

    rem-int/lit16 v2, p1, 0xe10

    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    if-lez v0, :cond_1f

    invoke-interface {p2}, LI/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1, p2}, LI/n;->a(Landroid/content/Context;Ljava/lang/String;IILI/p;)Landroid/text/Spannable;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    if-lez v1, :cond_2a

    invoke-interface {p2}, LI/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v2, p2}, LI/n;->a(Landroid/content/Context;Ljava/lang/String;IILI/p;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1e

    :cond_2a
    invoke-interface {p2}, LI/p;->c()Ljava/lang/String;

    move-result-object v1

    const-string v0, "{0}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{0}"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v3, p2}, LI/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILI/p;)V

    invoke-static {v0, v3, v1}, LI/n;->a(Landroid/text/Spannable;II)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {p0, v0, v1, v2, p2}, LI/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILI/p;)V

    goto :goto_1e
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IILI/p;)Landroid/text/Spannable;
    .registers 15

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "{0}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v0, "{1}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "{0}"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "{1}"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int v7, v2, v3

    invoke-virtual {v6, v2, v7, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-le v0, v2, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v3, v7

    sub-int/2addr v0, v3

    :cond_32
    add-int v3, v0, v5

    invoke-virtual {v6, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-le v2, v0, :cond_40

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v5, v3

    sub-int/2addr v2, v3

    :cond_40
    if-ge v0, v2, :cond_66

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    move v8, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v8

    :goto_51
    const/4 v4, 0x0

    invoke-static {p0, v6, v4, v3, p4}, LI/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILI/p;)V

    invoke-static {v6, v3, v2}, LI/n;->a(Landroid/text/Spannable;II)V

    invoke-static {p0, v6, v2, v1, p4}, LI/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILI/p;)V

    invoke-static {v6, v1, v0}, LI/n;->a(Landroid/text/Spannable;II)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p0, v6, v0, v1, p4}, LI/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILI/p;)V

    return-object v6

    :cond_66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v3, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    move v8, v1

    move v1, v0

    move v0, v8

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_51
.end method

.method private static a(Landroid/content/Context;Landroid/text/Spannable;IILI/p;)V
    .registers 9

    const/16 v3, 0x21

    if-le p3, p2, :cond_22

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f19999a

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_22
    return-void
.end method

.method private static a(Landroid/text/Spannable;II)V
    .registers 5

    if-le p2, p1, :cond_d

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    return-void
.end method
