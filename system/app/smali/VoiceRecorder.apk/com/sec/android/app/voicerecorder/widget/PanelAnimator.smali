.class public Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;
.super Landroid/widget/ViewAnimator;
.source "PanelAnimator.java"


# static fields
.field private static mIsRecording:Z

.field private static mLi:Landroid/view/LayoutInflater;

.field private static mNoDimFirstTime:Z

.field private static mUIRuntimeInitHandler:Landroid/os/Handler;


# instance fields
.field private alreadyInited:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mIsRecording:Z

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mNoDimFirstTime:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->alreadyInited:I

    .line 46
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mLi:Landroid/view/LayoutInflater;

    if-nez v0, :cond_18

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mLi:Landroid/view/LayoutInflater;

    .line 55
    :cond_18
    return-void
.end method

.method private prepareChild(I)V
    .registers 12
    .parameter "whichChild"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 90
    packed-switch p1, :pswitch_data_180

    .line 153
    :cond_8
    :goto_8
    return-void

    .line 92
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_8

    .line 93
    const-string v2, "PanelAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "which : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mLi:Landroid/view/LayoutInflater;

    const v3, 0x7f03000c

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 95
    .local v1, layout:Landroid/widget/LinearLayout;
    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 96
    .local v0, btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060013

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 97
    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 98
    .restart local v0       #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060003

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 99
    invoke-virtual {p0, v1, v6}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->addView(Landroid/view/View;I)V

    .line 100
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 101
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 105
    .end local v0           #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :pswitch_5d
    invoke-virtual {p0, v7}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_8

    .line 106
    const-string v2, "PanelAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "which : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mLi:Landroid/view/LayoutInflater;

    const v3, 0x7f03000d

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 108
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 109
    .restart local v0       #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060003

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 110
    invoke-virtual {p0, v1, v7}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->addView(Landroid/view/View;I)V

    .line 111
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 112
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 116
    .end local v0           #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :pswitch_a3
    invoke-virtual {p0, v8}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_8

    .line 117
    const-string v2, "PanelAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "which : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mLi:Landroid/view/LayoutInflater;

    const v3, 0x7f03000f

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 119
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 120
    .restart local v0       #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060004

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 121
    sget-boolean v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mNoDimFirstTime:Z

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 122
    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 123
    .restart local v0       #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060005

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 124
    sget-boolean v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mNoDimFirstTime:Z

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 125
    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 126
    .restart local v0       #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060006

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 127
    invoke-virtual {p0, v1, v8}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->addView(Landroid/view/View;I)V

    .line 128
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 129
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 133
    .end local v0           #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :pswitch_111
    invoke-virtual {p0, v9}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_8

    .line 134
    const-string v2, "PanelAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "which : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mLi:Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 136
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 137
    .restart local v0       #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060004

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 138
    sget-boolean v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mNoDimFirstTime:Z

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 139
    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 140
    .restart local v0       #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060003

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 141
    sget-boolean v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mNoDimFirstTime:Z

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 142
    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 143
    .restart local v0       #btn:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    const v2, 0x7f060006

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 144
    invoke-virtual {p0, v1, v9}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->addView(Landroid/view/View;I)V

    .line 145
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 146
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 90
    nop

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5d
        :pswitch_a3
        :pswitch_111
    .end packed-switch
.end method

.method public static releaseUIInitHandler()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public static setRecordingstate(Z)V
    .registers 1
    .parameter "isRecording"

    .prologue
    .line 27
    sput-boolean p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mIsRecording:Z

    .line 28
    return-void
.end method

.method public static setUIInitHander(Landroid/os/Handler;)V
    .registers 2
    .parameter "uiRuntimeInitHandler"

    .prologue
    .line 37
    sput-object p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mUIRuntimeInitHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mNoDimFirstTime:Z

    .line 39
    return-void
.end method


# virtual methods
.method public prepareAll()V
    .registers 3

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->alreadyInited:I

    .local v0, i:I
    :goto_2
    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    .line 77
    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->prepareChild(I)V

    .line 78
    iget v1, p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->alreadyInited:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->alreadyInited:I

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_11
    return-void
.end method

.method public setDisplayedChild(I)V
    .registers 5
    .parameter "whichChild"

    .prologue
    const/4 v2, 0x1

    .line 61
    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->alreadyInited:I

    .local v0, i:I
    :goto_3
    if-gt v0, p1, :cond_11

    .line 62
    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->prepareChild(I)V

    .line 63
    iget v1, p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->alreadyInited:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->alreadyInited:I

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 67
    :cond_11
    sget-boolean v1, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mIsRecording:Z

    if-eq v1, v2, :cond_17

    .line 68
    sput-boolean v2, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->mNoDimFirstTime:Z

    .line 72
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 73
    return-void
.end method
