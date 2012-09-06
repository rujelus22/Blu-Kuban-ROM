.class public Lcom/android/email/view/CertificateSelector;
.super Landroid/widget/RelativeLayout;
.source "CertificateSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/view/CertificateSelector$1;,
        Lcom/android/email/view/CertificateSelector$SavedState;,
        Lcom/android/email/view/CertificateSelector$HostCallback;
    }
.end annotation


# instance fields
.field private mAliasText:Landroid/widget/TextView;

.field private mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

.field private mSelectButton:Landroid/widget/Button;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hasCertificate()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

    if-eqz v0, :cond_12

    .line 111
    invoke-virtual {p0}, Lcom/android/email/view/CertificateSelector;->hasCertificate()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 118
    :cond_12
    :goto_12
    return-void

    .line 115
    :cond_13
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

    invoke-interface {v0}, Lcom/android/email/view/CertificateSelector$HostCallback;->onCertificateRequested()V

    goto :goto_12
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 77
    const v0, 0x7f0e0053

    invoke-static {p0, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/view/CertificateSelector;->mAliasText:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0e0051

    invoke-static {p0, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "parcel"

    .prologue
    .line 122
    move-object v0, p1

    check-cast v0, Lcom/android/email/view/CertificateSelector$SavedState;

    .line 123
    .local v0, savedState:Lcom/android/email/view/CertificateSelector$SavedState;
    invoke-virtual {v0}, Lcom/android/email/view/CertificateSelector$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 124
    iget-object v1, v0, Lcom/android/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 129
    new-instance v0, Lcom/android/email/view/CertificateSelector$SavedState;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/view/CertificateSelector;->getCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/view/CertificateSelector$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCertificate(Ljava/lang/String;)V
    .registers 5
    .parameter "alias"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/email/view/CertificateSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    .local v0, res:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/android/email/view/CertificateSelector;->mAliasText:Landroid/widget/TextView;

    if-nez p1, :cond_23

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    if-nez p1, :cond_25

    const v1, 0x7f0800eb

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    :cond_23
    move-object v1, p1

    .line 86
    goto :goto_11

    .line 90
    :cond_25
    const v1, 0x7f0800ed

    goto :goto_1b
.end method

.method public setHostActivity(Lcom/android/email/view/CertificateSelector$HostCallback;)V
    .registers 2
    .parameter "host"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/email/view/CertificateSelector;->mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

    .line 68
    return-void
.end method
