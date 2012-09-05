.class public Lcom/android/exchange/adapter/ValidateCertParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ValidateCertParser.java"


# instance fields
.field private mResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mResult:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ValidateCertParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x2c5

    if-eq v2, v3, :cond_10

    .line 40
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 42
    :cond_10
    :goto_10
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ValidateCertParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_45

    .line 43
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x2c7

    if-ne v2, v3, :cond_21

    .line 44
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->parseCertificate()V

    goto :goto_10

    .line 45
    :cond_21
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x2ca

    if-ne v2, v3, :cond_41

    .line 46
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->getValueInt()I

    move-result v2

    iput v2, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    .line 48
    iget v2, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    if-eq v2, v0, :cond_10

    .line 49
    iget v2, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    invoke-static {v2}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 50
    new-instance v0, Lcom/android/exchange/CommandStatusException;

    iget v1, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    invoke-direct {v0, v1}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v0

    .line 54
    :cond_41
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->skipTag()V

    goto :goto_10

    .line 57
    :cond_45
    iget v2, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mStatus:I

    if-ne v2, v0, :cond_4a

    :goto_49
    return v0

    :cond_4a
    move v0, v1

    goto :goto_49
.end method

.method public parseCertificate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    :goto_0
    const/16 v0, 0x2c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ValidateCertParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 62
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x2ca

    if-ne v0, v1, :cond_1e

    .line 63
    iget-object v0, p0, Lcom/android/exchange/adapter/ValidateCertParser;->mResult:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->getValueInt()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ValidateCertParser;->skipTag()V

    goto :goto_0

    .line 68
    :cond_22
    return-void
.end method
