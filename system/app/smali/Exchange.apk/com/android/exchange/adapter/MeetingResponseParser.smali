.class public Lcom/android/exchange/adapter/MeetingResponseParser;
.super Lcom/android/exchange/adapter/Parser;
.source "MeetingResponseParser.java"


# instance fields
.field private mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 31
    iput-object p2, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 32
    return-void
.end method


# virtual methods
.method public parse()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, res:Z
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x207

    if-eq v1, v2, :cond_10

    .line 53
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 55
    :cond_10
    :goto_10
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_25

    .line 56
    iget v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x20a

    if-ne v1, v2, :cond_21

    .line 57
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->parseResult()V

    goto :goto_10

    .line 59
    :cond_21
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->skipTag()V

    goto :goto_10

    .line 62
    :cond_25
    return v0
.end method

.method public parseResult()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    :cond_2
    :goto_2
    const/16 v1, 0x20a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/MeetingResponseParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5f

    .line 36
    iget v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x20b

    if-ne v1, v2, :cond_34

    .line 37
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->getValueInt()I

    move-result v0

    .line 38
    .local v0, status:I
    if-eq v0, v5, :cond_2

    .line 39
    iget-object v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in meeting response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 41
    .end local v0           #status:I
    :cond_34
    iget v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->tag:I

    const/16 v2, 0x205

    if-ne v1, v2, :cond_5b

    .line 42
    iget-object v1, p0, Lcom/android/exchange/adapter/MeetingResponseParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meeting response calendar id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_5b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MeetingResponseParser;->skipTag()V

    goto :goto_2

    .line 47
    :cond_5f
    return-void
.end method
