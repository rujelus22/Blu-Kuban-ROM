.class LCo;
.super LCn;
.source "Layout.java"

# interfaces
.implements Landroid/text/Spanned;


# instance fields
.field private final a:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter

    .prologue
    .line 1766
    invoke-direct {p0, p1}, LCn;-><init>(Ljava/lang/CharSequence;)V

    .line 1767
    check-cast p1, Landroid/text/Spanned;

    iput-object p1, p0, LCo;->a:Landroid/text/Spanned;

    .line 1768
    return-void
.end method


# virtual methods
.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1782
    iget-object v0, p0, LCo;->a:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1787
    iget-object v0, p0, LCo;->a:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1777
    iget-object v0, p0, LCo;->a:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1772
    iget-object v0, p0, LCo;->a:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1792
    iget-object v0, p0, LCo;->a:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1797
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 1798
    invoke-virtual {p0, p1, p2, v0, v5}, LCo;->getChars(II[CI)V

    .line 1800
    new-instance v4, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1801
    iget-object v0, p0, LCo;->a:Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1802
    return-object v4
.end method
