.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;
.super Landroid/os/Handler;
.source "VoiceRecorderMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1058
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_114

    .line 1090
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mControlPanelAnimator:Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$900(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->prepareAll()V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_49

    .line 1094
    :goto_e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1095
    return-void

    .line 1060
    :pswitch_12
    :try_start_12
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f090026

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRec:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3002(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1061
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f090025

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$802(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1062
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRec:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_48} :catch_49

    goto :goto_5

    .line 1091
    :catch_49
    move-exception v0

    .line 1092
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "ignore UI init message while configuration rapidly being changed"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1066
    .end local v0           #e:Ljava/lang/NullPointerException;
    :pswitch_52
    :try_start_52
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f090027

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecOnly:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3102(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1067
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecOnly:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 1070
    :pswitch_6e
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f09002c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnPause:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3202(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1071
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f09002b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStop:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3302(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1072
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f09002d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancel:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3402(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1073
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnPause:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStop:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancel:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 1078
    :pswitch_c1
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f090028

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStopPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3502(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1079
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f090029

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3602(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1080
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f09002a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancelPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 1081
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStopPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancelPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$3700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_112
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_112} :catch_49

    goto/16 :goto_5

    .line 1058
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_12
        :pswitch_52
        :pswitch_6e
        :pswitch_c1
    .end packed-switch
.end method
