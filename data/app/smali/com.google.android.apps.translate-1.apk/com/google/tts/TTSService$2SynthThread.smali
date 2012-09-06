.class Lcom/google/tts/TTSService$2SynthThread;
.super Ljava/lang/Object;
.source "TTSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TTSService;->synthToFileInternalOnly(Lcom/google/tts/TTSService$SpeechItem;)V
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
    .line 1042
    iput-object p1, p0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    iput-object p2, p0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 1044
    const/4 v10, 0x0

    .line 1045
    .local v10, synthAvailable:Z
    const-string v11, ""

    .line 1046
    .local v11, utteranceId:Ljava/lang/String;
    const-string v13, "TtsService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Synthesizing to "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v15, v15, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v10

    .line 1049
    if-nez v10, :cond_fb

    .line 1050
    monitor-enter p0
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_ca
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_2c} :catch_8c

    .line 1051
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const/4 v14, 0x1

    #setter for: Lcom/google/tts/TTSService;->mSynthBusy:Z
    invoke-static {v13, v14}, Lcom/google/tts/TTSService;->access$29(Lcom/google/tts/TTSService;Z)V

    .line 1050
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_89

    .line 1053
    const-wide/16 v13, 0x64

    :try_start_37
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 1054
    new-instance v9, Ljava/lang/Thread;

    new-instance v13, Lcom/google/tts/TTSService$2SynthThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {v13, v14, v15}, Lcom/google/tts/TTSService$2SynthThread;-><init>(Lcom/google/tts/TTSService;Lcom/google/tts/TTSService$SpeechItem;)V

    invoke-direct {v9, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1056
    .local v9, synth:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1057
    monitor-enter p0
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_ca
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_50} :catch_8c

    .line 1058
    :try_start_50
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const/4 v14, 0x0

    #setter for: Lcom/google/tts/TTSService;->mSynthBusy:Z
    invoke-static {v13, v14}, Lcom/google/tts/TTSService;->access$29(Lcom/google/tts/TTSService;Z)V

    .line 1057
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_c7

    .line 1128
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6c

    .line 1129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v11, v14}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_6c
    if-eqz v10, :cond_80

    .line 1132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v13}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    .line 1135
    :cond_80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const/4 v14, 0x0

    #setter for: Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z
    invoke-static {v13, v14}, Lcom/google/tts/TTSService;->access$24(Lcom/google/tts/TTSService;Z)V

    .line 1137
    .end local v9           #synth:Ljava/lang/Thread;
    :goto_88
    return-void

    .line 1050
    :catchall_89
    move-exception v13

    :try_start_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v13
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_ca
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_8c} :catch_8c

    .line 1121
    :catch_8c
    move-exception v2

    .line 1122
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_8d
    const-string v13, "TtsService"

    const-string v14, "TTS synthToFileInternalOnly(): tryLock interrupted"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_ca

    .line 1128
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_aa

    .line 1129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v11, v14}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_aa
    if-eqz v10, :cond_be

    .line 1132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v13}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    .line 1135
    :cond_be
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const/4 v14, 0x0

    #setter for: Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z
    invoke-static {v13, v14}, Lcom/google/tts/TTSService;->access$24(Lcom/google/tts/TTSService;Z)V

    goto :goto_88

    .line 1057
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v9       #synth:Ljava/lang/Thread;
    :catchall_c7
    move-exception v13

    :try_start_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v13
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_ca
    .catch Ljava/lang/InterruptedException; {:try_start_c9 .. :try_end_ca} :catch_8c

    .line 1124
    .end local v9           #synth:Ljava/lang/Thread;
    :catchall_ca
    move-exception v13

    .line 1128
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_de

    .line 1129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v15, v15, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v14, v11, v15}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_de
    if-eqz v10, :cond_f2

    .line 1132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    .line 1135
    :cond_f2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const/4 v15, 0x0

    #setter for: Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z
    invoke-static {v14, v15}, Lcom/google/tts/TTSService;->access$24(Lcom/google/tts/TTSService;Z)V

    .line 1136
    throw v13

    .line 1062
    :cond_fb
    :try_start_fb
    const-string v5, ""

    .line 1063
    .local v5, language:Ljava/lang/String;
    const-string v1, ""

    .line 1064
    .local v1, country:Ljava/lang/String;
    const-string v12, ""

    .line 1065
    .local v12, variant:Ljava/lang/String;
    const-string v8, ""

    .line 1066
    .local v8, speechRate:Ljava/lang/String;
    const-string v3, ""

    .line 1067
    .local v3, engine:Ljava/lang/String;
    const-string v7, ""

    .line 1068
    .local v7, pitch:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    if-eqz v13, :cond_11e

    .line 1069
    const/4 v4, 0x0

    .local v4, i:I
    :goto_110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-lt v4, v13, :cond_1b6

    .line 1092
    .end local v4           #i:I
    :cond_11e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->mKillList:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/google/tts/TTSService;->access$30(Lcom/google/tts/TTSService;)Ljava/util/HashMap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_185

    .line 1093
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_26b

    .line 1094
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v13, v3}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    .line 1098
    :goto_13d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_27c

    .line 1099
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v14, ""

    #calls: Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v13, v14, v5, v1, v12}, Lcom/google/tts/TTSService;->access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_14c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2a3

    .line 1105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v14, ""

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    #calls: Lcom/google/tts/TTSService;->setSpeechRate(Ljava/lang/String;I)I
    invoke-static {v13, v14, v15}, Lcom/google/tts/TTSService;->access$13(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    .line 1109
    :goto_15f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2b6

    .line 1110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v14, ""

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    #calls: Lcom/google/tts/TTSService;->setPitch(Ljava/lang/String;I)I
    invoke-static {v13, v14, v15}, Lcom/google/tts/TTSService;->access$14(Lcom/google/tts/TTSService;Ljava/lang/String;I)I
    :try_end_172
    .catchall {:try_start_fb .. :try_end_172} :catchall_ca
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_172} :catch_8c

    .line 1115
    :goto_172
    :try_start_172
    invoke-static {}, Lcom/google/tts/TTSService;->access$36()Lcom/google/tts/SynthProxyBeta;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v15, v15, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/google/tts/SynthProxyBeta;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_185
    .catchall {:try_start_172 .. :try_end_185} :catchall_ca
    .catch Ljava/lang/NullPointerException; {:try_start_172 .. :try_end_185} :catch_2c9
    .catch Ljava/lang/InterruptedException; {:try_start_172 .. :try_end_185} :catch_8c

    .line 1128
    :cond_185
    :goto_185
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_198

    .line 1129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v14, v14, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v11, v14}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_198
    if-eqz v10, :cond_1ac

    .line 1132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #getter for: Lcom/google/tts/TTSService;->synthesizerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/google/tts/TTSService;->access$28(Lcom/google/tts/TTSService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v13}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    .line 1135
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const/4 v14, 0x0

    #setter for: Lcom/google/tts/TTSService;->deprecatedKeepBlockingFlag:Z
    invoke-static {v13, v14}, Lcom/google/tts/TTSService;->access$24(Lcom/google/tts/TTSService;Z)V

    goto/16 :goto_88

    .line 1070
    .restart local v4       #i:I
    :cond_1b6
    :try_start_1b6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1071
    .local v6, param:Ljava/lang/String;
    if-eqz v6, :cond_1da

    .line 1072
    const-string v13, "rate"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1de

    .line 1073
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #speechRate:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1069
    .restart local v8       #speechRate:Ljava/lang/String;
    :cond_1da
    :goto_1da
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_110

    .line 1074
    :cond_1de
    const-string v13, "language"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f5

    .line 1075
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #language:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #language:Ljava/lang/String;
    goto :goto_1da

    .line 1076
    :cond_1f5
    const-string v13, "country"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20c

    .line 1077
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #country:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #country:Ljava/lang/String;
    goto :goto_1da

    .line 1078
    :cond_20c
    const-string v13, "variant"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_223

    .line 1079
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #variant:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12       #variant:Ljava/lang/String;
    goto :goto_1da

    .line 1081
    :cond_223
    const-string v13, "utteranceId"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23c

    .line 1082
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    goto :goto_1da

    .line 1083
    :cond_23c
    const-string v13, "engine"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_253

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #engine:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #engine:Ljava/lang/String;
    goto :goto_1da

    .line 1085
    :cond_253
    const-string v13, "pitch"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1da

    .line 1086
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v13, v13, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #pitch:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7       #pitch:Ljava/lang/String;
    goto/16 :goto_1da

    .line 1096
    .end local v4           #i:I
    .end local v6           #param:Ljava/lang/String;
    :cond_26b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->getDefaultEngine()Ljava/lang/String;
    invoke-static {v14}, Lcom/google/tts/TTSService;->access$20(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/google/tts/TTSService;->setEngine(Ljava/lang/String;)I
    invoke-static {v13, v14}, Lcom/google/tts/TTSService;->access$15(Lcom/google/tts/TTSService;Ljava/lang/String;)I

    goto/16 :goto_13d

    .line 1101
    :cond_27c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->getDefaultLanguage()Ljava/lang/String;
    invoke-static {v15}, Lcom/google/tts/TTSService;->access$31(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v16, v0

    #calls: Lcom/google/tts/TTSService;->getDefaultCountry()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/google/tts/TTSService;->access$32(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v16

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    move-object/from16 v17, v0

    #calls: Lcom/google/tts/TTSService;->getDefaultLocVariant()Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/google/tts/TTSService;->access$33(Lcom/google/tts/TTSService;)Ljava/lang/String;

    move-result-object v17

    .line 1101
    #calls: Lcom/google/tts/TTSService;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v13 .. v17}, Lcom/google/tts/TTSService;->access$18(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14c

    .line 1107
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->getDefaultRate()I
    invoke-static {v15}, Lcom/google/tts/TTSService;->access$34(Lcom/google/tts/TTSService;)I

    move-result v15

    #calls: Lcom/google/tts/TTSService;->setSpeechRate(Ljava/lang/String;I)I
    invoke-static {v13, v14, v15}, Lcom/google/tts/TTSService;->access$13(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    goto/16 :goto_15f

    .line 1112
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/tts/TTSService$2SynthThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->getDefaultPitch()I
    invoke-static {v15}, Lcom/google/tts/TTSService;->access$35(Lcom/google/tts/TTSService;)I

    move-result v15

    #calls: Lcom/google/tts/TTSService;->setPitch(Ljava/lang/String;I)I
    invoke-static {v13, v14, v15}, Lcom/google/tts/TTSService;->access$14(Lcom/google/tts/TTSService;Ljava/lang/String;I)I

    goto/16 :goto_172

    .line 1116
    :catch_2c9
    move-exception v2

    .line 1118
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v13, "TtsService"

    const-string v14, " null synth, can\'t synthesize to file"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d1
    .catchall {:try_start_1b6 .. :try_end_2d1} :catchall_ca
    .catch Ljava/lang/InterruptedException; {:try_start_1b6 .. :try_end_2d1} :catch_8c

    goto/16 :goto_185
.end method
