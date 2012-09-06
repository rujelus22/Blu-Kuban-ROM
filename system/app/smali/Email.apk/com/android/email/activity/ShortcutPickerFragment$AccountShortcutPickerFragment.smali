.class public Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;
.super Lcom/android/email/activity/ShortcutPickerFragment;
.source "ShortcutPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ShortcutPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountShortcutPickerFragment"
.end annotation


# static fields
.field private static final ACCOUNT_FROM_COLUMNS:[Ljava/lang/String;


# instance fields
.field private volatile mLoadFinished:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "displayName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->ACCOUNT_FROM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/email/activity/ShortcutPickerFragment;-><init>()V

    .line 168
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    return-void
.end method

.method private selectAccountCursor(Landroid/database/Cursor;Z)V
    .registers 8
    .parameter "cursor"
    .parameter "allowBack"

    .prologue
    .line 219
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 220
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    invoke-interface {v4, v0}, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;->buildFilter(Lcom/android/emailcommon/provider/Account;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->newInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Ljava/lang/Integer;)Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;

    move-result-object v1

    .line 223
    .local v1, fragment:Lcom/android/email/activity/ShortcutPickerFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 224
    .local v2, transaction:Landroid/app/FragmentTransaction;
    const v3, 0x7f0e003f

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 225
    if-eqz p2, :cond_2a

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 228
    :cond_2a
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 229
    return-void
.end method


# virtual methods
.method getFromColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    sget-object v0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->ACCOUNT_FROM_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/email/activity/ShortcutPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 177
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 178
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVisible(Z)V

    .line 180
    :cond_1d
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 191
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 184
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 185
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->selectAccountCursor(Landroid/database/Cursor;Z)V

    .line 186
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 199
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 200
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;->onMissingData(ZZ)V

    .line 210
    :goto_d
    return-void

    .line 203
    :cond_e
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1e

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 204
    invoke-direct {p0, p2, v2}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->selectAccountCursor(Landroid/database/Cursor;Z)V

    goto :goto_d

    .line 207
    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/ShortcutPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 208
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    .line 209
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVisible(Z)V

    goto :goto_d
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
