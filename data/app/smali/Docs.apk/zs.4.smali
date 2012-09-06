.class public Lzs;
.super LzB;
.source "FootnoteNumber.java"


# instance fields
.field private a:LAZ;

.field private final a:LwH;

.field private a:LyD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LyD",
            "<",
            "LAZ;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lyg;


# direct methods
.method public constructor <init>(LBH;LBV;Lyg;LwH;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBH",
            "<",
            "Lzr;",
            ">;",
            "LBV",
            "<",
            "Lzr;",
            ">;",
            "Lyg;",
            "LwH;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, LzB;-><init>(LBH;LBV;)V

    .line 41
    const-string v0, "FootnoteNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating FootnoteNumber at spacer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, LBV;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object p3, p0, Lzs;->a:Lyg;

    .line 43
    iput-object p4, p0, Lzs;->a:LwH;

    .line 44
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lzs;->a:Lyg;

    iget-object v1, p0, Lzs;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lyg;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .registers 6

    .prologue
    .line 61
    iget-object v0, p0, Lzs;->a:Lyg;

    iget-object v1, p0, Lzs;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lyg;->a(I)Lwk;

    move-result-object v0

    .line 62
    new-instance v1, LAZ;

    iget-object v2, p0, Lzs;->a:LwH;

    invoke-direct {v1, v0, v2}, LAZ;-><init>(Lwk;LwH;)V

    .line 64
    iget-object v0, p0, Lzs;->a:LAZ;

    invoke-virtual {v1, v0}, LAZ;->a(LBj;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 65
    iput-object v1, p0, Lzs;->a:LAZ;

    .line 66
    iget-object v0, p0, Lzs;->a:LyD;

    if-eqz v0, :cond_28

    .line 68
    iget-object v0, p0, Lzs;->a:LyD;

    iget-object v1, p0, Lzs;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 70
    :cond_28
    iget-object v0, p0, Lzs;->a:LAZ;

    invoke-virtual {v0}, LAZ;->a()LyB;

    move-result-object v0

    iput-object v0, p0, Lzs;->a:LyD;

    .line 72
    :cond_30
    iget-object v0, p0, Lzs;->a:LBV;

    invoke-virtual {v0}, LBV;->length()I

    move-result v0

    .line 73
    iget-object v1, p0, Lzs;->a:LyD;

    iget-object v2, p0, Lzs;->a:LBV;

    const/4 v3, 0x0

    iget-object v4, p0, Lzs;->a:LwH;

    invoke-interface {v4}, LwH;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, LyD;->a(Landroid/text/Spannable;IILandroid/content/Context;)V

    .line 74
    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "LFt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lzs;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lzs;->a:LBV;

    invoke-virtual {v0}, LBV;->c()I

    move-result v0

    if-lt p2, v0, :cond_20

    :cond_10
    iget-object v0, p0, Lzs;->a:LBV;

    invoke-virtual {v0}, LBV;->d()I

    move-result v0

    if-lt p1, v0, :cond_21

    iget-object v0, p0, Lzs;->a:LBV;

    invoke-virtual {v0}, LBV;->d()I

    move-result v0

    if-lt p2, v0, :cond_21

    .line 101
    :cond_20
    :goto_20
    return-void

    .line 92
    :cond_21
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lzs;->a:LBV;

    invoke-virtual {v1}, LBV;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lzs;->a:LBV;

    invoke-virtual {v2}, LBV;->d()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94
    if-ge v0, v1, :cond_54

    .line 96
    new-instance v0, LFt;

    iget-object v1, p0, Lzs;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    iget-object v2, p0, Lzs;->a:LBH;

    invoke-virtual {v2}, LBH;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, LFt;-><init>(II)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 99
    :cond_54
    new-instance v0, LFt;

    iget-object v1, p0, Lzs;->a:LBH;

    invoke-virtual {v1}, LBH;->c()I

    move-result v1

    iget-object v2, p0, Lzs;->a:LBH;

    invoke-virtual {v2}, LBH;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, LFt;-><init>(II)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method public a(Lye;)V
    .registers 5
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, LzB;->a(Lye;)V

    .line 49
    const-string v0, "FootnoteNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting FootnoteNumber at spacer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzs;->a:LBV;

    invoke-virtual {v2}, LBV;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lzs;->a:LyD;

    iget-object v1, p0, Lzs;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 51
    iget-object v0, p0, Lzs;->a:LBV;

    invoke-virtual {v0}, LBV;->a()LBW;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lzs;->a:LBV;

    invoke-virtual {v2}, LBV;->a()LBW;

    move-result-object v2

    invoke-virtual {v2}, LBW;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LBW;->a(II)LBW;

    .line 52
    return-void
.end method

.method protected b()V
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lzs;->a:LBV;

    invoke-virtual {v0}, LBV;->a()LBW;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0}, LBW;->length()I

    move-result v2

    invoke-virtual {p0}, Lzs;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LBW;->a(IILjava/lang/CharSequence;)LBW;

    .line 82
    invoke-virtual {p0}, Lzs;->a()V

    .line 83
    return-void
.end method
