.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mCheckIgnore:Z

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mNoDeviceIgnore:Z

.field private mNoDeviceTitle:I

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    .line 32
    const v0, 0x7f0b008c

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    .line 36
    const v0, 0x7f040078

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 42
    const v3, 0x7f080176

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f080175

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_5d

    const v3, 0x7f0b008a

    :goto_1d
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v6, :cond_61

    invoke-virtual {p0, v5}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v3, v7, :cond_61

    :cond_34
    move v0, v6

    .line 49
    .local v0, noDeviceFound:Z
    :goto_35
    if-eqz v0, :cond_63

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    if-nez v3, :cond_63

    move v3, v4

    :goto_3c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_44

    move v4, v5

    :cond_44
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_51

    if-eqz v0, :cond_51

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    if-eqz v3, :cond_65

    .line 53
    :cond_51
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_5c

    .line 54
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 55
    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 69
    :cond_5c
    :goto_5c
    return-void

    .line 46
    .end local v0           #noDeviceFound:Z
    :cond_5d
    const v3, 0x7f0b0087

    goto :goto_1d

    :cond_61
    move v0, v5

    .line 47
    goto :goto_35

    .restart local v0       #noDeviceFound:Z
    :cond_63
    move v3, v5

    .line 49
    goto :goto_3c

    .line 58
    :cond_65
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_5c

    .line 59
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v3, :cond_8c

    .line 60
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 61
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v4, 0x7f040070

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 62
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 63
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 65
    :cond_8c
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 66
    iput-boolean v6, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_5c
.end method

.method public setIgnoreMessage(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    .line 79
    return-void
.end method

.method public setIgnoreNoDevice(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    .line 83
    return-void
.end method

.method public setNoDeviceFoundText(I)V
    .registers 2
    .parameter "resource_id"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    .line 87
    return-void
.end method

.method public setProgress(Z)V
    .registers 2
    .parameter "progressOn"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 75
    return-void
.end method
