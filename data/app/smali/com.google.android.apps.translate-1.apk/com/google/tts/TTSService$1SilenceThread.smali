.class Lcom/google/tts/TTSService$1SilenceThread;
.super Ljava/lang/Object;
.source "TTSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TTSService;->silence(Lcom/google/tts/TTSService$SpeechItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SilenceThread"
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
    .line 906
    iput-object p1, p0, Lcom/google/tts/TTSService$1SilenceThread;->this$0:Lcom/google/tts/TTSService;

    iput-object p2, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 908
    const-string v3, ""

    .line 909
    .local v3, utteranceId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    if-eqz v4, :cond_15

    .line 910
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_31

    .line 918
    .end local v1           #i:I
    :cond_15
    :try_start_15
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-wide v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mDuration:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_6b
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1c} :catch_52

    .line 922
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2b

    .line 923
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->this$0:Lcom/google/tts/TTSService;

    iget-object v5, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v5, v5, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v5}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_2b
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v4}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    .line 927
    :goto_30
    return-void

    .line 911
    .restart local v1       #i:I
    :cond_31
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 912
    .local v2, param:Ljava/lang/String;
    const-string v4, "utteranceId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 913
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v4, v4, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #utteranceId:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 910
    .restart local v3       #utteranceId:Ljava/lang/String;
    :cond_4f
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 919
    .end local v1           #i:I
    .end local v2           #param:Ljava/lang/String;
    :catch_52
    move-exception v0

    .line 920
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6b

    .line 922
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_65

    .line 923
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->this$0:Lcom/google/tts/TTSService;

    iget-object v5, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v5, v5, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v5}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_65
    iget-object v4, p0, Lcom/google/tts/TTSService$1SilenceThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v4}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    goto :goto_30

    .line 921
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_6b
    move-exception v4

    .line 922
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7b

    .line 923
    iget-object v5, p0, Lcom/google/tts/TTSService$1SilenceThread;->this$0:Lcom/google/tts/TTSService;

    iget-object v6, p0, Lcom/google/tts/TTSService$1SilenceThread;->val$speechItem:Lcom/google/tts/TTSService$SpeechItem;

    iget-object v6, v6, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    #calls: Lcom/google/tts/TTSService;->dispatchUtteranceCompletedCallback(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v3, v6}, Lcom/google/tts/TTSService;->access$26(Lcom/google/tts/TTSService;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_7b
    iget-object v5, p0, Lcom/google/tts/TTSService$1SilenceThread;->this$0:Lcom/google/tts/TTSService;

    #calls: Lcom/google/tts/TTSService;->processSpeechQueue()V
    invoke-static {v5}, Lcom/google/tts/TTSService;->access$27(Lcom/google/tts/TTSService;)V

    .line 926
    throw v4
.end method
