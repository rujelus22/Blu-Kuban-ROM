.class Lcom/google/tts/TTSService$1;
.super Lcom/google/tts/ITtsBeta$Stub;
.source "TTSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/TTSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/TTSService;


# direct methods
.method constructor <init>(Lcom/google/tts/TTSService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    .line 1412
    invoke-direct {p0}, Lcom/google/tts/ITtsBeta$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->access$11(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1538
    return-void
.end method

.method public addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "filename"

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/google/tts/TTSService;->access$12(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    return-void
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "callingApp"
    .parameter "text"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->access$9(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1513
    return-void
.end method

.method public addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "callingApp"
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/google/tts/TTSService;->access$10(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    return-void
.end method

.method public areDefaultsEnforced()Z
    .registers 2

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->isDefaultEnforced()Z
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$21(Lcom/google/tts/TTSService;)Z

    move-result v0

    return v0
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->getDefaultEngine()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$20(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->getLanguage()[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$17(Lcom/google/tts/TTSService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "lang"
    .parameter "country"
    .parameter "variant"
    .parameter "params"

    .prologue
    .line 1586
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p4

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_11

    .line 1595
    :goto_6
    iget-object v2, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v2}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v2

    #calls: Lcom/google/tts/TTSService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, p1, p2, p3}, Lcom/google/tts/TTSService;->access$16(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 1587
    :cond_11
    aget-object v1, p4, v0

    .line 1588
    .local v1, param:Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 1589
    const-string v2, "engine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1590
    iget-object v2, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v2}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p4, v3

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    goto :goto_6

    .line 1586
    :cond_2b
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public isSpeaking()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1499
    iget-object v1, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v1

    #getter for: Lcom/google/tts/TTSService;->mIsSpeaking:Z
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$7(Lcom/google/tts/TTSService;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSpeechQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$8(Lcom/google/tts/TTSService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_1a

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_10

    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1465
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v1, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v1

    #calls: Lcom/google/tts/TTSService;->playEarcon(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    invoke-static {v1, p1, p2, p3, v0}, Lcom/google/tts/TTSService;->access$4(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v1

    return v1
.end method

.method public playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    .registers 12
    .parameter "callingApp"
    .parameter "duration"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1478
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1479
    .local v5, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p5, :cond_10

    .line 1480
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1482
    .restart local v5       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    #calls: Lcom/google/tts/TTSService;->playSilence(Ljava/lang/String;JILjava/util/ArrayList;)I
    invoke-static/range {v0 .. v5}, Lcom/google/tts/TTSService;->access$5(Lcom/google/tts/TTSService;Ljava/lang/String;JILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Ljava/lang/String;Lcom/google/tts/ITtsCallbackBeta;)I
    .registers 4
    .parameter "packageName"
    .parameter "cb"

    .prologue
    .line 1415
    if-eqz p2, :cond_16

    .line 1416
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$0(Lcom/google/tts/TTSService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1417
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mCallbacksMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$1(Lcom/google/tts/TTSService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    const/4 v0, 0x0

    .line 1420
    :goto_15
    return v0

    :cond_16
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .registers 3
    .parameter "packageName"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v0, p1}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "callingApp"
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/tts/TTSService;->access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPitch(Ljava/lang/String;I)I
    .registers 4
    .parameter "callingApp"
    .parameter "pitch"

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->setPitch(Ljava/lang/String;I)I
    invoke-static {v0, p1, p2}, Lcom/google/tts/TTSService;->access$14(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setSpeechRate(Ljava/lang/String;I)I
    .registers 4
    .parameter "callingApp"
    .parameter "speechRate"

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->setSpeechRate(Ljava/lang/String;I)I
    invoke-static {v0, p1, p2}, Lcom/google/tts/TTSService;->access$13(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 7
    .parameter "callingApp"
    .parameter "text"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_10

    .line 1446
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1448
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v1, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v1

    #calls: Lcom/google/tts/TTSService;->speak(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    invoke-static {v1, p1, p2, p3, v0}, Lcom/google/tts/TTSService;->access$3(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v1

    return v1
.end method

.method public stop(Ljava/lang/String;)I
    .registers 3
    .parameter "callingApp"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->stop(Ljava/lang/String;)I
    invoke-static {v0, p1}, Lcom/google/tts/TTSService;->access$6(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "callingApp"
    .parameter "text"
    .parameter "params"
    .parameter "filename"

    .prologue
    .line 1635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_10

    .line 1637
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1639
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v1, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v1

    #calls: Lcom/google/tts/TTSService;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v1, p1, p2, v0, p4}, Lcom/google/tts/TTSService;->access$19(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public unregisterCallback(Ljava/lang/String;Lcom/google/tts/ITtsCallbackBeta;)I
    .registers 4
    .parameter "packageName"
    .parameter "cb"

    .prologue
    .line 1424
    if-eqz p2, :cond_16

    .line 1425
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mCallbacksMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$1(Lcom/google/tts/TTSService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget-object v0, p0, Lcom/google/tts/TTSService$1;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$0(Lcom/google/tts/TTSService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1427
    const/4 v0, 0x0

    .line 1429
    :goto_15
    return v0

    :cond_16
    const/4 v0, -0x1

    goto :goto_15
.end method
