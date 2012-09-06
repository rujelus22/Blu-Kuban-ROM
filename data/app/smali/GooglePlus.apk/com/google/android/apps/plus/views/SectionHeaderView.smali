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
    .registers 11
    .parameter "sb"

    .prologue
    .line 69
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Landroid/text/style/SuperscriptSpan;

    invoke-virtual {p1, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuperscriptSpan;

    .line 70
    .local v4, spans:[Landroid/text/style/SuperscriptSpan;
    if-eqz v4, :cond_2c

    .line 71
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    array-length v6, v4

    if-ge v2, v6, :cond_2c

    .line 72
    aget-object v3, v4, v2

    .line 73
    .local v3, span:Landroid/text/style/SuperscriptSpan;
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 74
    .local v1, from:I
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 75
    .local v5, to:I
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, flags:I
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 77
    sget-object v6, Lcom/google/android/apps/plus/views/SectionHeaderView;->SUPERSCRIPT_SPAN:Landroid/text/style/SuperscriptSpan;

    invoke-virtual {p1, v6, v1, v5, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 80
    .end local v0           #flags:I
    .end local v1           #from:I
    .end local v2           #i:I
    .end local v3           #span:Landroid/text/style/SuperscriptSpan;
    .end local v5           #to:I
    :cond_2c
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
    .registers 10
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 54
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 55
    .local v7, textView:Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, allCaps:Ljava/lang/String;
    instance-of v0, p1, Landroid/text/SpannedString;

    if-eqz v0, :cond_35

    .line 57
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v4, sb:Landroid/text/SpannableStringBuilder;
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

    if-ge v0, v1, :cond_31

    .line 60
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/views/SectionHeaderView;->adjustSuperscriptSpans(Landroid/text/SpannableStringBuilder;)V

    .line 62
    :cond_31
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v4           #sb:Landroid/text/SpannableStringBuilder;
    :goto_34
    return-void

    .line 64
    :cond_35
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34
.end method
