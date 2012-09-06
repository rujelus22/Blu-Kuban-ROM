.class public LF/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LF/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, LF/o;

    invoke-direct {v0}, LF/o;-><init>()V

    sput-object v0, LF/n;->a:LF/p;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/text/Spannable;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    sget-object v0, LF/n;->a:LF/p;

    invoke-static {p0, p1, v0}, LF/n;->a(Landroid/content/Context;ILF/p;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;ILF/p;)Landroid/text/Spannable;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x15180

    const/16 v0, 0x3c

    .line 86
    if-ge p1, v0, :cond_8

    move p1, v0

    .line 89
    :cond_8
    div-int v0, p1, v1

    .line 90
    rem-int v1, p1, v1

    div-int/lit16 v1, v1, 0xe10

    .line 91
    rem-int/lit16 v2, p1, 0xe10

    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 92
    if-lez v0, :cond_1f

    .line 93
    invoke-interface {p2}, LF/p;->a()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {p0, v2, v0, v1, p2}, LF/n;->a(Landroid/content/Context;Ljava/lang/String;IILF/p;)Landroid/text/Spannable;

    move-result-object v0

    .line 110
    :goto_1e
    return-object v0

    .line 95
    :cond_1f
    if-lez v1, :cond_2a

    .line 96
    invoke-interface {p2}, LF/p;->b()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {p0, v0, v1, v2, p2}, LF/n;->a(Landroid/content/Context;Ljava/lang/String;IILF/p;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1e

    .line 100
    :cond_2a
    invoke-interface {p2}, LF/p;->c()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v0, "{0}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 103
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "{0}"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    .line 107
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v3, p2}, LF/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILF/p;)V

    .line 108
    invoke-static {v0, v3, v1}, LF/n;->a(Landroid/text/Spannable;II)V

    .line 109
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {p0, v0, v1, v2, p2}, LF/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILF/p;)V

    goto :goto_1e
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IILF/p;)Landroid/text/Spannable;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    const-string v0, "{0}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 128
    const-string v0, "{1}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 129
    const-string v3, "{0}"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 130
    const-string v5, "{1}"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 131
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    add-int v7, v2, v3

    invoke-virtual {v6, v2, v7, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    if-le v0, v2, :cond_32

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v3, v7

    .line 135
    sub-int/2addr v0, v3

    .line 137
    :cond_32
    add-int v3, v0, v5

    invoke-virtual {v6, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 139
    if-le v2, v0, :cond_40

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v5, v3

    .line 141
    sub-int/2addr v2, v3

    .line 147
    :cond_40
    if-ge v0, v2, :cond_66

    .line 149
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    move v8, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v8

    .line 158
    :goto_51
    const/4 v4, 0x0

    invoke-static {p0, v6, v4, v3, p4}, LF/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILF/p;)V

    .line 159
    invoke-static {v6, v3, v2}, LF/n;->a(Landroid/text/Spannable;II)V

    .line 160
    invoke-static {p0, v6, v2, v1, p4}, LF/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILF/p;)V

    .line 161
    invoke-static {v6, v1, v0}, LF/n;->a(Landroid/text/Spannable;II)V

    .line 162
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p0, v6, v0, v1, p4}, LF/n;->a(Landroid/content/Context;Landroid/text/Spannable;IILF/p;)V

    .line 163
    return-object v6

    .line 154
    :cond_66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v3, v2, v1

    .line 156
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

.method private static a(Landroid/content/Context;Landroid/text/Spannable;IILF/p;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x21

    .line 192
    if-le p3, p2, :cond_22

    .line 193
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f19999a

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 195
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 199
    :cond_22
    return-void
.end method

.method private static a(Landroid/text/Spannable;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    if-le p2, p1, :cond_d

    .line 176
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 178
    :cond_d
    return-void
.end method
