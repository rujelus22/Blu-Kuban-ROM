.class Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
.super Lcom/android/exchange/adapter/Parser;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetItemEstimateParser"
.end annotation


# instance fields
.field private mEstimate:I


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
    .line 470
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 467
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 464
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    return v0
.end method


# virtual methods
.method public parse()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 477
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x185

    if-ne v0, v1, :cond_12

    .line 478
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseGetItemEstimate()V

    goto :goto_0

    .line 480
    :cond_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 483
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public parseCollection()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    :goto_0
    const/16 v0, 0x188

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7a

    .line 510
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x189

    if-ne v0, v1, :cond_2c

    .line 511
    const-string v0, "GetItemEstimateParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIE class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_2c
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18a

    if-ne v0, v1, :cond_4f

    .line 513
    const-string v0, "GetItemEstimateParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIE collectionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 514
    :cond_4f
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18c

    if-ne v0, v1, :cond_76

    .line 515
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    .line 516
    const-string v0, "GetItemEstimateParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIE estimate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_76
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 521
    :cond_7a
    return-void
.end method

.method public parseGetItemEstimate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    :goto_0
    const/16 v0, 0x185

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 488
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18d

    if-ne v0, v1, :cond_13

    .line 489
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseResponse()V

    goto :goto_0

    .line 491
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 494
    :cond_17
    return-void
.end method

.method public parseResponse()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    :goto_0
    const/16 v0, 0x18d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    .line 498
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x18e

    if-ne v0, v1, :cond_2c

    .line 499
    const-string v0, "GetItemEstimateParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIE status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    :cond_2c
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x188

    if-ne v0, v1, :cond_36

    .line 501
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseCollection()V

    goto :goto_0

    .line 503
    :cond_36
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 506
    :cond_3a
    return-void
.end method
