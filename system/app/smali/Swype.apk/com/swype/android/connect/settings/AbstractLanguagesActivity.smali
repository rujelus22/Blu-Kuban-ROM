.class public abstract Lcom/swype/android/connect/settings/AbstractLanguagesActivity;
.super Landroid/app/ListActivity;
.source "AbstractLanguagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListComparator;,
        Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 225
    return-void
.end method


# virtual methods
.method protected abstract getInitialLanguageSet()[Ljava/lang/String;
.end method

.method protected getSelectedLanguagesCount()I
    .registers 6

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, count:I
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    .line 82
    .local v0, adapter:Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;
    invoke-virtual {v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_e
    if-ltz v2, :cond_1b

    .line 83
    invoke-virtual {v0, v2}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getCheck(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 82
    :cond_18
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 87
    :cond_1b
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->setContentView(I)V

    .line 52
    return-void
.end method

.method protected abstract onItemClicked()V
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 68
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 69
    :goto_9
    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 70
    iget-object v1, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->adapter:Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    if-eqz v1, :cond_15

    .line 71
    iget-object v1, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->adapter:Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    invoke-virtual {v1, p3, v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->setCheck(IZ)V

    .line 74
    :cond_15
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->onItemClicked()V

    .line 75
    return-void

    .line 68
    :cond_19
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 62
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 57
    return-void
.end method

.method protected updateLanguageList()V
    .registers 7

    .prologue
    .line 36
    new-instance v5, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    invoke-direct {v5, p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;-><init>(Lcom/swype/android/connect/settings/AbstractLanguagesActivity;)V

    iput-object v5, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->adapter:Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    .line 38
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->getInitialLanguageSet()[Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, languages:[Ljava/lang/String;
    if-eqz v3, :cond_21

    .line 40
    iget-object v5, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->adapter:Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    invoke-virtual {v5}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->loadDisplayLanguageMap()V

    .line 41
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v3

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_15
    if-ge v1, v4, :cond_21

    aget-object v2, v0, v1

    .line 42
    .local v2, lang:Ljava/lang/String;
    iget-object v5, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->adapter:Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    invoke-virtual {v5, v2}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->add(Ljava/lang/String;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 45
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #lang:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_21
    iget-object v5, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->adapter:Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    invoke-virtual {p0, v5}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method
