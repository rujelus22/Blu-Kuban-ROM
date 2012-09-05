.class public Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
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
    .line 19
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4
    .parameter "oid"
    .parameter "seperator"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 28
    iput-char p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    .line 29
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    .prologue
    .line 33
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

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
    .registers 12

    .prologue
    const/16 v10, 0x3d

    const/16 v9, 0x23

    const/4 v4, 0x0

    const/16 v8, 0x2b

    const/16 v7, 0x5c

    .line 38
    iget v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_15

    .line 40
    const/4 v4, 0x0

    .line 108
    :goto_14
    return-object v4

    .line 43
    :cond_15
    iget v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    add-int/lit8 v1, v5, 0x1

    .line 44
    .local v1, end:I
    const/4 v3, 0x0

    .line 45
    .local v3, quoted:Z
    const/4 v2, 0x0

    .line 47
    .local v2, escaped:Z
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 49
    :goto_20
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v1, v5, :cond_9c

    .line 51
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 53
    .local v0, c:C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_66

    .line 55
    if-nez v2, :cond_3d

    .line 57
    if-nez v3, :cond_3b

    const/4 v3, 0x1

    .line 74
    :goto_37
    const/4 v2, 0x0

    .line 104
    :goto_38
    add-int/lit8 v1, v1, 0x1

    .line 105
    goto :goto_20

    :cond_3b
    move v3, v4

    .line 57
    goto :goto_37

    .line 63
    :cond_3d
    if-ne v0, v9, :cond_5a

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_5a

    .line 65
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    :cond_54
    :goto_54
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 67
    :cond_5a
    if-ne v0, v8, :cond_54

    iget-char v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    if-eq v5, v8, :cond_54

    .line 69
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_54

    .line 78
    :cond_66
    if-nez v2, :cond_6a

    if-eqz v3, :cond_94

    .line 80
    :cond_6a
    if-ne v0, v9, :cond_88

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_88

    .line 82
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    :cond_81
    :goto_81
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    const/4 v2, 0x0

    goto :goto_38

    .line 84
    :cond_88
    if-ne v0, v8, :cond_81

    iget-char v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    if-eq v5, v8, :cond_81

    .line 86
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_81

    .line 91
    :cond_94
    if-ne v0, v7, :cond_98

    .line 93
    const/4 v2, 0x1

    goto :goto_38

    .line 95
    :cond_98
    iget-char v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    if-ne v0, v5, :cond_aa

    .line 107
    .end local v0           #c:C
    :cond_9c
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 108
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_14

    .line 101
    .restart local v0       #c:C
    :cond_aa
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_38
.end method
