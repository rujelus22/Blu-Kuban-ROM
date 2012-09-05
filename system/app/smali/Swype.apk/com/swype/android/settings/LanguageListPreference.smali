.class public Lcom/swype/android/settings/LanguageListPreference;
.super Landroid/preference/ListPreference;
.source "LanguageListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 9
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/swype/android/settings/LanguageListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/LanguageListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 29
    new-instance v0, Lcom/swype/android/settings/LanguageListAdapter;

    invoke-virtual {p0}, Lcom/swype/android/settings/LanguageListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/swype/android/settings/LanguageListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const v4, 0x7f030006

    const v5, 0x1020014

    const v6, 0x1020019

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/settings/LanguageListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;IIII)V

    .line 31
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 33
    return-void
.end method
