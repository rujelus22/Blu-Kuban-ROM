.class public Lcom/sec/android/app/sns/response/data/SnsResponseScheduleRetrieve;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseScheduleRetrieve.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 32
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getID()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getInternalCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getHttpStatusCode()I

    move-result v5

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/response/data/SnsResponse;-><init>(IIIIILjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 9
    .parameter "context"
    .parameter "req"

    .prologue
    const/4 v5, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, uri:Landroid/net/Uri;
    const/16 v1, 0x1771

    .line 48
    .local v1, internalCode:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseScheduleRetrieve;->getRespType()I

    move-result v4

    if-ne v4, v5, :cond_27

    .line 49
    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 50
    .local v2, schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 52
    invoke-virtual {v0, p2, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v3

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 56
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getConstraintStopFlag()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 57
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/response/data/SnsResponseScheduleRetrieve;->setInternalCode(I)V

    .line 61
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v2           #schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    :cond_27
    new-instance v4, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v4, v3, v1}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v4
.end method
