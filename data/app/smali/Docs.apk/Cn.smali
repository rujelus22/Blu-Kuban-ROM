.class LCn;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/text/GetChars;
.implements Ljava/lang/CharSequence;


# instance fields
.field a:I

.field a:LCl;

.field a:Landroid/text/TextUtils$TruncateAt;

.field a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter

    .prologue
    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1716
    iput-object p1, p0, LCn;->a:Ljava/lang/CharSequence;

    .line 1717
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1721
    const/4 v0, 0x1

    invoke-static {v0}, LCu;->a(I)[C

    move-result-object v0

    .line 1722
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, LCn;->getChars(II[CI)V

    .line 1723
    aget-char v1, v0, v2

    .line 1725
    invoke-static {v0}, LCu;->a([C)V

    .line 1726
    return v1
.end method

.method public getChars(II[CI)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1731
    iget-object v0, p0, LCn;->a:LCl;

    invoke-virtual {v0, p1}, LCl;->h(I)I

    move-result v3

    .line 1732
    iget-object v0, p0, LCn;->a:LCl;

    invoke-virtual {v0, p2}, LCl;->h(I)I

    move-result v6

    .line 1734
    iget-object v0, p0, LCn;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1736
    :goto_11
    if-gt v3, v6, :cond_1f

    .line 1737
    iget-object v0, p0, LCn;->a:LCl;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, LCl;->a(LCl;III[CI)V

    .line 1736
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1739
    :cond_1f
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1743
    iget-object v0, p0, LCn;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1748
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 1749
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, LCn;->getChars(II[CI)V

    .line 1750
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1755
    invoke-virtual {p0}, LCn;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 1756
    invoke-virtual {p0}, LCn;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0, v2}, LCn;->getChars(II[CI)V

    .line 1757
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
