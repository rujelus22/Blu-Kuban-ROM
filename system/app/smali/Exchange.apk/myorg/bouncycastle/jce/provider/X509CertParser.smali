.class public Lmyorg/bouncycastle/jce/provider/X509CertParser;
.super Lmyorg/bouncycastle/x509/X509StreamParserSpi;
.source "X509CertParser.java"


# static fields
.field private static final PEM_PARSER:Lmyorg/bouncycastle/jce/provider/PEMUtil;


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private sData:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/X509CertParser;->PEM_PARSER:Lmyorg/bouncycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lmyorg/bouncycastle/x509/X509StreamParserSpi;-><init>()V

    .line 27
    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertParser;->sData:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertParser;->sDataObjectCount:I

    .line 29
    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509CertParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method