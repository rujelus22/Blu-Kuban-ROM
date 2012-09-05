.class public Lorg/apache/commons/httpclient/util/URIUtil$Coder;
.super Lorg/apache/commons/httpclient/URI;
.source "URIUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/util/URIUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Coder"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 553
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    return-void
.end method

.method public static decode([CLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "escapedComponent"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-static {p0, p1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C
    .registers 4
    .parameter "unescapedComponent"
    .parameter "allowed"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {p0, p1, p2}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 7
    .parameter "original"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 641
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 642
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 644
    .local v2, saved:I
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 645
    .local v0, at:I
    if-ltz v0, :cond_23

    .line 646
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 651
    :goto_1b
    move v2, v0

    .line 652
    if-gez v0, :cond_a

    .line 653
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 649
    :cond_23
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b
.end method

.method public static replace(Ljava/lang/String;[C[C)Ljava/lang/String;
    .registers 6
    .parameter "original"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 625
    array-length v0, p1

    .local v0, i:I
    :goto_1
    if-lez v0, :cond_e

    .line 626
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-static {p0, v1, v2}, Lorg/apache/commons/httpclient/util/URIUtil$Coder;->replace(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    .line 625
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 628
    :cond_e
    return-object p0
.end method

.method public static verifyEscaped([C)Z
    .registers 7
    .parameter "original"

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 600
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_2a

    .line 601
    aget-char v0, p0, v1

    .line 602
    .local v0, c:I
    const/16 v3, 0x80

    if-le v0, v3, :cond_f

    .line 611
    .end local v0           #c:I
    :cond_e
    :goto_e
    return v2

    .line 604
    .restart local v0       #c:I
    :cond_f
    const/16 v3, 0x25

    if-ne v0, v3, :cond_27

    .line 605
    add-int/lit8 v1, v1, 0x1

    aget-char v3, p0, v1

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-eq v3, v4, :cond_e

    add-int/lit8 v1, v1, 0x1

    aget-char v3, p0, v1

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-eq v3, v4, :cond_e

    .line 600
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 611
    .end local v0           #c:I
    :cond_2a
    const/4 v2, 0x1

    goto :goto_e
.end method
