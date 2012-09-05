.class public Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;
.super Landroid/widget/ScrollView;
.source "ResultPopupView.java"


# instance fields
.field private mMessageFile:Landroid/widget/TextView;

.field private mMessageFileFail:Landroid/widget/TextView;

.field private mMessageResult:Landroid/widget/TextView;

.field private mMessageTarget:Landroid/widget/TextView;

.field private mMessageTitle:Landroid/widget/TextView;

.field private mParentView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 25
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mParentView:Landroid/widget/LinearLayout;

    .line 26
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mParentView:Landroid/widget/LinearLayout;

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageTitle:Landroid/widget/TextView;

    .line 27
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mParentView:Landroid/widget/LinearLayout;

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageFile:Landroid/widget/TextView;

    .line 28
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mParentView:Landroid/widget/LinearLayout;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageFileFail:Landroid/widget/TextView;

    .line 29
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mParentView:Landroid/widget/LinearLayout;

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageTarget:Landroid/widget/TextView;

    .line 30
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mParentView:Landroid/widget/LinearLayout;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageResult:Landroid/widget/TextView;

    .line 31
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mParentView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setScrollContainer(Z)V

    .line 32
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mParentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->addView(Landroid/view/View;)V

    .line 33
    return-void
.end method


# virtual methods
.method public setPopupFileFail(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 51
    if-eqz p1, :cond_6

    const-string v0, ""

    if-ne p1, v0, :cond_d

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageFileFail:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageFileFail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public setPopupFileSuccess(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 42
    if-eqz p1, :cond_6

    const-string v0, ""

    if-ne p1, v0, :cond_d

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageFile:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageFile:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public setPopupResult(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 65
    if-eqz p1, :cond_6

    const-string v0, ""

    if-ne p1, v0, :cond_d

    .line 67
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageResult:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageResult:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setPopupTarget(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageTarget:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setPopupTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->mMessageTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method
