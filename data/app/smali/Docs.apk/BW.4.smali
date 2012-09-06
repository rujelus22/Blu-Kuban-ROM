.class public LBW;
.super Ljava/lang/Object;
.source "TextSlice.java"

# interfaces
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NodeOwner:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/text/GetChars;"
    }
.end annotation


# instance fields
.field private final a:LBV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBV",
            "<TNodeOwner;>;"
        }
    .end annotation
.end field

.field private final a:LFr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;"
        }
    .end annotation
.end field

.field private final a:Landroid/text/Editable;


# direct methods
.method constructor <init>(LFr;Landroid/text/Editable;LBV;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;",
            "Landroid/text/Editable;",
            "LBV",
            "<TNodeOwner;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, LBW;->a:LFr;

    .line 25
    iget-object v0, p0, LBW;->a:LFr;

    invoke-interface {v0, p0}, LFr;->a(Ljava/lang/Object;)V

    .line 26
    iput-object p2, p0, LBW;->a:Landroid/text/Editable;

    .line 27
    iput-object p3, p0, LBW;->a:LBV;

    .line 28
    return-void
.end method

.method private static a(II)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    if-ge p2, p1, :cond_29

    .line 37
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, LBW;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has end before start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_29
    if-gt p1, p3, :cond_2d

    if-le p2, p3, :cond_58

    .line 42
    :cond_2d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, LBW;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ends beyond length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_58
    if-ltz p1, :cond_5c

    if-gez p2, :cond_83

    .line 47
    :cond_5c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, LBW;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starts before 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_83
    return-void
.end method


# virtual methods
.method public a()LBV;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBV",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, LBW;->a:LBV;

    return-object v0
.end method

.method public a(II)LBW;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 117
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, LBW;->a(IILjava/lang/CharSequence;II)LBW;

    move-result-object v0

    return-object v0
.end method

.method public a(IILjava/lang/CharSequence;)LBW;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/CharSequence;",
            ")",
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBW;->a(IILjava/lang/CharSequence;II)LBW;

    move-result-object v0

    return-object v0
.end method

.method public a(IILjava/lang/CharSequence;II)LBW;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/CharSequence;",
            "II)",
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 94
    const-string v0, "replace"

    invoke-virtual {p0}, LBW;->length()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, LBW;->a(Ljava/lang/String;III)V

    .line 95
    iget-object v0, p0, LBW;->a:LFr;

    invoke-interface {v0}, LFr;->a()I

    move-result v2

    .line 96
    sub-int v0, p2, p1

    .line 97
    sub-int v1, p5, p4

    .line 98
    iget-object v3, p0, LBW;->a:LFr;

    sub-int v4, v1, v0

    invoke-interface {v3, v4}, LFr;->a(I)V

    .line 99
    iget-object v3, p0, LBW;->a:LBV;

    add-int v4, v2, p1

    invoke-virtual {v3, v4, v0, v1}, LBV;->a(III)V

    .line 101
    iget-object v0, p0, LBW;->a:Landroid/text/Editable;

    add-int v1, v2, p1

    add-int/2addr v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 102
    return-object p0
.end method

.method public a(ILjava/lang/String;)LBW;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, LBW;->a(IILjava/lang/CharSequence;II)LBW;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)LBW;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "LBW",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, LBW;->length()I

    move-result v1

    .line 123
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, LBW;->a(IILjava/lang/CharSequence;II)LBW;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .registers 5
    .parameter

    .prologue
    .line 81
    const-string v0, "charAt"

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, LBW;->length()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, LBW;->a(Ljava/lang/String;III)V

    .line 82
    iget-object v0, p0, LBW;->a:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getChars(II[CI)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    const-string v0, "getChars"

    invoke-virtual {p0}, LBW;->length()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, LBW;->a(Ljava/lang/String;III)V

    .line 67
    iget-object v0, p0, LBW;->a:LFr;

    invoke-interface {v0}, LFr;->a()I

    move-result v0

    .line 68
    iget-object v1, p0, LBW;->a:Landroid/text/Editable;

    add-int v2, v0, p1

    add-int/2addr v0, p2

    invoke-interface {v1, v2, v0, p3, p4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 69
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, LBW;->a:LFr;

    invoke-interface {v0}, LFr;->b()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 87
    const-string v0, "subSequence"

    invoke-virtual {p0}, LBW;->length()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, LBW;->a(Ljava/lang/String;III)V

    .line 88
    iget-object v0, p0, LBW;->a:LFr;

    invoke-interface {v0}, LFr;->a()I

    move-result v0

    .line 89
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, LBW;->a:Landroid/text/Editable;

    add-int v3, v0, p1

    add-int/2addr v0, p2

    invoke-direct {v1, v2, v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, LBW;->length()I

    move-result v0

    .line 74
    new-array v1, v0, [C

    .line 75
    invoke-virtual {p0, v2, v0, v1, v2}, LBW;->getChars(II[CI)V

    .line 76
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
