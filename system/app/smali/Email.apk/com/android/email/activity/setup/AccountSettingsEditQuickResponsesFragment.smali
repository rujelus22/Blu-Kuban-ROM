.class public Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsEditQuickResponsesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;,
        Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mContext:Landroid/content/Context;

.field private mQuickResponsesView:Landroid/widget/ListView;

.field private mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 141
    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/emailcommon/provider/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 216
    if-eqz p1, :cond_12

    .line 217
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "AccountSettingsEditQuickResponsesFragment.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    :cond_12
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0005

    if-ne v0, v1, :cond_19

    .line 285
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v0, v1}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->newInstance(Lcom/android/emailcommon/provider/QuickResponse;J)Lcom/android/email/activity/setup/EditQuickResponseDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 289
    :cond_19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 228
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 229
    const-string v1, "Email"

    const-string v2, "AccountSettingsEditQuickResponsesFragment onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_f
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/Account;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 235
    new-instance v1, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 236
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 241
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 242
    const-string v0, "Email"

    const-string v1, "AccountSettingsEditQuickResponsesFragment onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_f
    const v10, 0x7f040002

    .line 245
    .local v10, layoutId:I
    const/4 v0, 0x0

    invoke-virtual {p1, v10, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 246
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    .line 248
    const v0, 0x7f0e0003

    invoke-static {v11, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e0004

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 252
    .local v9, emptyView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 254
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 258
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    const v0, 0x7f0e0005

    invoke-static {v11, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    return-object v11
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 276
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 277
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 223
    const-string v1, "AccountSettingsEditQuickResponsesFragment.title"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method
