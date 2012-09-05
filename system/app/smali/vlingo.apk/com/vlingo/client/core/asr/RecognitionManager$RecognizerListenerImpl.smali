.class Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;
.super Ljava/lang/Object;
.source "RecognitionManager.java"

# interfaces
.implements Lcom/vlingo/client/core/recognizer/RecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/asr/RecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognizerListenerImpl"
.end annotation


# instance fields
.field private currentNote:Ljava/lang/String;

.field private recognizerState:I

.field private recording:Z

.field final synthetic this$0:Lcom/vlingo/client/core/asr/RecognitionManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 3
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    const/16 v0, 0xc

    iput v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recognizerState:I

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    return-object v0
.end method

.method private getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    const v2, 0x7f09024c

    .line 873
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-boolean v1, v1, Lcom/vlingo/client/core/asr/RecognitionManager;->ignoreListeningNotifications:Z

    if-eqz v1, :cond_12

    .line 874
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v1, v1, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getWarmupMessage()Ljava/lang/String;

    move-result-object v1

    .line 890
    :goto_11
    return-object v1

    .line 876
    :cond_12
    iget-boolean v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    if-eqz v1, :cond_1f

    .line 877
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v1, v1, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getListeningMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 879
    :cond_1f
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 880
    .local v0, res:Landroid/content/res/Resources;
    iget v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recognizerState:I

    sparse-switch v1, :sswitch_data_4c

    .line 890
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 882
    :sswitch_31
    const v1, 0x7f090247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 884
    :sswitch_39
    const v1, 0x7f090246

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 886
    :sswitch_41
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 888
    :sswitch_46
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 880
    nop

    :sswitch_data_4c
    .sparse-switch
        -0x1 -> :sswitch_31
        0x6 -> :sswitch_39
        0x7 -> :sswitch_41
        0x8 -> :sswitch_46
    .end sparse-switch
.end method


# virtual methods
.method public notifyRecognitionState(ILjava/lang/Object;)V
    .registers 16
    .parameter "state"
    .parameter "response"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 692
    const/4 v4, 0x0

    .line 693
    .local v4, message:Ljava/lang/String;
    const/4 v3, 0x0

    .line 694
    .local v3, note:Ljava/lang/String;
    const/4 v2, 0x2

    .line 695
    .local v2, type:I
    const/4 v8, 0x0

    .line 696
    .local v8, recognizing:Z
    const/16 v1, 0xc8

    .line 697
    .local v1, recState:I
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 699
    .local v10, resources:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_120

    .line 860
    :pswitch_13
    const v0, 0x7f090250

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 864
    :goto_26
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-boolean v5, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    move-object v6, p2

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->processRecognitionStateEvent(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V
    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$1400(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 866
    const/16 v0, 0x70

    if-ne v1, v0, :cond_39

    .line 867
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    check-cast p2, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .end local p2
    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->notifyRecognitionStateListenerOfResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    invoke-static {v0, p2}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$1500(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    .line 869
    :cond_39
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-boolean v6, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    move v5, v8

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->notifyRecognitionStateListenersOfEvent(IILjava/lang/String;Ljava/lang/String;ZZ)V
    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$1600(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 870
    return-void

    .line 704
    .restart local p2
    :pswitch_42
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recognizerState:I

    .line 705
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getWarmupMessage()Ljava/lang/String;

    move-result-object v4

    .line 706
    const/16 v1, 0x64

    .line 707
    iput-boolean v11, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    .line 708
    const/4 v8, 0x1

    .line 709
    goto :goto_26

    :pswitch_53
    move-object v7, p2

    .line 714
    check-cast v7, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

    .line 715
    .local v7, progress:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    iget v5, v7, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;->lastSpeechSample:I

    iget v6, v7, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;->numSamples:I

    iget v11, v7, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;->lastEnergy:I

    invoke-interface {v0, v5, v6, v11}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->onRecordInfo(III)V

    .line 720
    .end local v7           #progress:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;
    :pswitch_63
    iput-boolean v12, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    .line 721
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 723
    const/4 v8, 0x1

    .line 724
    const/16 v1, 0x65

    .line 725
    goto :goto_26

    .line 730
    :pswitch_70
    iput-boolean v11, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    .line 731
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 732
    iget-object v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 733
    const/4 v8, 0x1

    .line 734
    const/16 v1, 0x66

    .line 735
    goto :goto_26

    .line 740
    :pswitch_7c
    iput-boolean v11, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    .line 741
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 742
    iget-object v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 743
    const/4 v8, 0x1

    .line 744
    const/16 v1, 0x67

    .line 745
    goto :goto_26

    .line 750
    :pswitch_88
    iput-boolean v11, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    .line 751
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 752
    const v0, 0x7f09024a

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 753
    iget-object v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 754
    const/4 v8, 0x1

    .line 755
    const/16 v1, 0x67

    .line 756
    goto :goto_26

    .line 761
    :pswitch_9d
    const/4 v0, 0x6

    iput v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recognizerState:I

    .line 762
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 763
    iget-object v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 764
    const/4 v8, 0x1

    .line 765
    const/16 v1, 0x66

    .line 766
    goto/16 :goto_26

    .line 771
    :pswitch_ab
    const/4 v0, 0x7

    iput v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recognizerState:I

    .line 772
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 773
    iget-object v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 774
    const/4 v8, 0x1

    .line 775
    const/16 v1, 0x66

    .line 776
    goto/16 :goto_26

    .line 781
    :pswitch_b9
    const/16 v0, 0x8

    iput v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recognizerState:I

    .line 782
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 783
    iget-object v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 784
    const/4 v8, 0x1

    .line 785
    const/16 v1, 0x68

    .line 786
    goto/16 :goto_26

    .line 791
    :pswitch_c8
    const/4 v2, 0x3

    .line 792
    const v0, 0x7f090249

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 793
    const/16 v1, 0x69

    .line 794
    goto/16 :goto_26

    .line 799
    :pswitch_d4
    const/4 v2, 0x4

    .line 800
    const-string v4, "/res/text/cantConnect.xml"

    .line 801
    const/16 v1, 0x6a

    .line 802
    goto/16 :goto_26

    .line 807
    :pswitch_db
    const/4 v2, 0x4

    .line 808
    const-string v4, "/res/text/requestTimeout.xml"

    .line 809
    const/16 v1, 0x6b

    .line 810
    goto/16 :goto_26

    .line 815
    :pswitch_e2
    const/4 v2, 0x4

    .line 816
    const v0, 0x7f09024b

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 817
    const/16 v1, 0x6c

    .line 818
    goto/16 :goto_26

    .line 823
    :pswitch_ee
    const/4 v2, 0x4

    .line 825
    const v0, 0x7f09024e

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 829
    const/16 v1, 0x6d

    .line 830
    goto/16 :goto_26

    .line 835
    :pswitch_fa
    const/4 v2, 0x3

    .line 836
    const v0, 0x7f09024d

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 837
    const/16 v1, 0x6e

    .line 838
    goto/16 :goto_26

    :pswitch_106
    move-object v9, p2

    .line 843
    check-cast v9, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .line 846
    .local v9, res:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    invoke-virtual {v9}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasActions()Z

    move-result v0

    if-nez v0, :cond_11c

    invoke-virtual {v9}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasResults()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 847
    const/4 v2, 0x4

    .line 848
    const-string v4, "/res/text/cantConnect.xml"

    .line 849
    const/16 v1, 0x6a

    goto/16 :goto_26

    .line 851
    :cond_11c
    const/16 v1, 0x70

    .line 853
    goto/16 :goto_26

    .line 699
    :pswitch_data_120
    .packed-switch -0x7
        :pswitch_fa
        :pswitch_ee
        :pswitch_e2
        :pswitch_db
        :pswitch_d4
        :pswitch_c8
        :pswitch_42
        :pswitch_13
        :pswitch_42
        :pswitch_63
        :pswitch_53
        :pswitch_70
        :pswitch_7c
        :pswitch_9d
        :pswitch_ab
        :pswitch_b9
        :pswitch_106
        :pswitch_88
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 683
    const/16 v0, 0xc

    iput v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recognizerState:I

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->recording:Z

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;

    .line 686
    return-void
.end method
