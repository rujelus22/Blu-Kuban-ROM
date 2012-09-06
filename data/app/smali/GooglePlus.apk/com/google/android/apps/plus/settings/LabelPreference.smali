.class public Lcom/google/android/apps/plus/settings/LabelPreference;
.super Landroid/preference/Preference;
.source "LabelPreference.java"


# instance fields
.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabelColor:I

    .line 24
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/LabelPreference;->setLayoutResource(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabelColor:I

    .line 29
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/LabelPreference;->setLayoutResource(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabelColor:I

    .line 34
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/LabelPreference;->setLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 54
    const v1, 0x7f09014c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, labelView:Landroid/widget/TextView;
    if-eqz v0, :cond_1b

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 57
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :cond_1b
    :goto_1b
    return-void

    .line 59
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget v1, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabelColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 38
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 39
    :cond_10
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabel:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/LabelPreference;->notifyChanged()V

    .line 42
    :cond_15
    return-void
.end method

.method public setLabelColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabelColor:I

    if-eq p1, v0, :cond_9

    .line 46
    iput p1, p0, Lcom/google/android/apps/plus/settings/LabelPreference;->mLabelColor:I

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/LabelPreference;->notifyChanged()V

    .line 49
    :cond_9
    return-void
.end method
