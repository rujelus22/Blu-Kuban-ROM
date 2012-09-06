.class public Lcom/android/exchange/adapter/GalParser;
.super Lcom/android/exchange/adapter/Parser;
.source "GalParser.java"


# instance fields
.field mGalResult:Lcom/android/exchange/provider/GalResult;

.field private mService:Lcom/android/exchange/EasSyncService;


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
    .line 33
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 30
    new-instance v0, Lcom/android/exchange/provider/GalResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/GalResult;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    .line 34
    iput-object p2, p0, Lcom/android/exchange/adapter/GalParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 35
    return-void
.end method


# virtual methods
.method public getGalResult()Lcom/android/exchange/provider/GalResult;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    return-object v0
.end method

.method public parse()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x3c5

    if-eq v1, v2, :cond_f

    .line 44
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 46
    :cond_f
    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_26

    .line 47
    iget v1, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v2, 0x3cd

    if-ne v1, v2, :cond_22

    .line 48
    iget-object v1, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/GalParser;->parseResponse(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_f

    .line 50
    :cond_22
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_f

    .line 53
    :cond_26
    iget-object v1, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    iget v1, v1, Lcom/android/exchange/provider/GalResult;->total:I

    if-lez v1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public parseProperties(Lcom/android/exchange/provider/GalResult;)V
    .registers 7
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Lcom/android/exchange/provider/GalResult$GalData;

    invoke-direct {v2}, Lcom/android/exchange/provider/GalResult$GalData;-><init>()V

    .line 58
    .local v2, galData:Lcom/android/exchange/provider/GalResult$GalData;
    :goto_5
    const/16 v3, 0x3c7

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8a

    .line 59
    iget v3, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    packed-switch v3, :pswitch_data_8e

    .line 99
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_5

    .line 62
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, displayName:Ljava/lang/String;
    const-string v3, "displayName"

    invoke-virtual {v2, v3, v0}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object v0, v2, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    goto :goto_5

    .line 67
    .end local v0           #displayName:Ljava/lang/String;
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, emailAddress:Ljava/lang/String;
    const-string v3, "emailAddress"

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object v1, v2, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    goto :goto_5

    .line 72
    .end local v1           #emailAddress:Ljava/lang/String;
    :pswitch_2f
    const-string v3, "workPhone"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 75
    :pswitch_39
    const-string v3, "office"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 78
    :pswitch_43
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 81
    :pswitch_4d
    const-string v3, "company"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 84
    :pswitch_57
    const-string v3, "alias"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 87
    :pswitch_61
    const-string v3, "firstName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 90
    :pswitch_6b
    const-string v3, "lastName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 93
    :pswitch_75
    const-string v3, "homePhone"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 96
    :pswitch_7f
    const-string v3, "mobilePhone"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 102
    :cond_8a
    invoke-virtual {p1, v2}, Lcom/android/exchange/provider/GalResult;->addGalData(Lcom/android/exchange/provider/GalResult$GalData;)V

    .line 103
    return-void

    .line 59
    :pswitch_data_8e
    .packed-switch 0x405
        :pswitch_17
        :pswitch_2f
        :pswitch_39
        :pswitch_43
        :pswitch_4d
        :pswitch_57
        :pswitch_61
        :pswitch_6b
        :pswitch_75
        :pswitch_7f
        :pswitch_23
    .end packed-switch
.end method

.method public parseResponse(Lcom/android/exchange/provider/GalResult;)V
    .registers 4
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    :goto_0
    const/16 v0, 0x3cd

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 117
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3c7

    if-ne v0, v1, :cond_13

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseStore(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 120
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 123
    :cond_17
    return-void
.end method

.method public parseResult(Lcom/android/exchange/provider/GalResult;)V
    .registers 4
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    :goto_0
    const/16 v0, 0x3c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 107
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3cf

    if-ne v0, v1, :cond_13

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseProperties(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 110
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 113
    :cond_17
    return-void
.end method

.method public parseStore(Lcom/android/exchange/provider/GalResult;)V
    .registers 4
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :goto_0
    const/16 v0, 0x3c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    .line 127
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3ce

    if-ne v0, v1, :cond_13

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseResult(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 129
    :cond_13
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3cb

    if-ne v0, v1, :cond_1d

    .line 131
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_1d
    iget v0, p0, Lcom/android/exchange/adapter/GalParser;->tag:I

    const/16 v1, 0x3d0

    if-ne v0, v1, :cond_2a

    .line 136
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValueInt()I

    move-result v0

    iput v0, p1, Lcom/android/exchange/provider/GalResult;->total:I

    goto :goto_0

    .line 138
    :cond_2a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 141
    :cond_2e
    return-void
.end method
