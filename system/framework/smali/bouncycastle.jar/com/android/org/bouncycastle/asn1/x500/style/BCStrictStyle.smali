.class public Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 9
    .parameter "name1"
    .parameter "name2"

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 16
    .local v1, rdns1:[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    .line 18
    .local v2, rdns2:[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_e

    .line 31
    :cond_d
    :goto_d
    return v3

    .line 23
    :cond_e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    array-length v4, v1

    if-eq v0, v4, :cond_1f

    .line 25
    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 31
    :cond_1f
    const/4 v3, 0x1

    goto :goto_d
.end method
