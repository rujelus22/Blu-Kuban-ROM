.class public Lcom/google/android/apps/plus/views/SectionHeaderView;
.super Landroid/widget/LinearLayout;
.source "SectionHeaderView.java"


# static fields
.field private static final SUPERSCRIPT_SPAN:Landroid/text/style/SuperscriptSpan;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/apps/plus/views/SectionHeaderView$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/SectionHeaderView$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/SectionHeaderView;->SUPERSCRIPT_SPAN:Landroid/text/style/SuperscriptSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private adjustSuperscriptSpans(Landroid/text/SpannableStringBuilder;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Landroid/text/style/SuperscriptSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuperscriptSpan;

    .line 70
    if-eqz v0, :cond_2b

    .line 71
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 72
    aget-object v2, v0, v1

    .line 73
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 74
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 75
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 76
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 77
    sget-object v2, Lcom/google/android/apps/plus/views/SectionHeaderView;->SUPERSCRIPT_SPAN:Landroid/text/style/SuperscriptSpan;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 80
    :cond_2b
    return-void
.end method


# virtual methods
.method public setText(I)V
    .registers 3
    .parameter "textResId"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SectionHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 56
    instance-of v2, p1, Landroid/text/SpannedString;

    if-eqz v2, :cond_36

    .line 57
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 58
    check-cast v0, Landroid/text/SpannedString;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_32

    .line 60
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/views/SectionHeaderView;->adjustSuperscriptSpans(Landroid/text/SpannableStringBuilder;)V

    .line 62
    :cond_32
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_35
    return-void

    .line 64
    :cond_36
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35
.end method
