.class Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;
.super Lcom/google/common/base/StringUtil$CharEscaper;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/StringUtil$CharEscaperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayDecorator"
.end annotation


# instance fields
.field private final replaceLength:I

.field private final replacements:[[C


# direct methods
.method constructor <init>([[C)V
    .registers 3
    .parameter "replacements"

    .prologue
    .line 2645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/StringUtil$CharEscaper;-><init>(Lcom/google/common/base/StringUtil$1;)V

    .line 2646
    iput-object p1, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 2647
    array-length v0, p1

    iput v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    .line 2648
    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 2655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2656
    .local v2, slen:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_5
    if-ge v1, v2, :cond_1a

    .line 2657
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2658
    .local v0, c:C
    iget-object v3, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    array-length v3, v3

    if-ge v0, v3, :cond_1b

    iget-object v3, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v3, v3, v0

    if-eqz v3, :cond_1b

    .line 2659
    invoke-virtual {p0, p1, v1}, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2662
    .end local v0           #c:C
    .end local p1
    :cond_1a
    return-object p1

    .line 2656
    .restart local v0       #c:C
    .restart local p1
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method protected escape(C)[C
    .registers 3
    .parameter "c"

    .prologue
    .line 2666
    iget v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lcom/google/common/base/StringUtil$CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v0, v0, p1

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method