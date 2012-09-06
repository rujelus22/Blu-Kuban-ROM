.class LDT;
.super LDS;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/Spanned;


# instance fields
.field private final a:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Landroid/text/Spanned;[C[C)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, LDS;-><init>(Ljava/lang/CharSequence;[C[C)V

    .line 183
    iput-object p1, p0, LDT;->a:Landroid/text/Spanned;

    .line 184
    return-void
.end method


# virtual methods
.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, LDT;->a:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, LDT;->a:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, LDT;->a:Landroid/text/Spanned;

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
    .line 193
    iget-object v0, p0, LDT;->a:Landroid/text/Spanned;

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
    .line 213
    iget-object v0, p0, LDT;->a:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 188
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1, p2}, Landroid/text/SpannedString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
