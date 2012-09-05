.class public Lcom/android/exchange/adapter/ResolveRecipientsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ResolveRecipientsParser.java"


# instance fields
.field mRRResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/provider/RRResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/exchange/EasSyncService;

.field private mStatus:I


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
    .line 31
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mStatus:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 33
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
            "Lcom/android/exchange/provider/RRResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mStatus:I

    return v0
.end method

.method public parse()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v3

    const/16 v4, 0x285

    if-eq v3, v4, :cond_10

    .line 46
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 48
    :cond_10
    :goto_10
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3c

    .line 49
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v4, 0x286

    if-ne v3, v4, :cond_2b

    .line 50
    new-instance v0, Lcom/android/exchange/provider/RRResponse;

    invoke-direct {v0}, Lcom/android/exchange/provider/RRResponse;-><init>()V

    .line 51
    .local v0, respItem:Lcom/android/exchange/provider/RRResponse;
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parseResponse(Lcom/android/exchange/provider/RRResponse;)V

    .line 52
    iget-object v3, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 53
    .end local v0           #respItem:Lcom/android/exchange/provider/RRResponse;
    :cond_2b
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v4, 0x287

    if-ne v3, v4, :cond_38

    .line 54
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValueInt()I

    move-result v3

    iput v3, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mStatus:I

    goto :goto_10

    .line 56
    :cond_38
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_10

    .line 59
    :cond_3c
    iget-object v3, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mRRResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4d

    iget v3, p0, Lcom/android/exchange/adapter/ResolveRecipientsParser;->mStatus:I

    if-ne v3, v1, :cond_4d

    :goto_4c
    return v1

    :cond_4d
    move v1, v2

    goto :goto_4c
.end method

.method public parseCertificates()Lcom/android/exchange/provider/RecipientCertificates;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, _status:B
    const/4 v2, 0x0

    .line 118
    .local v2, _certificatesCount:I
    const/4 v3, 0x0

    .line 119
    .local v3, _recipientCount:I
    const/4 v4, 0x0

    .line 120
    .local v4, _certificate:Ljava/lang/String;
    const/4 v5, 0x0

    .line 122
    .local v5, _miniCertificate:Ljava/lang/String;
    :goto_5
    const/16 v0, 0x28c

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4d

    .line 123
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x287

    if-ne v0, v6, :cond_1d

    .line 124
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    goto :goto_5

    .line 125
    :cond_1d
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x295

    if-ne v0, v6, :cond_28

    .line 126
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValueInt()I

    move-result v2

    goto :goto_5

    .line 127
    :cond_28
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x292

    if-ne v0, v6, :cond_33

    .line 128
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValueInt()I

    move-result v3

    goto :goto_5

    .line 129
    :cond_33
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x28d

    if-ne v0, v6, :cond_3e

    .line 130
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 131
    :cond_3e
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x28e

    if-ne v0, v6, :cond_49

    .line 132
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 134
    :cond_49
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_5

    .line 138
    :cond_4d
    new-instance v0, Lcom/android/exchange/provider/RecipientCertificates;

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/provider/RecipientCertificates;-><init>(BIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseRecipient(Lcom/android/exchange/provider/RRResponse;)V
    .registers 12
    .parameter "rrResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x296

    const/4 v8, 0x3

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, type:B
    const/4 v2, 0x0

    .line 82
    .local v2, displayName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 83
    .local v3, email:Ljava/lang/String;
    const/4 v4, 0x0

    .line 84
    .local v4, certificates:Lcom/android/exchange/provider/RecipientCertificates;
    const/4 v5, 0x0

    .line 85
    .local v5, availabilityStatus:I
    const/4 v6, 0x0

    .line 87
    .local v6, mergedFreeBusy:Ljava/lang/String;
    :cond_9
    :goto_9
    const/16 v0, 0x289

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v0

    if-eq v0, v8, :cond_6d

    .line 88
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x288

    if-ne v0, v7, :cond_20

    .line 89
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    goto :goto_9

    .line 90
    :cond_20
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x28a

    if-ne v0, v7, :cond_2b

    .line 91
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 92
    :cond_2b
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x28b

    if-ne v0, v7, :cond_36

    .line 93
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 94
    :cond_36
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x28c

    if-ne v0, v7, :cond_41

    .line 95
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parseCertificates()Lcom/android/exchange/provider/RecipientCertificates;

    move-result-object v4

    goto :goto_9

    .line 96
    :cond_41
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    if-ne v0, v9, :cond_69

    .line 97
    :goto_45
    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v0

    if-eq v0, v8, :cond_9

    .line 98
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x287

    if-ne v0, v7, :cond_5a

    .line 99
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_45

    .line 100
    :cond_5a
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v7, 0x299

    if-ne v0, v7, :cond_65

    .line 101
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_45

    .line 103
    :cond_65
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_45

    .line 107
    :cond_69
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_9

    :cond_6d
    move-object v0, p1

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/android/exchange/provider/RRResponse;->addRecipient(BLjava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/RecipientCertificates;ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public parseResponse(Lcom/android/exchange/provider/RRResponse;)V
    .registers 4
    .parameter "rrResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    :goto_0
    const/16 v0, 0x286

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_42

    .line 64
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x290

    if-ne v0, v1, :cond_16

    .line 65
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/exchange/provider/RRResponse;->to:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_16
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x287

    if-ne v0, v1, :cond_27

    .line 67
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p1, Lcom/android/exchange/provider/RRResponse;->status:B

    goto :goto_0

    .line 68
    :cond_27
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x292

    if-ne v0, v1, :cond_34

    .line 69
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getValueInt()I

    move-result v0

    iput v0, p1, Lcom/android/exchange/provider/RRResponse;->recipientCount:I

    goto :goto_0

    .line 70
    :cond_34
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x289

    if-ne v0, v1, :cond_3e

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parseRecipient(Lcom/android/exchange/provider/RRResponse;)V

    goto :goto_0

    .line 73
    :cond_3e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->skipTag()V

    goto :goto_0

    .line 76
    :cond_42
    return-void
.end method
