.class public Lcom/google/android/apps/plus/phone/EventInviteeListActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EventInviteeListActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENT_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mCanInvitePeople:Z

.field private mEventId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mOwnerId:Ljava/lang/String;

.field private mPendingRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "can_invite_people"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->EVENT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mHandler:Landroid/os/Handler;

    .line 298
    new-instance v0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$3;-><init>(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->doInviteMore(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->EVENT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private doInviteMore(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 6
    .parameter "audience"

    .prologue
    .line 216
    const/4 v1, 0x0

    const v2, 0x7f080412

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 219
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mOwnerId:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService;->invitePeopleToEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 223
    return-void
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 307
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_d

    .line 327
    :cond_c
    :goto_c
    return-void

    .line 311
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 313
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1e

    .line 314
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 317
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 319
    if-eqz p2, :cond_35

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 320
    const v1, 0x7f0801fd

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 325
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mOwnerId:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 341
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->EVENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public inviteMore()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const v0, 0x7f08040c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v7, 0x1

    move-object v0, p0

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    if-nez p3, :cond_9

    .line 210
    :cond_8
    :goto_8
    return-void

    .line 196
    :cond_9
    packed-switch p1, :pswitch_data_20

    goto :goto_8

    .line 198
    :pswitch_d
    const-string v1, "audience"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 200
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$1;-><init>(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 196
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 109
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;

    if-eqz v0, :cond_d

    .line 110
    check-cast p1, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;

    .end local p1
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mEventId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mOwnerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->setEventId(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    if-eqz p1, :cond_1a

    .line 70
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 71
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 75
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "event_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mEventId:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mOwnerId:Ljava/lang/String;

    .line 78
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 91
    return-void

    .line 85
    :cond_4f
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->showTitlebar(Z)V

    .line 86
    const v1, 0x7f0803d4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 87
    const v1, 0x7f100010

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->createTitlebarButtons(I)V

    goto :goto_45
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 5
    .parameter "loaderId"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 231
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v1, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$2;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$2;-><init>(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 249
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, eventName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->shouldShowAndroidActionBar()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 251
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    :goto_17
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_24

    :goto_1d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mCanInvitePeople:Z

    .line 257
    .end local v0           #eventName:Ljava/lang/String;
    :cond_1f
    return-void

    .line 253
    .restart local v0       #eventName:Ljava/lang/String;
    :cond_20
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_17

    :cond_24
    move v1, v2

    .line 255
    goto :goto_1d
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_12

    .line 159
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 149
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->onBackPressed()V

    goto :goto_9

    .line 154
    :sswitch_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->inviteMore()V

    goto :goto_9

    .line 147
    :sswitch_data_12
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0902cc -> :sswitch_e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 296
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 129
    const v0, 0x7f0902cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mCanInvitePeople:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 138
    const v0, 0x7f0902cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mCanInvitePeople:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 139
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 271
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->isIntentAccountActive()Z

    move-result v1

    if-nez v1, :cond_d

    .line 274
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->finish()V

    .line 287
    :cond_c
    :goto_c
    return-void

    .line 278
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 280
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 282
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 283
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 100
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    :cond_12
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->onBackPressed()V

    .line 170
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method
