.class public Lcom/google/android/apps/plus/phone/CircleActivity;
.super Lcom/google/android/apps/plus/fragments/EsTabActivity;
.source "CircleActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;
.implements Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/CircleActivity$DeleteCircleConfirmationDialog;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsTabActivity;",
        "Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;"
    }
.end annotation


# static fields
.field private static final CIRCLES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCircleName:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDataLoaded:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsVirtualCircle:Z

.field private mMemberCount:I

.field private mNewConversationRequested:Z

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mPostToCircleRequested:Z

.field private mSemanticHints:I

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "circle_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "semantic_hints"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/CircleActivity;->CIRCLES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 119
    const/4 v0, 0x0

    const v1, 0x7f0d005f

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;-><init>(II)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/google/android/apps/plus/phone/CircleActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/CircleActivity$1;-><init>(Lcom/google/android/apps/plus/phone/CircleActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 120
    return-void
.end method

.method private deleteCircle()V
    .registers 4

    .prologue
    .line 508
    new-instance v0, Lcom/google/android/apps/plus/phone/CircleActivity$DeleteCircleConfirmationDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/phone/CircleActivity$DeleteCircleConfirmationDialog;-><init>()V

    .line 509
    .local v0, dialog:Lcom/google/android/apps/plus/phone/CircleActivity$DeleteCircleConfirmationDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "delete_circle_conf"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/phone/CircleActivity$DeleteCircleConfirmationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private editCircleProperties()V
    .registers 5

    .prologue
    .line 532
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mDataLoaded:Z

    if-nez v1, :cond_5

    .line 540
    :goto_4
    return-void

    .line 536
    :cond_5
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mSemanticHints:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_20

    const/4 v1, 0x1

    :goto_12
    invoke-static {p0, v2, v3, v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    move-result-object v0

    .line 539
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "circle_settings"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4

    .line 536
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    :cond_20
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 4

    .prologue
    .line 565
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 566
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v1

    .line 567
    .local v1, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 568
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 569
    iget v2, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 570
    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 571
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 573
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    return-object v2
.end method

.method private getCircleId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "circle_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onHelpRequested()V
    .registers 4

    .prologue
    .line 492
    const-string v1, "plus_circles"

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 493
    .local v0, helpUrl:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CircleActivity;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void
.end method

.method private postToCircle()V
    .registers 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPostToCircleRequested:Z

    .line 473
    :goto_7
    return-void

    .line 470
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CircleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7
.end method

.method private removePeople()V
    .registers 4

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getRemovePeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/CircleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 502
    return-void
.end method

.method private selectRequestedTab()V
    .registers 5

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, tab:Ljava/lang/String;
    const/4 v0, 0x0

    .line 255
    .local v0, selectedTab:I
    if-eqz v1, :cond_16

    .line 256
    const-string v2, "people"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 257
    const/4 v0, 0x0

    .line 264
    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CircleActivity;->selectTab(I)V

    .line 265
    return-void

    .line 258
    :cond_1a
    const-string v2, "posts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 259
    const/4 v0, 0x1

    goto :goto_16

    .line 260
    :cond_24
    const-string v2, "photos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 261
    const/4 v0, 0x2

    goto :goto_16
.end method

.method private startNewConversation()V
    .registers 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mNewConversationRequested:Z

    .line 486
    :goto_7
    return-void

    .line 482
    :cond_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATIONS_START_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CircleActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CircleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7
.end method

.method private updateTitleAndSubtitle()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 606
    iget v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    if-eqz v3, :cond_3d

    .line 607
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0018

    iget v5, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, subtitle:Ljava/lang/String;
    :goto_1d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3f

    .line 614
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 616
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 623
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_2f
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/CircleActivity;->getTabFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    .line 624
    .local v1, people:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
    if-eqz v1, :cond_3c

    .line 625
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->setCircleName(Ljava/lang/String;)V

    .line 627
    :cond_3c
    return-void

    .line 610
    .end local v1           #people:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
    .end local v2           #subtitle:Ljava/lang/String;
    :cond_3d
    const/4 v2, 0x0

    .restart local v2       #subtitle:Ljava/lang/String;
    goto :goto_1d

    .line 619
    :cond_3f
    const v3, 0x7f02007e

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/phone/CircleActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 620
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CircleActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    goto :goto_2f
.end method


# virtual methods
.method public doDeleteCircle()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 517
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0017

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v1

    .line 521
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "req_pending"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->deleteCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 526
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 3
    .parameter "tabId"

    .prologue
    .line 772
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CIRCLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/CircleActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 461
    :goto_6
    return-void

    .line 457
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCirclesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CircleActivity;->startActivity(Landroid/content/Intent;)V

    .line 460
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->finish()V

    goto :goto_6
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;Z)V
    .registers 7
    .parameter "requestId"
    .parameter "result"
    .parameter "finishOnSuccess"

    .prologue
    .line 686
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 703
    :cond_c
    :goto_c
    return-void

    .line 690
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 692
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 694
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_21

    .line 695
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 698
    :cond_21
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 699
    const v1, 0x7f070163

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 700
    :cond_33
    if-eqz p3, :cond_c

    .line 701
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->finish()V

    goto :goto_c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 710
    if-nez p1, :cond_f

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    .line 711
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/phone/CircleActivity$2;

    invoke-direct {v1, p0, p3}, Lcom/google/android/apps/plus/phone/CircleActivity$2;-><init>(Lcom/google/android/apps/plus/phone/CircleActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 721
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 190
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    if-eqz v1, :cond_f

    move-object v0, p1

    .line 191
    check-cast v0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    .line 192
    .local v0, peopleFragment:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->setOnPersonSelectedListener(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/phone/CircleActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    .line 199
    .end local v0           #peopleFragment:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
    :cond_e
    :goto_e
    return-void

    .line 194
    :cond_f
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    if-eqz v1, :cond_18

    .line 195
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/phone/CircleActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_e

    .line 196
    :cond_18
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    if-eqz v1, :cond_e

    .line 197
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/phone/CircleActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_e
.end method

.method public onCirclePropertiesChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 559
    :goto_a
    return-void

    .line 552
    :cond_b
    const/4 v1, 0x0

    const v2, 0x7f0701d4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CircleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 555
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->modifyCircleProperties(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    if-eqz p1, :cond_1b

    .line 130
    const-string v3, "request_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 131
    const-string v3, "request_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 135
    :cond_1b
    const v3, 0x7f030013

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/CircleActivity;->setContentView(I)V

    .line 137
    const v3, 0x7f0d005c

    const v6, 0x7f0d0060

    invoke-virtual {p0, v4, v3, v6}, Lcom/google/android/apps/plus/phone/CircleActivity;->addTab(III)V

    .line 138
    const v3, 0x7f0d005d

    const v6, 0x7f0d0061

    invoke-virtual {p0, v5, v3, v6}, Lcom/google/android/apps/plus/phone/CircleActivity;->addTab(III)V

    .line 139
    const/4 v3, 0x2

    const v6, 0x7f0d005e

    const v7, 0x7f0d0062

    invoke-virtual {p0, v3, v6, v7}, Lcom/google/android/apps/plus/phone/CircleActivity;->addTab(III)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, circleId:Ljava/lang/String;
    const-string v3, "v.all.circles"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    const-string v3, "v.nearby"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    const-string v3, "v.whatshot"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    :cond_59
    move v3, v5

    :goto_5a
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mIsVirtualCircle:Z

    .line 146
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mIsVirtualCircle:Z

    if-eqz v3, :cond_6f

    .line 147
    const v3, 0x7f0d005b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/CircleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/CircleActivity;->setSwipeEnabled(Z)V

    .line 151
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 153
    .local v2, intent:Landroid/content/Intent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_a1

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 156
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 165
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_80
    const-string v3, "circle_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    .line 166
    const-string v3, "circle_member_count"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    .line 168
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->selectRequestedTab()V

    .line 170
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->updateTitleAndSubtitle()V

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 172
    return-void

    .end local v2           #intent:Landroid/content/Intent;
    :cond_9f
    move v3, v4

    .line 142
    goto :goto_5a

    .line 159
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_a1
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/CircleActivity;->showTitlebar(Z)V

    .line 162
    const v3, 0x7f100003

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/CircleActivity;->createTitlebarButtons(I)V

    goto :goto_80
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
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
    .line 272
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/phone/CircleActivity;->CIRCLES_PROJECTION:[Ljava/lang/String;

    const-string v4, "circle_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 333
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateTab(I)Landroid/support/v4/app/Fragment;
    .registers 25
    .parameter "tabId"

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_a2

    .line 245
    const/16 v21, 0x0

    :goto_5
    return-object v21

    .line 208
    :pswitch_6
    new-instance v21, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;-><init>()V

    .line 209
    .local v21, fragment:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->setCircleId(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->setCircleName(Ljava/lang/String;)V

    goto :goto_5

    .line 214
    .end local v21           #fragment:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "account"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    .line 216
    .local v3, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v20

    .line 219
    .local v20, circleId:Ljava/lang/String;
    const-string v2, "v.all.circles"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 220
    const/4 v7, 0x0

    .line 221
    .local v7, circleIdForIntent:Ljava/lang/String;
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 233
    .local v8, view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    :goto_3b
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getStreamFragmentIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Landroid/content/Intent;

    move-result-object v22

    .line 236
    .local v22, intent:Landroid/content/Intent;
    new-instance v21, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;-><init>(Landroid/content/Intent;Z)V

    goto :goto_5

    .line 222
    .end local v7           #circleIdForIntent:Ljava/lang/String;
    .end local v8           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .end local v22           #intent:Landroid/content/Intent;
    :cond_55
    const-string v2, "v.whatshot"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 223
    const/4 v7, 0x0

    .line 224
    .restart local v7       #circleIdForIntent:Ljava/lang/String;
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .restart local v8       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    goto :goto_3b

    .line 225
    .end local v7           #circleIdForIntent:Ljava/lang/String;
    .end local v8           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    :cond_63
    const-string v2, "v.nearby"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 226
    const/4 v7, 0x0

    .line 227
    .restart local v7       #circleIdForIntent:Ljava/lang/String;
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .restart local v8       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    goto :goto_3b

    .line 229
    .end local v7           #circleIdForIntent:Ljava/lang/String;
    .end local v8           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    :cond_71
    move-object/from16 v7, v20

    .line 230
    .restart local v7       #circleIdForIntent:Ljava/lang/String;
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .restart local v8       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    goto :goto_3b

    .line 239
    .end local v3           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v7           #circleIdForIntent:Ljava/lang/String;
    .end local v8           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .end local v20           #circleId:Ljava/lang/String;
    :pswitch_76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "account"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    .line 240
    .restart local v3       #account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getCircleId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-static/range {v9 .. v19}, Lcom/google/android/apps/plus/phone/Intents;->getAlbumViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 242
    .restart local v22       #intent:Landroid/content/Intent;
    new-instance v21, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-direct/range {v21 .. v22}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 206
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1e
        :pswitch_76
    .end packed-switch
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCursor:Landroid/database/Cursor;

    if-eq v1, p2, :cond_f

    .line 285
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_f
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCursor:Landroid/database/Cursor;

    .line 289
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mDataLoaded:Z

    .line 291
    if-eqz p2, :cond_2e

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 292
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    .line 293
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    .line 294
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mSemanticHints:I

    .line 297
    :cond_2e
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CircleActivity;->getTabFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    .line 298
    .local v0, fragment:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
    if-eqz v0, :cond_3b

    .line 299
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mCircleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->setCircleName(Ljava/lang/String;)V

    .line 302
    :cond_3b
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->updateTitleAndSubtitle()V

    .line 304
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mNewConversationRequested:Z

    if-eqz v1, :cond_51

    .line 305
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mNewConversationRequested:Z

    .line 306
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->startNewConversation()V

    .line 312
    :cond_47
    :goto_47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_5b

    .line 313
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->invalidateOptionsMenu()V

    .line 317
    :goto_50
    return-void

    .line 307
    :cond_51
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPostToCircleRequested:Z

    if-eqz v1, :cond_47

    .line 308
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPostToCircleRequested:Z

    .line 309
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->postToCircle()V

    goto :goto_47

    .line 315
    :cond_5b
    const v1, 0x7f100003

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CircleActivity;->createTitlebarButtons(I)V

    goto :goto_50
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/CircleActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 325
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_38

    .line 437
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 392
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CircleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 397
    :sswitch_12
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->postToCircle()V

    goto :goto_9

    .line 402
    :sswitch_16
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->startNewConversation()V

    goto :goto_9

    .line 407
    :sswitch_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->refresh()V

    goto :goto_9

    .line 412
    :sswitch_1e
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->editCircleProperties()V

    goto :goto_9

    .line 417
    :sswitch_22
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CircleActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 418
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_9

    .line 423
    :sswitch_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->onHelpRequested()V

    goto :goto_9

    .line 428
    :sswitch_2f
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->removePeople()V

    goto :goto_9

    .line 433
    :sswitch_33
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->deleteCircle()V

    goto :goto_9

    .line 390
    nop

    :sswitch_data_38
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01a7 -> :sswitch_12
        0x7f0d01b4 -> :sswitch_1a
        0x7f0d01b5 -> :sswitch_1e
        0x7f0d01b6 -> :sswitch_22
        0x7f0d01b7 -> :sswitch_2b
        0x7f0d01ba -> :sswitch_16
        0x7f0d01bb -> :sswitch_2f
        0x7f0d01bc -> :sswitch_33
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 634
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPause()V

    .line 635
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 636
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 7
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 597
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CircleActivity;->startActivity(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12
    .parameter "menu"

    .prologue
    const v9, 0x7f0d01ba

    const v8, 0x7f0d01a7

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 342
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_81

    .line 343
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mDataLoaded:Z

    if-eqz v6, :cond_7d

    iget v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mSemanticHints:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_7d

    move v3, v4

    .line 345
    .local v3, canShare:Z
    :goto_19
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 346
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v3, :cond_7f

    iget v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    if-lez v6, :cond_7f

    move v6, v4

    :goto_2b
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    .end local v3           #canShare:Z
    :goto_2e
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mDataLoaded:Z

    if-eqz v6, :cond_90

    iget v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mSemanticHints:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_90

    move v2, v4

    .line 355
    .local v2, canRemovePeople:Z
    :goto_39
    const v6, 0x7f0d01bb

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getSelectedTabIndex()I

    move-result v6

    if-nez v6, :cond_92

    if-eqz v2, :cond_92

    iget v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    if-lez v6, :cond_92

    move v6, v4

    :goto_4d
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 358
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mDataLoaded:Z

    if-eqz v6, :cond_94

    iget v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mSemanticHints:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_94

    move v0, v4

    .line 360
    .local v0, canDelete:Z
    :goto_5b
    const v6, 0x7f0d01bc

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mDataLoaded:Z

    if-eqz v6, :cond_96

    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mIsVirtualCircle:Z

    if-nez v6, :cond_96

    move v1, v4

    .line 363
    .local v1, canMakeJustFollowing:Z
    :goto_6e
    const v4, 0x7f0d01b5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    return v4

    .end local v0           #canDelete:Z
    .end local v1           #canMakeJustFollowing:Z
    .end local v2           #canRemovePeople:Z
    :cond_7d
    move v3, v5

    .line 343
    goto :goto_19

    .restart local v3       #canShare:Z
    :cond_7f
    move v6, v5

    .line 346
    goto :goto_2b

    .line 348
    .end local v3           #canShare:Z
    :cond_81
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 349
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2e

    :cond_90
    move v2, v5

    .line 352
    goto :goto_39

    .restart local v2       #canRemovePeople:Z
    :cond_92
    move v6, v5

    .line 355
    goto :goto_4d

    :cond_94
    move v0, v5

    .line 358
    goto :goto_5b

    .restart local v0       #canDelete:Z
    :cond_96
    move v1, v5

    .line 362
    goto :goto_6e
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 374
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 375
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 378
    :cond_13
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mDataLoaded:Z

    if-eqz v4, :cond_39

    iget v4, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mSemanticHints:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_39

    move v0, v2

    .line 381
    .local v0, canShare:Z
    :goto_1e
    const v4, 0x7f0d01a7

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 382
    const v4, 0x7f0d01ba

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_3b

    iget v5, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mMemberCount:I

    if-lez v5, :cond_3b

    :goto_35
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    return-void

    .end local v0           #canShare:Z
    :cond_39
    move v0, v3

    .line 378
    goto :goto_1e

    .restart local v0       #canShare:Z
    :cond_3b
    move v2, v3

    .line 382
    goto :goto_35
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 643
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onResume()V

    .line 645
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->isIntentAccountActive()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 646
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 647
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_35

    .line 648
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 649
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 650
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/apps/plus/phone/CircleActivity;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;Z)V

    .line 651
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    .line 657
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_35
    :goto_35
    return-void

    .line 655
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->finish()V

    goto :goto_35
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 181
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CircleActivity;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    :cond_12
    return-void
.end method

.method protected onTabDeselected(ILandroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "tabId"
    .parameter "fragment"

    .prologue
    .line 674
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    .line 675
    check-cast p2, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->deactivate()V

    .line 679
    :cond_9
    :goto_9
    return-void

    .line 676
    .restart local p2
    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_9

    .line 677
    check-cast p2, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->deactivate()V

    goto :goto_9
.end method

.method protected onTabSelected(ILandroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "tabId"
    .parameter "fragment"

    .prologue
    .line 664
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 665
    check-cast p2, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->activate()V

    .line 667
    :cond_8
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CircleActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 446
    return-void
.end method

.method protected removePeopleFromCircle(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CircleActivity;->getTabFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->removePeopleFromCircle(Ljava/util/ArrayList;)V

    .line 725
    return-void
.end method
