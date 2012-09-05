.class public Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "X509NameTokenizer.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private seperator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "oid"

    .prologue
    .line 16
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4
    .parameter "oid"
    .parameter "seperator"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 20
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 22
    iput-char p2, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    .line 23
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    .prologue
    .line 26
    iget v0, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public nextToken()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x2b

    const/4 v4, 0x0

    const/16 v7, 0x5c

    .line 30
    iget v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_11

    .line 31
    const/4 v4, 0x0

    .line 71
    :goto_10
    return-object v4

    .line 34
    :cond_11
    iget v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    add-int/lit8 v1, v5, 0x1

    .line 35
    .local v1, end:I
    const/4 v3, 0x0

    .line 36
    .local v3, quoted:Z
    const/4 v2, 0x0

    .line 38
    .local v2, escaped:Z
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 40
    :goto_1c
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v1, v5, :cond_79

    .line 41
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 43
    .local v0, c:C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_3f

    .line 44
    if-nez v2, :cond_39

    .line 45
    if-nez v3, :cond_37

    const/4 v3, 0x1

    .line 49
    :goto_33
    const/4 v2, 0x0

    .line 67
    :goto_34
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_1c

    :cond_37
    move v3, v4

    .line 45
    goto :goto_33

    .line 47
    :cond_39
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 51
    :cond_3f
    if-nez v2, :cond_43

    if-eqz v3, :cond_71

    .line 52
    :cond_43
    const/16 v5, 0x23

    if-ne v0, v5, :cond_65

    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_65

    .line 53
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    :cond_5e
    :goto_5e
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    const/4 v2, 0x0

    goto :goto_34

    .line 54
    :cond_65
    if-ne v0, v8, :cond_5e

    iget-char v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    if-eq v5, v8, :cond_5e

    .line 55
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5e

    .line 59
    :cond_71
    if-ne v0, v7, :cond_75

    .line 60
    const/4 v2, 0x1

    goto :goto_34

    .line 61
    :cond_75
    iget-char v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    if-ne v0, v5, :cond_86

    .line 70
    .end local v0           #c:C
    :cond_79
    iput v1, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 71
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    .line 64
    .restart local v0       #c:C
    :cond_86
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34
.end method
