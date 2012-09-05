.class public Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;
.super Landroid/widget/RelativeLayout;
.source "VRButtonsLeftRight.java"


# instance fields
.field protected mLeftButton:Landroid/widget/Button;

.field protected mRightButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->initViews()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->initViews()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->initViews()V

    .line 55
    return-void
.end method


# virtual methods
.method public getLeftButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .registers 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f03000b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    const v1, 0x7f090023

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->mLeftButton:Landroid/widget/Button;

    .line 69
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->mRightButton:Landroid/widget/Button;

    .line 71
    return-void
.end method
