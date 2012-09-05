.class public Lcom/cisco/anyconnect/common/X509CertificateDNMapping;
.super Ljava/lang/Object;
.source "X509CertificateDNMapping.java"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->mKey:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->mValue:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->mValue:Ljava/lang/String;

    return-object v0
.end method
