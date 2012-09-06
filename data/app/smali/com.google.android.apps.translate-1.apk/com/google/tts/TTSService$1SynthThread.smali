.class Lcom/google/tts/TTSService$1SynthThread;
.super Ljava/lang/Object;
.source "TTSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TTSService;->speakInternalOnly(Lcom/google/tts/TTSService$SpeechItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/TTSService;

.field private final synthetic val$speechItem:Lcom/google/tts/TTSService$SpeechItem;


# direct methods
.method constructor <init>(Lcom/google/tts/TTSService;Lcom/google/tts/TTSService$SpeechItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    iput-object p2, p0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 940
    const/4 v11, 0x0

    .line 941
    .local v11, synthAvailable:Z
    const-string v12, ""

    .line 943
    .local v12, utteranceId:Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v11

    .line 944
    if-nez v11, :cond_65

    .line 945
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    const/4 v15, 0x1

    #setter for: Lcom/google/tts/TTSService;->mSynthBusy:Z
    invoke-static {v14, v15}, Lcom/google/tts/TTSService;->access$29(Lcom/google/tts/TTSService;Z)V

    .line 946
    const-wide/16 v14, 0x64

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 947
    new-instance v10, Ljava/lang/Thread;

    new-instance v14, Lcom/google/tts/TTSService$1SynthThread;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/tts/TTSService$1SynthThread;-><init>(Lcom/google/tts/TTSService;Lcom/google/tts/TTSService$SpeechItem;)V

    invoke-direct {v10, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 948
    .local v10, synth:Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 949
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    const/4 v15, 0x0

    #setter for: Lcom/google/tts/TTSService;->mSynthBusy:Z
    invoke-static {v14, v15}, Lcom/google/tts/TTSService;->access$29(Lcom/google/tts/TTSService;Z)V
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_255
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3d} :catch_1f8

    .line 1026
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_50

    .line 1027
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v15, v15, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v14, v12, v15}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_50
    if-eqz v11, :cond_64

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    .line 1034
    .end local v10           #synth:Ljava/lang/Thread;
    :cond_64
    :goto_64
    return-void

    .line 952
    :cond_65
    const/4 v9, 0x3

    .line 953
    .local v9, streamType:I
    :try_start_66
    const-string v5, ""

    .line 954
    .local v5, language:Ljava/lang/String;
    const-string v1, ""

    .line 955
    .local v1, country:Ljava/lang/String;
    const-string v13, ""

    .line 956
    .local v13, variant:Ljava/lang/String;
    const-string v8, ""

    .line 957
    .local v8, speechRate:Ljava/lang/String;
    const-string v3, ""

    .line 958
    .local v3, engine:Ljava/lang/String;
    const-string v7, ""

    .line 959
    .local v7, pitch:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    if-eqz v14, :cond_89

    .line 960
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-lt v4, v14, :cond_113

    .line 990
    .end local v4           #i:I
    :cond_89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mKillList:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$30(Lcom/google/tts/TTSService;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_ea

    .line 991
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1e7

    .line 992
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v14, v3}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    .line 996
    :goto_a8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_22c

    .line 997
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v15, ""

    #calls: Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v14, v15, v5, v1, v13}, Lcom/google/tts/TTSService;->access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_b7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_286

    .line 1003
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v15, ""

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    #calls: Lcom/google/tts/TTSService;->setSpeechRate(Ljava/lang/String;I)I
    invoke-static/range {v14 .. v16}, Lcom/google/tts/TTSService;->access$13(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    .line 1007
    :goto_ca
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_29b

    .line 1008
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v15, ""

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    #calls: Lcom/google/tts/TTSService;->setPitch(Ljava/lang/String;I)I
    invoke-static/range {v14 .. v16}, Lcom/google/tts/TTSService;->access$14(Lcom/google/tts/TTSService;Ljava/lang/String;I)I
    :try_end_dd
    .catchall {:try_start_66 .. :try_end_dd} :catchall_255
    .catch Ljava/lang/InterruptedException; {:try_start_66 .. :try_end_dd} :catch_1f8

    .line 1013
    :goto_dd
    :try_start_dd
    invoke-static {}, Lcom/google/tts/TTSService;->access$36()Lcom/google/tts/SynthProxyBeta;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v15, v15, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v14, v15, v9}, Lcom/google/tts/SynthProxyBeta;->speak(Ljava/lang/String;I)I
    :try_end_ea
    .catchall {:try_start_dd .. :try_end_ea} :catchall_255
    .catch Ljava/lang/NullPointerException; {:try_start_dd .. :try_end_ea} :catch_2b0
    .catch Ljava/lang/InterruptedException; {:try_start_dd .. :try_end_ea} :catch_1f8

    .line 1026
    :cond_ea
    :goto_ea
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_fd

    .line 1027
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v15, v15, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v14, v12, v15}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_fd
    if-eqz v11, :cond_64

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    goto/16 :goto_64

    .line 961
    .restart local v4       #i:I
    :cond_113
    :try_start_113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 962
    .local v6, param:Ljava/lang/String;
    if-eqz v6, :cond_137

    .line 963
    const-string v14, "rate"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13b

    .line 964
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #speechRate:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 960
    .restart local v8       #speechRate:Ljava/lang/String;
    :cond_137
    :goto_137
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_7b

    .line 965
    :cond_13b
    const-string v14, "language"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_152

    .line 966
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #language:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #language:Ljava/lang/String;
    goto :goto_137

    .line 967
    :cond_152
    const-string v14, "country"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_169

    .line 968
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #country:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #country:Ljava/lang/String;
    goto :goto_137

    .line 969
    :cond_169
    const-string v14, "variant"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_180

    .line 970
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #variant:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .restart local v13       #variant:Ljava/lang/String;
    goto :goto_137

    .line 972
    :cond_180
    const-string v14, "utteranceId"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_199

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    goto :goto_137

    .line 974
    :cond_199
    const-string v14, "streamType"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19e
    .catchall {:try_start_113 .. :try_end_19e} :catchall_255
    .catch Ljava/lang/InterruptedException; {:try_start_113 .. :try_end_19e} :catch_1f8

    move-result v14

    if-eqz v14, :cond_1b7

    .line 977
    :try_start_1a1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b2
    .catchall {:try_start_1a1 .. :try_end_1b2} :catchall_255
    .catch Ljava/lang/NumberFormatException; {:try_start_1a1 .. :try_end_1b2} :catch_1b4
    .catch Ljava/lang/InterruptedException; {:try_start_1a1 .. :try_end_1b2} :catch_1f8

    move-result v9

    .line 976
    goto :goto_137

    .line 978
    :catch_1b4
    move-exception v2

    .line 979
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v9, 0x3

    goto :goto_137

    .line 981
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_1b7
    :try_start_1b7
    const-string v14, "engine"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1cf

    .line 982
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #engine:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #engine:Ljava/lang/String;
    goto/16 :goto_137

    .line 983
    :cond_1cf
    const-string v14, "pitch"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_137

    .line 984
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #pitch:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7       #pitch:Ljava/lang/String;
    goto/16 :goto_137

    .line 994
    .end local v4           #i:I
    .end local v6           #param:Ljava/lang/String;
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->getDefaultEngine()Ljava/lang/String;
    invoke-static {v15}, Lcom/google/tts/TTSService;->access$20(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v14, v15}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I
    :try_end_1f6
    .catchall {:try_start_1b7 .. :try_end_1f6} :catchall_255
    .catch Ljava/lang/InterruptedException; {:try_start_1b7 .. :try_end_1f6} :catch_1f8

    goto/16 :goto_a8

    .line 1019
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #engine:Ljava/lang/String;
    .end local v5           #language:Ljava/lang/String;
    .end local v7           #pitch:Ljava/lang/String;
    .end local v8           #speechRate:Ljava/lang/String;
    .end local v9           #streamType:I
    .end local v13           #variant:Ljava/lang/String;
    :catch_1f8
    move-exception v2

    .line 1020
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_1f9
    const-string v14, "TtsService"

    const-string v15, "TTS speakInternalOnly(): tryLock interrupted"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_203
    .catchall {:try_start_1f9 .. :try_end_203} :catchall_255

    .line 1026
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_216

    .line 1027
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v15, v15, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v14, v12, v15}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_216
    if-eqz v11, :cond_64

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    goto/16 :goto_64

    .line 999
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v1       #country:Ljava/lang/String;
    .restart local v3       #engine:Ljava/lang/String;
    .restart local v5       #language:Ljava/lang/String;
    .restart local v7       #pitch:Ljava/lang/String;
    .restart local v8       #speechRate:Ljava/lang/String;
    .restart local v9       #streamType:I
    .restart local v13       #variant:Ljava/lang/String;
    :cond_22c
    :try_start_22c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v16, v0

    #calls: Lcom/google/tts/TTSService;->getDefaultLanguage()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/google/tts/TTSService;->access$31(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v17, v0

    #calls: Lcom/google/tts/TTSService;->getDefaultCountry()Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/google/tts/TTSService;->access$32(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v17

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v18, v0

    #calls: Lcom/google/tts/TTSService;->getDefaultLocVariant()Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/google/tts/TTSService;->access$33(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v18

    .line 999
    #calls: Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v14 .. v18}, Lcom/google/tts/TTSService;->access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_253
    .catchall {:try_start_22c .. :try_end_253} :catchall_255
    .catch Ljava/lang/InterruptedException; {:try_start_22c .. :try_end_253} :catch_1f8

    goto/16 :goto_b7

    .line 1022
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #engine:Ljava/lang/String;
    .end local v5           #language:Ljava/lang/String;
    .end local v7           #pitch:Ljava/lang/String;
    .end local v8           #speechRate:Ljava/lang/String;
    .end local v9           #streamType:I
    .end local v13           #variant:Ljava/lang/String;
    :catchall_255
    move-exception v14

    .line 1026
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_271

    .line 1027
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$1SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v12, v0}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_271
    if-eqz v11, :cond_285

    .line 1030
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v15}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v15}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    .line 1033
    :cond_285
    throw v14

    .line 1005
    .restart local v1       #country:Ljava/lang/String;
    .restart local v3       #engine:Ljava/lang/String;
    .restart local v5       #language:Ljava/lang/String;
    .restart local v7       #pitch:Ljava/lang/String;
    .restart local v8       #speechRate:Ljava/lang/String;
    .restart local v9       #streamType:I
    .restart local v13       #variant:Ljava/lang/String;
    :cond_286
    :try_start_286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v16, v0

    #calls: Lcom/google/tts/TTSService;->getDefaultRate()I
    invoke-static/range {v16 .. v16}, Lcom/google/tts/TTSService;->access$34(Lcom/google/tts/TTSService;)I

    move-result v16

    #calls: Lcom/google/tts/TTSService;->setSpeechRate(Ljava/lang/String;I)I
    invoke-static/range {v14 .. v16}, Lcom/google/tts/TTSService;->access$13(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    goto/16 :goto_ca

    .line 1010
    :cond_29b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$1SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v16, v0

    #calls: Lcom/google/tts/TTSService;->getDefaultPitch()I
    invoke-static/range {v16 .. v16}, Lcom/google/tts/TTSService;->access$35(Lcom/google/tts/TTSService;)I

    move-result v16

    #calls: Lcom/google/tts/TTSService;->setPitch(Ljava/lang/String;I)I
    invoke-static/range {v14 .. v16}, Lcom/google/tts/TTSService;->access$14(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    goto/16 :goto_dd

    .line 1014
    :catch_2b0
    move-exception v2

    .line 1016
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v14, "TtsService"

    const-string v15, " null synth, can\'t speak"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b8
    .catchall {:try_start_286 .. :try_end_2b8} :catchall_255
    .catch Ljava/lang/InterruptedException; {:try_start_286 .. :try_end_2b8} :catch_1f8

    goto/16 :goto_ea
.end method
