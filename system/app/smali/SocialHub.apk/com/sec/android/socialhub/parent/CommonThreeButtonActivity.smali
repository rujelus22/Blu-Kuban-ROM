.class public abstract Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;
.super Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;
.source "CommonThreeButtonActivity.java"


# instance fields
.field protected mMiddleButton:Landroid/widget/Button;

.field public mMidleButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity$1;-><init>(Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->mMidleButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected loadView()V
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->loadView()V

    .line 44
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->mMiddleButton:Landroid/widget/Button;

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public abstract onMiddleButtonClicked()V
.end method

.method protected setButtonName(III)V
    .registers 5
    .parameter "left"
    .parameter "mid"
    .parameter "right"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->setButtonName(II)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->mMiddleButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->mMiddleButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 55
    :cond_c
    return-void
.end method

.method protected setLayout()V
    .registers 2

    .prologue
    .line 26
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->setLayout(I)V

    .line 27
    return-void
.end method

.method protected setListener()V
    .registers 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->setListener()V

    .line 34
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->mMiddleButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    .line 36
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->mMiddleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->mMidleButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_e
    return-void
.end method
