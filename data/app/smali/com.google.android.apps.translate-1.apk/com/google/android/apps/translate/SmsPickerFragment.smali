.class public Lcom/google/android/apps/translate/SmsPickerFragment;
.super Landroid/app/ListFragment;
.source "SmsPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsPickerFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLanguages:Lcom/google/android/apps/translate/Languages;

.field private mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

.field private mToLanguage:Lcom/google/android/apps/translate/Language;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/SmsPickerHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translate/Language;)V
    .registers 3
    .parameter "to"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/SmsPickerHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 37
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const-string v0, "SmsPickerFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SmsPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mActivity:Landroid/app/Activity;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/SmsPickerHelper;->onCreate(Landroid/app/Activity;)V

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/SmsPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/SmsPickerHelper;->init(Landroid/widget/LinearLayout;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/SmsPickerHelper;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/SmsPickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SmsPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->getLanguageListFromProfile(Landroid/content/Context;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mLanguages:Lcom/google/android/apps/translate/Languages;

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    const-string v0, "SmsPickerFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/SmsPickerFragment;->setHasOptionsMenu(Z)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 88
    const-string v0, "SmsPickerFragment"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/SmsPickerHelper;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 93
    :goto_f
    return-void

    .line 92
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 50
    sget v0, Lcom/google/android/apps/translate/R$layout;->sms_picker_activity:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SMS:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;)Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationInputMethod(Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 78
    iget-object v6, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/translate/SmsPickerHelper;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mLanguages:Lcom/google/android/apps/translate/Languages;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mToLanguage:Lcom/google/android/apps/translate/Language;

    const/4 v3, 0x1

    invoke-static {v6, v0, v1, v2, v3}, Lcom/google/android/apps/translate/translation/TranslateFragment;->startTranslateFragment(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V

    .line 84
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 104
    const-string v0, "SmsPickerFragment"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/SmsPickerHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_19
    return v0

    :cond_1a
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_19
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 97
    const-string v0, "SmsPickerFragment"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/SmsPickerHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 99
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 67
    const-string v0, "SmsPickerFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 69
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setHomeButton(Landroid/app/Activity;Z)V

    .line 70
    return-void
.end method
