.class Lcom/google/tts/TTSService$2;
.super Lcom/google/tts/ITTS$Stub;
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
    iput-object p1, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    .line 1677
    invoke-direct {p0}, Lcom/google/tts/ITTS$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "earcon"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    const-string v1, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/tts/TTSService;->access$11(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1812
    return-void
.end method

.method public addEarconFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "earcon"
    .parameter "filename"

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    const-string v1, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, p2}, Lcom/google/tts/TTSService;->access$12(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    return-void
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "text"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    const-string v1, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/tts/TTSService;->access$9(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1787
    return-void
.end method

.method public addSpeechFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    const-string v1, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, p2}, Lcom/google/tts/TTSService;->access$10(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    return-void
.end method

.method public getVersion()I
    .registers 6

    .prologue
    .line 1895
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1897
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    :try_start_5
    iget-object v3, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v3}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/tts/TTSService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1898
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v3}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/tts/TTSService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1d} :catch_21

    move-result-object v1

    .line 1904
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_1e
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    return v3

    .line 1899
    :catch_21
    move-exception v0

    .line 1902
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1e
.end method

.method public isSpeaking()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1773
    iget-object v1, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v1

    #getter for: Lcom/google/tts/TTSService;->mIsSpeaking:Z
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$7(Lcom/google/tts/TTSService;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

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

.method public playEarcon(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 7
    .parameter "earcon"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1754
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "utteranceId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    const-string v1, "DEPRECATED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    iget-object v1, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v1

    const-string v2, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->playEarcon(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    invoke-static {v1, v2, p1, p2, v0}, Lcom/google/tts/TTSService;->access$4(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    .line 1757
    return-void
.end method

.method public registerCallback(Lcom/google/tts/ITTSCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 1680
    if-eqz p1, :cond_b

    .line 1681
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mCallbacksOld:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$22(Lcom/google/tts/TTSService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1682
    :cond_b
    return-void
.end method

.method public setEngine(Ljava/lang/String;)V
    .registers 4
    .parameter "selectedEngine"

    .prologue
    .line 1697
    sget-object v0, Lcom/google/tts/TTSEngine;->TTS_ONLY:Lcom/google/tts/TTSEngine;

    invoke-virtual {v0}, Lcom/google/tts/TTSEngine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1700
    sget-object v0, Lcom/google/tts/TTSEngine;->PRERECORDED_WITH_TTS:Lcom/google/tts/TTSEngine;

    invoke-virtual {v0}, Lcom/google/tts/TTSEngine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1703
    sget-object v0, Lcom/google/tts/TTSEngine;->PRERECORDED_ONLY:Lcom/google/tts/TTSEngine;

    invoke-virtual {v0}, Lcom/google/tts/TTSEngine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1707
    sget-object v0, Lcom/google/tts/TTSEngine;->ESPEAK:Lcom/google/tts/TTSEngine;

    invoke-virtual {v0}, Lcom/google/tts/TTSEngine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1708
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    const-string v1, "/data/data/com.google.tts/lib/libespeakengine.so"

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    .line 1715
    :cond_3b
    :goto_3b
    return-void

    .line 1709
    :cond_3c
    sget-object v0, Lcom/google/tts/TTSEngine;->PICO:Lcom/google/tts/TTSEngine;

    invoke-virtual {v0}, Lcom/google/tts/TTSEngine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1710
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    const-string v1, "/system/lib/libttspico.so"

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    goto :goto_3b

    .line 1712
    :cond_54
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v0, p1}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 14
    .parameter "language"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x7

    const/4 v7, 0x3

    .line 1848
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_21

    .line 1849
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v3, loc:Ljava/util/Locale;
    iget-object v5, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v5}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v5

    const-string v6, "DEPRECATED"

    const-string v7, ""

    const-string v8, ""

    #calls: Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v5, v6, p1, v7, v8}, Lcom/google/tts/TTSService;->access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    .end local v3           #loc:Ljava/util/Locale;
    :goto_20
    return-void

    .line 1855
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_4a

    .line 1856
    new-instance v3, Ljava/util/Locale;

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    .restart local v3       #loc:Ljava/util/Locale;
    iget-object v5, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v5}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v5

    const-string v6, "DEPRECATED"

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1860
    const-string v9, ""

    .line 1859
    #calls: Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/tts/TTSService;->access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1864
    .end local v3           #loc:Ljava/util/Locale;
    :cond_4a
    sget-object v5, Lcom/google/tts/TTSService;->langRegionToLocale:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1865
    .local v1, isoLocale:Ljava/lang/String;
    const-string v2, ""

    .line 1866
    .local v2, lang:Ljava/lang/String;
    const-string v0, ""

    .line 1867
    .local v0, country:Ljava/lang/String;
    const-string v4, ""

    .line 1868
    .local v4, variant:Ljava/lang/String;
    if-nez v1, :cond_75

    .line 1869
    const-string v5, "TtsService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not supported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1872
    :cond_75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_80

    .line 1873
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1875
    :cond_80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_8b

    .line 1876
    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1878
    :cond_8b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v11, :cond_95

    .line 1879
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1882
    :cond_95
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    .restart local v3       #loc:Ljava/util/Locale;
    iget-object v5, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v5}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v5

    const-string v6, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v5, v6, v2, v0, v4}, Lcom/google/tts/TTSService;->access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20
.end method

.method public setSpeechRate(I)V
    .registers 4
    .parameter "speechRate"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    const-string v1, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->setSpeechRate(Ljava/lang/String;I)I
    invoke-static {v0, v1, p1}, Lcom/google/tts/TTSService;->access$13(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    .line 1835
    return-void
.end method

.method public speak(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 8
    .parameter "text"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_51

    .line 1730
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    .line 1731
    aget-object v1, p3, v3

    sget-object v2, Lcom/google/tts/TTSParams;->VOICE_FEMALE:Lcom/google/tts/TTSParams;

    invoke-virtual {v2}, Lcom/google/tts/TTSParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[fem]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1734
    :cond_30
    aget-object v1, p3, v3

    sget-object v2, Lcom/google/tts/TTSParams;->VOICE_ROBOT:Lcom/google/tts/TTSParams;

    invoke-virtual {v2}, Lcom/google/tts/TTSParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[robot]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1739
    :cond_51
    const-string v1, "utteranceId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    const-string v1, "DEPRECATED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    iget-object v1, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v1}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v1

    const-string v2, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->speak(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I
    invoke-static {v1, v2, p1, p2, v0}, Lcom/google/tts/TTSService;->access$3(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    .line 1742
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v0

    const-string v1, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->stopAll(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/google/tts/TTSService;->access$23(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    .line 1765
    return-void
.end method

.method public synthesizeToFile(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "text"
    .parameter "params"
    .parameter "filename"

    .prologue
    .line 1920
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1921
    .local v1, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_10

    .line 1922
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1924
    .restart local v1       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    iget-object v3, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mSelf:Lcom/google/tts/TTSService;
    invoke-static {v3}, Lcom/google/tts/TTSService;->access$2(Lcom/google/tts/TTSService;)Lcom/google/tts/TTSService;

    move-result-object v3

    const-string v4, "DEPRECATED"

    #calls: Lcom/google/tts/TTSService;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v3, v4, p1, v1, p3}, Lcom/google/tts/TTSService;->access$19(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    .line 1926
    .local v2, success:Z
    if-eqz v2, :cond_2c

    .line 1927
    iget-object v3, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    const/4 v4, 0x1

    #setter for: Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z
    invoke-static {v3, v4}, Lcom/google/tts/TTSService;->access$24(Lcom/google/tts/TTSService;Z)V

    .line 1928
    :goto_24
    iget-object v3, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z
    invoke-static {v3}, Lcom/google/tts/TTSService;->access$25(Lcom/google/tts/TTSService;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1937
    :cond_2c
    return v2

    .line 1930
    :cond_2d
    const-wide/16 v3, 0x1f4

    :try_start_2f
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_24

    .line 1931
    :catch_33
    move-exception v0

    .line 1933
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_24
.end method

.method public unregisterCallback(Lcom/google/tts/ITTSCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 1685
    if-eqz p1, :cond_b

    .line 1686
    iget-object v0, p0, Lcom/google/tts/TTSService$2;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mCallbacksOld:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/google/tts/TTSService;->access$22(Lcom/google/tts/TTSService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1687
    :cond_b
    return-void
.end method
