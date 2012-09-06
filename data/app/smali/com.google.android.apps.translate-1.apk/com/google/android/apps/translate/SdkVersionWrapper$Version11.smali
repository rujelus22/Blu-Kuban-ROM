.class Lcom/google/android/apps/translate/SdkVersionWrapper$Version11;
.super Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;
.source "SdkVersionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SdkVersionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version11"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version11;-><init>()V

    return-void
.end method


# virtual methods
.method public copyToClipBoard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "textToCopy"

    .prologue
    .line 243
    const-string v1, "clipboard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 245
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-static {p2, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 246
    return-void
.end method

.method public invalidateOptionsMenu(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 239
    return-void
.end method

.method public setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V
    .registers 8
    .parameter "activity"
    .parameter "spinnerAdapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 202
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez p2, :cond_17

    .line 204
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 205
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 206
    invoke-static {p1}, Lcom/google/android/apps/translate/TranslateBaseActivity;->getTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->setActionBarTitle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 224
    :goto_16
    return-void

    .line 208
    :cond_17
    invoke-virtual {p2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->isTabMenuMode()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 210
    invoke-static {p1, v4}, Lcom/google/android/apps/translate/home/TabMenuFragment;->setTabMenuFragmentVisibility(Landroid/app/Activity;Z)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 212
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 213
    invoke-virtual {p2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/apps/translate/TranslateBaseActivity;->getTitle(Landroid/app/Activity;Landroid/app/Fragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->setActionBarTitle(Landroid/app/Activity;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->setTabWidth()V

    goto :goto_16

    .line 218
    :cond_35
    invoke-static {p1, v3}, Lcom/google/android/apps/translate/home/TabMenuFragment;->setTabMenuFragmentVisibility(Landroid/app/Activity;Z)V

    .line 219
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 220
    invoke-virtual {v0, p2, p2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 221
    invoke-virtual {p2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 222
    invoke-static {v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->removeActionBarTitle(Landroid/app/ActionBar;)V

    goto :goto_16
.end method

.method public setHomeButton(Landroid/app/Activity;Z)V
    .registers 5
    .parameter "activity"
    .parameter "enable"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 232
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 234
    return-void
.end method

.method public setTextIsSelectable(Landroid/widget/TextView;Z)V
    .registers 3
    .parameter "view"
    .parameter "selectable"

    .prologue
    .line 190
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 191
    return-void
.end method

.method public useFragments()Z
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method
