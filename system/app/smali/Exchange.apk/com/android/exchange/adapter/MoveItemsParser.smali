.class public Lcom/android/exchange/adapter/MoveItemsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "MoveItemsParser.java"


# instance fields
.field private mNewServerId:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    .line 47
    iput-object p2, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 48
    return-void
.end method


# virtual methods
.method public getNewServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    return v0
.end method

.method public parse()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, res:Z
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x145

    if-eq v1, v2, :cond_10

    .line 101
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 103
    :cond_10
    :goto_10
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_25

    .line 104
    iget v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14a

    if-ne v1, v2, :cond_21

    .line 105
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->parseResponse()V

    goto :goto_10

    .line 107
    :cond_21
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->skipTag()V

    goto :goto_10

    .line 110
    :cond_25
    return v0
.end method

.method public parseResponse()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 59
    :cond_3
    :goto_3
    const/16 v1, 0x14a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    if-eq v1, v6, :cond_6f

    .line 60
    iget v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14b

    if-ne v1, v2, :cond_40

    .line 61
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->getValueInt()I

    move-result v0

    .line 63
    .local v0, status:I
    packed-switch v0, :pswitch_data_70

    .line 81
    :pswitch_18
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    .line 84
    :goto_1b
    if-eq v0, v6, :cond_3

    .line 86
    iget-object v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in MoveItems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_3

    .line 69
    :pswitch_3a
    iput v5, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1b

    .line 73
    :pswitch_3d
    iput v6, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1b

    .line 88
    .end local v0           #status:I
    :cond_40
    iget v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14c

    if-ne v1, v2, :cond_6b

    .line 89
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved message id is now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_3

    .line 92
    :cond_6b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemsParser;->skipTag()V

    goto :goto_3

    .line 95
    :cond_6f
    return-void

    .line 63
    :pswitch_data_70
    .packed-switch 0x3
        :pswitch_3a
        :pswitch_3a
        :pswitch_18
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method
