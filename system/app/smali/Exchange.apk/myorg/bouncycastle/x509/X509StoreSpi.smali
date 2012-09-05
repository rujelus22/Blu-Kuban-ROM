.class public abstract Lmyorg/bouncycastle/x509/X509StoreSpi;
.super Ljava/lang/Object;
.source "X509StoreSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract engineGetMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;
.end method

.method public abstract engineInit(Lmyorg/bouncycastle/x509/X509StoreParameters;)V
.end method
