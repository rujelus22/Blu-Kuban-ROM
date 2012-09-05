.class public Lcom/vlingo/client/social/SocialUpdateActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "SocialUpdateActivity.java"

# interfaces
.implements Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
.implements Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
.implements Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_SEMI_OPAQUE:I = 0x46

.field public static final EXTRA_TEXT:Ljava/lang/String; = "Text"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "NetworkType"

.field public static final EXTRA_TYPE_VALUE_ALL:Ljava/lang/String; = "all"

.field public static final EXTRA_TYPE_VALUE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final EXTRA_TYPE_VALUE_FOURSQUARE:Ljava/lang/String; = "foursquare"

.field public static final EXTRA_TYPE_VALUE_TWITTER:Ljava/lang/String; = "twitter"

.field private static final SHOW_POPUP_ERR:I = 0x1f7

.field private static final SHOW_POPUP_LOGIN_PROMPT:I = 0x1f8

.field private static final SHOW_POPUP_UPDATING:I = 0x1f6

.field private static final UPDATE_STATUS_DONE:I = 0x2

.field private static final UPDATE_STATUS_ERR:I = 0x3

.field private static final UPDATE_STATUS_NONE:I = 0x0

.field private static final UPDATE_STATUS_WORKING:I = 0x1


# instance fields
.field private charCounter:Landroid/widget/TextView;

.field private curDialogID:I

.field private facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

.field private foursquareAPI:Lcom/vlingo/client/social/api/FoursquareAPI;

.field private loggedInFB:Z

.field private loggedInFS:Z

.field private loggedInTW:Z

.field private networkButtonFB:Landroid/widget/ImageButton;

.field private networkButtonFS:Landroid/widget/ImageButton;

.field private networkButtonTW:Landroid/widget/ImageButton;

.field private networkUpdateMask:I

.field private networksLabel:Landroid/widget/TextView;

.field private popupErrorMessage:Ljava/lang/String;

.field private popupLoginAccountType:I

.field private shareButton:Landroid/widget/Button;

.field private statusField:Landroid/widget/EditText;

.field private twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

.field private updateStatusFB:I

.field private updateStatusFS:I

.field private updateStatusTW:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->curDialogID:I

    .line 74
    iput-boolean v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFB:Z

    .line 75
    iput-boolean v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFS:Z

    .line 76
    iput-boolean v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInTW:Z

    .line 78
    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFB:I

    .line 79
    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFS:I

    .line 80
    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusTW:I

    .line 95
    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    .line 319
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/social/SocialUpdateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatuses()V

    return-void
.end method

.method static synthetic access$1000(Lcom/vlingo/client/social/SocialUpdateActivity;IZLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/vlingo/client/social/SocialUpdateActivity;->onNetworkStatusUpdateComplete(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/social/SocialUpdateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateCharCounter()V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/social/SocialUpdateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateShareButtonAndNetworksLabel()V

    return-void
.end method

.method static synthetic access$400(Lcom/vlingo/client/social/SocialUpdateActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFB:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/social/SocialUpdateActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFS:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/social/SocialUpdateActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonTW:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/social/SocialUpdateActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->handleNetworkButtonToggle(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/vlingo/client/social/SocialUpdateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->removeCurrentDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/vlingo/client/social/SocialUpdateActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupLoginAccountType:I

    return v0
.end method

.method private buttonForNetwork(I)Landroid/widget/ImageButton;
    .registers 3
    .parameter "network"

    .prologue
    .line 597
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 598
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFB:Landroid/widget/ImageButton;

    .line 603
    :goto_6
    return-object v0

    .line 599
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 600
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFS:Landroid/widget/ImageButton;

    goto :goto_6

    .line 601
    :cond_d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 602
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonTW:Landroid/widget/ImageButton;

    goto :goto_6

    .line 603
    :cond_13
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private getNameForNetwork(I)Ljava/lang/String;
    .registers 3
    .parameter "network"

    .prologue
    .line 629
    const/16 v0, 0x8

    if-ne p1, v0, :cond_c

    .line 630
    const v0, 0x7f09018e

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    :goto_b
    return-object v0

    .line 631
    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    .line 632
    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 633
    :cond_17
    const/4 v0, 0x4

    if-ne p1, v0, :cond_22

    .line 634
    const v0, 0x7f090192

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 635
    :cond_22
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getStatusForNetwork(I)I
    .registers 3
    .parameter "network"

    .prologue
    .line 639
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 640
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFB:I

    .line 645
    :goto_6
    return v0

    .line 641
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 642
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFS:I

    goto :goto_6

    .line 643
    :cond_d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 644
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusTW:I

    goto :goto_6

    .line 645
    :cond_13
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private handleNetworkButtonToggle(I)V
    .registers 4
    .parameter "network"

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkLoggedIn(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 300
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->toggleNetworkEnabled(I)V

    .line 308
    :goto_9
    return-void

    .line 303
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method private handleUnsupportedAction()V
    .registers 7

    .prologue
    .line 203
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/Action;

    const-string v3, "ShowMessage"

    invoke-direct {v0, v3}, Lcom/vlingo/client/core/vlservice/response/Action;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, action:Lcom/vlingo/client/core/vlservice/response/Action;
    new-instance v2, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v2}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 205
    .local v2, dispatcher:Lcom/vlingo/client/vvs/VVSDispatcher;
    new-instance v1, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;-><init>()V

    .line 206
    .local v1, actionNotSupported:Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
    const-string v3, "Type"

    const-string v4, "error"

    invoke-virtual {v0, v3, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const-string v3, "Message"

    invoke-virtual {v2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09023b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v1, v0, v2}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    .line 209
    return-void
.end method

.method private isFacebookAvailable()Z
    .registers 2

    .prologue
    .line 198
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isFoursquareAvailable()Z
    .registers 2

    .prologue
    .line 188
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isNetworkEnabled(I)Z
    .registers 3
    .parameter "network"

    .prologue
    .line 660
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isNetworkLoggedIn(I)Z
    .registers 3
    .parameter "network"

    .prologue
    .line 619
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 620
    iget-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFB:Z

    .line 625
    :goto_6
    return v0

    .line 621
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 622
    iget-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFS:Z

    goto :goto_6

    .line 623
    :cond_d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 624
    iget-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInTW:Z

    goto :goto_6

    .line 625
    :cond_13
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isTwitterAvailable()Z
    .registers 2

    .prologue
    .line 193
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private networkTypes()[I
    .registers 5

    .prologue
    .line 692
    const/4 v1, 0x0

    .line 693
    .local v1, supportedNetworkTypeCount:I
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFoursquareAvailable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 694
    add-int/lit8 v1, v1, 0x1

    .line 696
    :cond_9
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFacebookAvailable()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 697
    add-int/lit8 v1, v1, 0x1

    .line 699
    :cond_11
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isTwitterAvailable()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 700
    add-int/lit8 v1, v1, 0x1

    .line 702
    :cond_19
    new-array v2, v1, [I

    .line 703
    .local v2, toReturn:[I
    const/4 v0, 0x0

    .line 704
    .local v0, i:I
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFoursquareAvailable()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 705
    const/4 v3, 0x2

    aput v3, v2, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    .line 708
    :cond_27
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFacebookAvailable()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 709
    const/16 v3, 0x8

    aput v3, v2, v0

    .line 710
    add-int/lit8 v0, v0, 0x1

    .line 712
    :cond_33
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isTwitterAvailable()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 713
    const/4 v3, 0x4

    aput v3, v2, v0

    .line 714
    add-int/lit8 v0, v0, 0x1

    .line 716
    :cond_3e
    return-object v2
.end method

.method private onNetworkStatusUpdateComplete(IZLjava/lang/String;)V
    .registers 15
    .parameter "network"
    .parameter "success"
    .parameter "errorMessage"

    .prologue
    const v10, 0x7f0903d3

    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x3

    .line 736
    sparse-switch p1, :sswitch_data_150

    .line 748
    :goto_a
    iget v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFB:I

    if-eq v5, v8, :cond_ac

    iget v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFS:I

    if-eq v5, v8, :cond_ac

    iget v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusTW:I

    if-eq v5, v8, :cond_ac

    .line 753
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->removeCurrentDialog()V

    .line 754
    iget v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFB:I

    if-eq v5, v7, :cond_25

    iget v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFS:I

    if-eq v5, v7, :cond_25

    iget v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusTW:I

    if-ne v5, v7, :cond_135

    .line 759
    :cond_25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 762
    .local v0, failedNetworkNames:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->networkTypes()[I

    move-result-object v2

    .line 763
    .local v2, networks:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    array-length v5, v2

    if-ge v1, v5, :cond_5e

    .line 764
    aget v5, v2, v1

    invoke-direct {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->getStatusForNetwork(I)I

    move-result v3

    .line 765
    .local v3, status:I
    if-ne v3, v7, :cond_43

    .line 766
    aget v5, v2, v1

    invoke-direct {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->getNameForNetwork(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 738
    .end local v0           #failedNetworkNames:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #networks:[I
    .end local v3           #status:I
    :sswitch_46
    if-eqz p2, :cond_4c

    move v5, v6

    :goto_49
    iput v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFB:I

    goto :goto_a

    :cond_4c
    move v5, v7

    goto :goto_49

    .line 741
    :sswitch_4e
    if-eqz p2, :cond_54

    move v5, v6

    :goto_51
    iput v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFS:I

    goto :goto_a

    :cond_54
    move v5, v7

    goto :goto_51

    .line 744
    :sswitch_56
    if-eqz p2, :cond_5c

    move v5, v6

    :goto_59
    iput v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusTW:I

    goto :goto_a

    :cond_5c
    move v5, v7

    goto :goto_59

    .line 769
    .restart local v0       #failedNetworkNames:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v1       #i:I
    .restart local v2       #networks:[I
    :cond_5e
    const-string v4, ""

    .line 770
    .local v4, summary:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v5, v8, :cond_ad

    .line 771
    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #summary:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 782
    .restart local v4       #summary:Ljava/lang/String;
    :goto_6c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0903e1

    invoke-virtual {p0, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0903e2

    invoke-virtual {p0, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupErrorMessage:Ljava/lang/String;

    .line 783
    const/16 v5, 0x1f7

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->showDialog(I)V

    .line 792
    .end local v0           #failedNetworkNames:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #networks:[I
    .end local v4           #summary:Ljava/lang/String;
    :cond_ac
    :goto_ac
    return-void

    .line 773
    .restart local v0       #failedNetworkNames:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v1       #i:I
    .restart local v2       #networks:[I
    .restart local v4       #summary:Ljava/lang/String;
    :cond_ad
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v5, v6, :cond_e5

    .line 774
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v10}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6c

    .line 777
    :cond_e5
    const/4 v1, 0x0

    :goto_e6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_10e

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    .line 780
    :cond_10e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v10}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6c

    .line 787
    .end local v0           #failedNetworkNames:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #networks:[I
    .end local v4           #summary:Ljava/lang/String;
    :cond_135
    const-string v5, "social_network_update_mask"

    iget v6, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    invoke-static {v5, v6}, Lcom/vlingo/client/settings/Settings;->setInt(Ljava/lang/String;I)V

    .line 788
    const v5, 0x7f090401

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 789
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->finish()V

    goto/16 :goto_ac

    .line 736
    nop

    :sswitch_data_150
    .sparse-switch
        0x2 -> :sswitch_4e
        0x4 -> :sswitch_56
        0x8 -> :sswitch_46
    .end sparse-switch
.end method

.method private processArguments(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 212
    const/4 v2, -0x1

    .line 213
    .local v2, networkType:I
    const-string v5, "Text"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, text:Ljava/lang/String;
    const-string v5, "NetworkType"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, type:Ljava/lang/String;
    const/4 v1, 0x0

    .line 216
    .local v1, handleUnsupported:Z
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_21

    .line 217
    iget-object v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->statusField:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_21
    if-eqz v4, :cond_3e

    .line 220
    const-string v5, "facebook"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 221
    const/16 v5, 0xd

    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 222
    invoke-direct {p0, v10, v7}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 223
    invoke-direct {p0, v8, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 224
    invoke-direct {p0, v9, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 225
    const/16 v2, 0x8

    .line 274
    :cond_3e
    :goto_3e
    if-eqz v1, :cond_b5

    .line 275
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->handleUnsupportedAction()V

    .line 296
    :cond_43
    :goto_43
    return-void

    .line 227
    :cond_44
    const/4 v1, 0x1

    goto :goto_3e

    .line 230
    :cond_46
    const-string v5, "foursquare"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 231
    const/16 v5, 0xb

    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 232
    invoke-direct {p0, v10, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 233
    invoke-direct {p0, v8, v7}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 234
    invoke-direct {p0, v9, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 235
    const/4 v2, 0x2

    goto :goto_3e

    .line 237
    :cond_61
    const/4 v1, 0x1

    goto :goto_3e

    .line 240
    :cond_63
    const-string v5, "twitter"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 241
    const/16 v5, 0xc

    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 242
    invoke-direct {p0, v10, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 243
    invoke-direct {p0, v8, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 244
    invoke-direct {p0, v9, v7}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 245
    const/4 v2, 0x4

    goto :goto_3e

    .line 247
    :cond_7e
    const/4 v1, 0x1

    goto :goto_3e

    .line 250
    :cond_80
    const-string v5, "all"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, atLeastOneEnabled:Z
    const/16 v5, 0xd

    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 253
    invoke-direct {p0, v10, v7}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 254
    const/4 v0, 0x1

    .line 256
    :cond_95
    const/16 v5, 0xb

    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 257
    invoke-direct {p0, v8, v7}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 258
    const/4 v0, 0x1

    .line 260
    :cond_a1
    const/16 v5, 0xc

    invoke-static {v5}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 261
    invoke-direct {p0, v9, v7}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 262
    const/4 v0, 0x1

    .line 264
    :cond_ad
    if-nez v0, :cond_b3

    .line 265
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->handleUnsupportedAction()V

    goto :goto_43

    .line 268
    :cond_b3
    const/4 v2, 0x0

    goto :goto_3e

    .line 278
    .end local v0           #atLeastOneEnabled:Z
    :cond_b5
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateCharCounter()V

    .line 279
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateShareButtonAndNetworksLabel()V

    .line 282
    if-lez v2, :cond_cc

    .line 284
    invoke-direct {p0, v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkLoggedIn(I)Z

    move-result v5

    if-nez v5, :cond_43

    .line 285
    iput v2, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupLoginAccountType:I

    .line 286
    const/16 v5, 0x1f8

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->showDialog(I)V

    goto/16 :goto_43

    .line 291
    :cond_cc
    iget v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    if-nez v5, :cond_43

    .line 292
    iput v6, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupLoginAccountType:I

    .line 293
    const/16 v5, 0x1f8

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->showDialog(I)V

    goto/16 :goto_43
.end method

.method private removeCurrentDialog()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 526
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->curDialogID:I

    if-eq v0, v1, :cond_c

    .line 527
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->curDialogID:I

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->removeDialog(I)V

    .line 528
    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->curDialogID:I

    .line 530
    :cond_c
    return-void
.end method

.method private setNetworkEnabled(IZ)V
    .registers 5
    .parameter "network"
    .parameter "enabled"

    .prologue
    .line 664
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFoursquareAvailable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 680
    :cond_9
    :goto_9
    return-void

    .line 666
    :cond_a
    const/16 v0, 0x8

    if-ne p1, v0, :cond_14

    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFacebookAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 668
    :cond_14
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1d

    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isTwitterAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 672
    :cond_1d
    if-eqz p2, :cond_34

    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkLoggedIn(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 673
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    .line 674
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->buttonForNetwork(I)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_9

    .line 677
    :cond_34
    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    .line 678
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->buttonForNetwork(I)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_9
.end method

.method private syncNetworkButtons()V
    .registers 5

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->networkTypes()[I

    move-result-object v1

    .line 723
    .local v1, networkTypes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 724
    aget v2, v1, v0

    invoke-direct {p0, v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_21

    aget v2, v1, v0

    invoke-direct {p0, v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkLoggedIn(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 725
    aget v2, v1, v0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 723
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 727
    :cond_21
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    goto :goto_1e

    .line 729
    :cond_28
    return-void
.end method

.method private toggleNetworkEnabled(I)V
    .registers 3
    .parameter "network"

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 684
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 687
    :goto_a
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateCharCounter()V

    .line 688
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateShareButtonAndNetworksLabel()V

    .line 689
    return-void

    .line 686
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    goto :goto_a
.end method

.method private unpackSavedInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 183
    if-eqz p1, :cond_2

    .line 185
    :cond_2
    return-void
.end method

.method private updateCharCounter()V
    .registers 7

    .prologue
    const/4 v4, 0x4

    .line 573
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->statusField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 574
    .local v0, len:I
    const/4 v1, -0x1

    .line 575
    .local v1, lim:I
    invoke-direct {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 576
    const/16 v1, 0x8c

    .line 580
    :cond_14
    :goto_14
    const/4 v3, -0x1

    if-ne v1, v3, :cond_27

    .line 582
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->charCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    :goto_1c
    return-void

    .line 577
    :cond_1d
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 578
    const/16 v1, 0x8c

    goto :goto_14

    .line 586
    :cond_27
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->charCounter:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, limString:Ljava/lang/String;
    if-gt v0, v1, :cond_4c

    .line 589
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->charCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 591
    :cond_4c
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->charCounter:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<font color=\"#f33434\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method

.method private updateNetworkButtonsAndLogins()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    const-string v0, "facebook_account"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFacebookAvailable()Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFB:Z

    .line 312
    const-string v0, "twitter_account"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isTwitterAvailable()Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_22
    iput-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInTW:Z

    .line 313
    const-string v0, "foursquare_account"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFoursquareAvailable()Z

    move-result v0

    if-eqz v0, :cond_3f

    :goto_32
    iput-boolean v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFS:Z

    .line 315
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->syncNetworkButtons()V

    .line 316
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateShareButtonAndNetworksLabel()V

    .line 317
    return-void

    :cond_3b
    move v0, v2

    .line 311
    goto :goto_11

    :cond_3d
    move v0, v2

    .line 312
    goto :goto_22

    :cond_3f
    move v1, v2

    .line 313
    goto :goto_32
.end method

.method private updateShareButtonAndNetworksLabel()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 534
    iget v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    if-nez v3, :cond_4d

    .line 535
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->shareButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 546
    :goto_b
    const/4 v2, 0x0

    .line 547
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 548
    .local v0, enabledSites:I
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 549
    add-int/lit8 v0, v0, 0x1

    .line 550
    const v3, 0x7f09018e

    invoke-virtual {p0, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    :cond_1e
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 553
    add-int/lit8 v0, v0, 0x1

    .line 554
    const v3, 0x7f090190

    invoke-virtual {p0, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 556
    :cond_2e
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 557
    add-int/lit8 v0, v0, 0x1

    .line 558
    const v3, 0x7f090192

    invoke-virtual {p0, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 561
    :cond_3e
    if-nez v0, :cond_65

    .line 562
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networksLabel:Landroid/widget/TextView;

    const v4, 0x7f0903fd

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :goto_4c
    return-void

    .line 538
    .end local v0           #enabledSites:I
    .end local v2           #name:Ljava/lang/String;
    :cond_4d
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->statusField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 539
    .local v1, len:I
    if-lez v1, :cond_5f

    .line 540
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->shareButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_b

    .line 542
    :cond_5f
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->shareButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_b

    .line 564
    .end local v1           #len:I
    .restart local v0       #enabledSites:I
    .restart local v2       #name:Ljava/lang/String;
    :cond_65
    if-ne v0, v5, :cond_6d

    .line 565
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networksLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c

    .line 568
    :cond_6d
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networksLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090400

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c
.end method

.method private updateStatuses()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v5, 0x1f7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 371
    iget v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    if-nez v1, :cond_17

    .line 372
    const v1, 0x7f0903fb

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupErrorMessage:Ljava/lang/String;

    .line 373
    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->showDialog(I)V

    .line 411
    :cond_16
    :goto_16
    return-void

    .line 376
    :cond_17
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->statusField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_30

    .line 377
    const v1, 0x7f0903fc

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupErrorMessage:Ljava/lang/String;

    .line 378
    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->showDialog(I)V

    goto :goto_16

    .line 383
    :cond_30
    invoke-direct {p0, v7}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-direct {p0, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 384
    :cond_3c
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->statusField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x8c

    if-le v1, v2, :cond_57

    .line 385
    const v1, 0x7f090402

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupErrorMessage:Ljava/lang/String;

    .line 386
    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->showDialog(I)V

    goto :goto_16

    .line 391
    :cond_57
    iput v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFB:I

    .line 392
    iput v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFS:I

    .line 393
    iput v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusTW:I

    .line 394
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->statusField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, status:Ljava/lang/String;
    const/16 v1, 0x1f6

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->showDialog(I)V

    .line 396
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 397
    iput v4, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFB:I

    .line 398
    new-instance v1, Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-direct {v1, p0}, Lcom/vlingo/client/social/api/FacebookAPI;-><init>(Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;)V

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    .line 399
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/social/api/FacebookAPI;->updateStatus(Ljava/lang/String;)V

    .line 401
    :cond_82
    invoke-direct {p0, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 402
    iput v4, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusFS:I

    .line 403
    new-instance v1, Lcom/vlingo/client/social/api/FoursquareAPI;

    invoke-direct {v1, p0}, Lcom/vlingo/client/social/api/FoursquareAPI;-><init>(Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;)V

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->foursquareAPI:Lcom/vlingo/client/social/api/FoursquareAPI;

    .line 404
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->foursquareAPI:Lcom/vlingo/client/social/api/FoursquareAPI;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->shout(Ljava/lang/String;)V

    .line 406
    :cond_96
    invoke-direct {p0, v7}, Lcom/vlingo/client/social/SocialUpdateActivity;->isNetworkEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 407
    iput v4, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatusTW:I

    .line 408
    new-instance v1, Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {v1, p0}, Lcom/vlingo/client/social/api/TwitterAPI;-><init>(Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;)V

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    .line 409
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/social/api/TwitterAPI;->updateStatus(Ljava/lang/String;)V

    goto/16 :goto_16
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 337
    if-ne p1, v5, :cond_1f

    .line 338
    const-string v0, "facebook_account"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFB:Z

    .line 339
    iget-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFB:Z

    if-eqz v0, :cond_1b

    .line 340
    invoke-direct {p0, v5, v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    .line 364
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateShareButtonAndNetworksLabel()V

    .line 365
    return-void

    .line 343
    :cond_1b
    invoke-direct {p0, v5, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    goto :goto_17

    .line 346
    :cond_1f
    if-ne p1, v3, :cond_35

    .line 347
    const-string v0, "foursquare_account"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFS:Z

    .line 348
    iget-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInFS:Z

    if-eqz v0, :cond_31

    .line 349
    invoke-direct {p0, v3, v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    goto :goto_17

    .line 352
    :cond_31
    invoke-direct {p0, v3, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    goto :goto_17

    .line 355
    :cond_35
    if-ne p1, v4, :cond_17

    .line 356
    const-string v0, "twitter_account"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInTW:Z

    .line 357
    iget-boolean v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->loggedInTW:Z

    if-eqz v0, :cond_47

    .line 358
    invoke-direct {p0, v4, v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    goto :goto_17

    .line 361
    :cond_47
    invoke-direct {p0, v4, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->setNetworkEnabled(IZ)V

    goto :goto_17
.end method

.method public onCheckinResult(ZLjava/util/Hashtable;)V
    .registers 4
    .parameter "success"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    new-instance v0, Lcom/vlingo/client/social/SocialUpdateActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity$12;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 830
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    .line 98
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->setVolumeControlStream(I)V

    .line 102
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 104
    const v1, 0x7f090140

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    const v1, 0x7f03005c

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->setContentView(I)V

    .line 107
    const v1, 0x7f0f0159

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFB:Landroid/widget/ImageButton;

    .line 108
    const v1, 0x7f0f015b

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFS:Landroid/widget/ImageButton;

    .line 109
    const v1, 0x7f0f015a

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonTW:Landroid/widget/ImageButton;

    .line 111
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFoursquareAvailable()Z

    move-result v1

    if-nez v1, :cond_48

    .line 112
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFS:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 115
    :cond_48
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFacebookAvailable()Z

    move-result v1

    if-nez v1, :cond_53

    .line 116
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFB:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 119
    :cond_53
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isTwitterAvailable()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 120
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonTW:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    :cond_5e
    const v1, 0x7f0f015c

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->shareButton:Landroid/widget/Button;

    .line 124
    const v1, 0x7f0f015e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->charCounter:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f0f0158

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networksLabel:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f0f015d

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->statusField:Landroid/widget/EditText;

    .line 128
    new-instance v0, Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;Lcom/vlingo/client/social/SocialUpdateActivity$1;)V

    .line 129
    .local v0, clickListener:Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFB:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFS:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonTW:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->shareButton:Landroid/widget/Button;

    new-instance v2, Lcom/vlingo/client/social/SocialUpdateActivity$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$1;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->statusField:Landroid/widget/EditText;

    new-instance v2, Lcom/vlingo/client/social/SocialUpdateActivity$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$2;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    const-string v1, "social_network_update_mask"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    .line 151
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFoursquareAvailable()Z

    move-result v1

    if-nez v1, :cond_c8

    .line 152
    iget v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    .line 154
    :cond_c8
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isFacebookAvailable()Z

    move-result v1

    if-nez v1, :cond_d4

    .line 155
    iget v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    .line 157
    :cond_d4
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->isTwitterAvailable()Z

    move-result v1

    if-nez v1, :cond_e0

    .line 158
    iget v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->networkUpdateMask:I

    .line 162
    :cond_e0
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->updateNetworkButtonsAndLogins()V

    .line 165
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->processArguments(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const v6, 0x7f0901f7

    .line 414
    iput p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->curDialogID:I

    .line 415
    packed-switch p1, :pswitch_data_114

    .line 517
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_c
    return-object v1

    .line 417
    :pswitch_d
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 418
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const v4, 0x7f09040a

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    const v4, 0x7f09040c

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 420
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 421
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 422
    new-instance v4, Lcom/vlingo/client/social/SocialUpdateActivity$3;

    invoke-direct {v4, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$3;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_c

    .line 432
    .end local v1           #progressDialog:Landroid/app/ProgressDialog;
    :pswitch_37
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0901f8

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupErrorMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/social/SocialUpdateActivity$5;

    invoke-direct {v6, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$5;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialUpdateActivity$4;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$4;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_c

    .line 450
    :pswitch_68
    const/4 v3, 0x0

    .line 451
    .local v3, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 452
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x1

    .line 453
    .local v2, showLoginButton:Z
    iget v4, p0, Lcom/vlingo/client/social/SocialUpdateActivity;->popupLoginAccountType:I

    sparse-switch v4, :sswitch_data_11e

    .line 467
    const v4, 0x7f0903f0

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 468
    const v4, 0x7f0903f1

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    const/4 v2, 0x0

    .line 473
    :goto_7f
    if-eqz v2, :cond_ea

    .line 474
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0903ea

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/social/SocialUpdateActivity$8;

    invoke-direct {v6, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$8;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090048

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/social/SocialUpdateActivity$7;

    invoke-direct {v6, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$7;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialUpdateActivity$6;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$6;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_c

    .line 455
    :sswitch_bd
    const v4, 0x7f0903ec

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    const v4, 0x7f0903ed

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    goto :goto_7f

    .line 459
    :sswitch_cc
    const v4, 0x7f0903ee

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 460
    const v4, 0x7f0903ef

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    goto :goto_7f

    .line 463
    :sswitch_db
    const v4, 0x7f0903f2

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 464
    const v4, 0x7f0903f3

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    goto :goto_7f

    .line 498
    :cond_ea
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/vlingo/client/social/SocialUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/social/SocialUpdateActivity$10;

    invoke-direct {v6, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$10;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialUpdateActivity$9;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialUpdateActivity$9;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_c

    .line 415
    nop

    :pswitch_data_114
    .packed-switch 0x1f6
        :pswitch_d
        :pswitch_37
        :pswitch_68
    .end packed-switch

    .line 453
    :sswitch_data_11e
    .sparse-switch
        0x2 -> :sswitch_cc
        0x4 -> :sswitch_db
        0x8 -> :sswitch_bd
    .end sparse-switch
.end method

.method public onFacebookAPILogin(Lcom/vlingo/client/social/api/FacebookAPI;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "api"
    .parameter "responseType"
    .parameter "params"

    .prologue
    .line 842
    return-void
.end method

.method public onFacebookAPIMethod(Lcom/vlingo/client/social/api/FacebookAPI;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .parameter "api"
    .parameter "responseType"
    .parameter "method"
    .parameter "params"

    .prologue
    .line 845
    new-instance v0, Lcom/vlingo/client/social/SocialUpdateActivity$13;

    invoke-direct {v0, p0, p4, p2}, Lcom/vlingo/client/social/SocialUpdateActivity$13;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;Landroid/os/Bundle;I)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method public onFollowVlingoComplete(ILjava/lang/String;)V
    .registers 3
    .parameter "result"
    .parameter "errMessage"

    .prologue
    .line 805
    return-void
.end method

.method public onFriendList(ZLjava/util/Hashtable;)V
    .registers 3
    .parameter "success"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    return-void
.end method

.method public onLoginComplete(IZLjava/lang/String;)V
    .registers 4
    .parameter "result"
    .parameter "success"
    .parameter "errMessage"

    .prologue
    .line 816
    return-void
.end method

.method public onLoginResult(ZLjava/util/Hashtable;)V
    .registers 3
    .parameter "success"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 170
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialUpdateActivity;->removeCurrentDialog()V

    .line 171
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity;->processArguments(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public onUpdateComplete(ILjava/lang/String;)V
    .registers 4
    .parameter "result"
    .parameter "errMessage"

    .prologue
    .line 808
    new-instance v0, Lcom/vlingo/client/social/SocialUpdateActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/vlingo/client/social/SocialUpdateActivity$11;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 813
    return-void
.end method

.method public onVenueList(ZLjava/util/Hashtable;)V
    .registers 3
    .parameter "success"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    return-void
.end method

.method public onVerifyComplete(ILjava/lang/String;)V
    .registers 3
    .parameter "result"
    .parameter "errMessage"

    .prologue
    .line 819
    return-void
.end method

.method public onVlingoFriendshipExists(IZLjava/lang/String;)V
    .registers 4
    .parameter "result"
    .parameter "exists"
    .parameter "errMessage"

    .prologue
    .line 822
    return-void
.end method
