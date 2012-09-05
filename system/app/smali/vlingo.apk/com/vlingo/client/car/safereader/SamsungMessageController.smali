.class public Lcom/vlingo/client/car/safereader/SamsungMessageController;
.super Lcom/vlingo/client/car/safereader/SafeReaderController;
.source "SamsungMessageController.java"

# interfaces
.implements Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/safereader/SafeReaderController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 24
    return-void
.end method

.method private getItem(Lcom/vlingo/client/util/SMSUtil$TextMessage;Z)Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;
    .registers 7
    .parameter "message"
    .parameter "nextEnabled"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SamsungMessageController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    .line 51
    .local v0, view:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;
    invoke-virtual {v0, p1, p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->initialize(Lcom/vlingo/client/util/SMSUtil$TextMessage;Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;)V

    .line 52
    if-nez p2, :cond_18

    .line 53
    invoke-virtual {v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->disableNext()V

    .line 54
    :cond_18
    return-object v0
.end method


# virtual methods
.method public onDial(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 62
    iget-object v0, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lcom/vlingo/client/car/safereader/SafeReaderController;->onDial(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onDisplayed(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SamsungMessageController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->id:J

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/util/SMSUtil;->markSMSAsRead(Landroid/content/Context;J)V

    .line 67
    return-void
.end method

.method public onReply(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 58
    iget-object v0, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lcom/vlingo/client/car/safereader/SafeReaderController;->onReply(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected startSafeReaderHome()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 27
    iget-object v6, p0, Lcom/vlingo/client/car/safereader/SamsungMessageController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v6}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/vlingo/client/util/SMSUtil;->getLastNUnreadMessages(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v4

    .line 28
    .local v4, messages:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_1b

    .line 29
    iget-object v6, p0, Lcom/vlingo/client/car/safereader/SamsungMessageController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v7, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MESSAGES_NO_UNREAD:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v6, v7}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 47
    :goto_1a
    return-void

    .line 32
    :cond_1b
    const/4 v5, 0x0

    .line 33
    .local v5, nextItems:[Lcom/vlingo/client/car/CarScrollableItem;
    const/4 v0, 0x0

    .line 34
    .local v0, firstItem:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-ne v6, v8, :cond_34

    .line 35
    invoke-virtual {v4}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-direct {p0, v6, v9}, Lcom/vlingo/client/car/safereader/SamsungMessageController;->getItem(Lcom/vlingo/client/util/SMSUtil$TextMessage;Z)Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    move-result-object v0

    .line 45
    :cond_2d
    iget-object v6, p0, Lcom/vlingo/client/car/safereader/SamsungMessageController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7, v5, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    goto :goto_1a

    .line 38
    :cond_34
    invoke-virtual {v4}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-direct {p0, v6, v8}, Lcom/vlingo/client/car/safereader/SamsungMessageController;->getItem(Lcom/vlingo/client/util/SMSUtil$TextMessage;Z)Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    move-result-object v0

    .line 39
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    new-array v5, v6, [Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, iNextItem:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_48
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_2d

    .line 42
    add-int/lit8 v3, v2, 0x1

    .end local v2           #iNextItem:I
    .local v3, iNextItem:I
    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_69

    move v7, v8

    :goto_5f
    invoke-direct {p0, v6, v7}, Lcom/vlingo/client/car/safereader/SamsungMessageController;->getItem(Lcom/vlingo/client/util/SMSUtil$TextMessage;Z)Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;

    move-result-object v6

    aput-object v6, v5, v2

    .line 41
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3           #iNextItem:I
    .restart local v2       #iNextItem:I
    goto :goto_48

    .end local v2           #iNextItem:I
    .restart local v3       #iNextItem:I
    :cond_69
    move v7, v9

    .line 42
    goto :goto_5f
.end method
