.class public Lcom/swype/android/settings/ProgressBarPreference;
.super Landroid/preference/Preference;
.source "ProgressBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;
    }
.end annotation


# instance fields
.field private lastLabel:Ljava/lang/String;

.field private lastReqMax:I

.field private lastReqProgress:I

.field private mLabel:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStore:Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 44
    iput v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqProgress:I

    .line 45
    iput v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqMax:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mStore:Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqProgress:I

    .line 45
    iput v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqMax:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mStore:Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqProgress:I

    .line 45
    iput v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqMax:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mStore:Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/swype/android/settings/ProgressBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    const v1, 0x7f03000d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    const v0, 0x7f0d0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    const v0, 0x7f0d0016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 58
    const v0, 0x7f0d0015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mLabel:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mStore:Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;

    if-eqz v0, :cond_5b

    .line 61
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mStore:Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;

    invoke-virtual {p0}, Lcom/swype/android/settings/ProgressBarPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;->getProgress(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqProgress:I

    .line 62
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mStore:Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;

    invoke-virtual {p0}, Lcom/swype/android/settings/ProgressBarPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;->getMax(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqMax:I

    .line 65
    :cond_5b
    iget v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqProgress:I

    if-ltz v0, :cond_66

    .line 66
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    :cond_66
    iget v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqMax:I

    if-ltz v0, :cond_71

    .line 69
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqMax:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 71
    :cond_71
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastLabel:Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 72
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_7c
    return-object v1
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastLabel:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 102
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_9
    return-void

    .line 104
    :cond_a
    iput-object p1, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastLabel:Ljava/lang/String;

    goto :goto_9
.end method

.method public setMax(I)V
    .registers 5
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1b

    .line 90
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 92
    iget-object v1, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 93
    iget-object v1, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    :goto_1a
    return-void

    .line 95
    :cond_1b
    iput p1, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqMax:I

    goto :goto_1a
.end method

.method public setProgress(I)V
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 81
    iget-object v0, p0, Lcom/swype/android/settings/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 86
    :goto_9
    return-void

    .line 83
    :cond_a
    iput p1, p0, Lcom/swype/android/settings/ProgressBarPreference;->lastReqProgress:I

    goto :goto_9
.end method

.method public setStore(Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;)V
    .registers 2
    .parameter "store"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/swype/android/settings/ProgressBarPreference;->mStore:Lcom/swype/android/settings/ProgressBarPreference$SettingsStore;

    .line 110
    return-void
.end method
