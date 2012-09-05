.class public Lcom/vlingo/client/social/SocialAccountActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "SocialAccountActivity.java"

# interfaces
.implements Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
.implements Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
.implements Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;


# static fields
.field public static final SHOW_POPUP_FOLLOW_VLINGO:I = 0xcd

.field public static final SHOW_POPUP_LOGGING_IN:I = 0xcb

.field public static final SHOW_POPUP_LOGGING_IN_FAIL:I = 0xcc

.field public static final SHOW_POPUP_LOGOUT:I = 0xca

.field public static final SHOW_POPUP_PLEASE_WAIT:I = 0xce

.field public static final SHOW_POPUP_TEXT_ENTRY:I = 0xc9

.field public static final TYPE_FACEBOOK:I = 0x8

.field public static final TYPE_FOURSQUARE:I = 0x2

.field public static final TYPE_TWITTER:I = 0x4


# instance fields
.field private volatile curDialogID:I

.field private volatile errorMessage:Ljava/lang/String;

.field private facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

.field private volatile progressDialog:Landroid/app/ProgressDialog;

.field private twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->type:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->curDialogID:I

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vlingo/client/social/SocialAccountActivity;)Lcom/vlingo/client/social/api/TwitterAPI;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vlingo/client/social/SocialAccountActivity;Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vlingo/client/social/SocialAccountActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V

    return-void
.end method

.method private fetchThumbnail()V
    .registers 3

    .prologue
    .line 571
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vlingo/client/social/SocialAccountActivity$23;

    invoke-direct {v1, p0}, Lcom/vlingo/client/social/SocialAccountActivity$23;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 636
    return-void
.end method

.method private haveConnection()Z
    .registers 9

    .prologue
    .line 81
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/vlingo/client/social/SocialAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 82
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 83
    .local v5, ni:[Landroid/net/NetworkInfo;
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_f
    if-ge v2, v3, :cond_42

    aget-object v4, v0, v2

    .line 84
    .local v4, n:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MOBILE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIMAX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 85
    :cond_37
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 86
    const/4 v6, 0x1

    .line 88
    .end local v4           #n:Landroid/net/NetworkInfo;
    :goto_3e
    return v6

    .line 83
    .restart local v4       #n:Landroid/net/NetworkInfo;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 88
    .end local v4           #n:Landroid/net/NetworkInfo;
    :cond_42
    const/4 v6, 0x0

    goto :goto_3e
.end method

.method private removeCurrentDialog()V
    .registers 3

    .prologue
    .line 202
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->curDialogID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 203
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->curDialogID:I

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialAccountActivity;->removeDialog(I)V

    .line 205
    :cond_a
    return-void
.end method


# virtual methods
.method public isFacebook()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFoursquare()Z
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTwitter()Z
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/vlingo/client/ui/VLActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public onCheckinResult(ZLjava/util/Hashtable;)V
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
    .line 425
    .local p2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFacebook()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    if-eqz v0, :cond_13

    .line 142
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/FacebookAPI;->updateDialog()V

    .line 147
    :cond_12
    :goto_12
    return-void

    .line 144
    :cond_13
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    if-eqz v0, :cond_12

    .line 145
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->updateDialog()V

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0xca

    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->type:I

    .line 98
    iget v1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->type:I

    if-nez v1, :cond_1e

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Must specify an Intent.EXTRA_TYPE of either FOURSQUARE (10001), or TWITTER (100002)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1e
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, loggedIn:Z
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 104
    const-string v1, "foursquare_account"

    invoke-static {v1, v3}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    :cond_3b
    :goto_3b
    if-nez v0, :cond_6c

    invoke-direct {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->haveConnection()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 110
    const v1, 0x7f09031f

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;

    .line 111
    const/16 v1, 0xcc

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 137
    .end local v0           #loggedIn:Z
    :cond_51
    :goto_51
    return-void

    .line 105
    .restart local v0       #loggedIn:Z
    :cond_52
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 106
    const-string v1, "twitter_account"

    invoke-static {v1, v3}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_3b

    .line 107
    :cond_5f
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFacebook()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 108
    const-string v1, "facebook_account"

    invoke-static {v1, v3}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_3b

    .line 113
    :cond_6c
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFacebook()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 114
    if-eqz v0, :cond_78

    .line 115
    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_51

    .line 117
    :cond_78
    new-instance v1, Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-direct {v1, p0}, Lcom/vlingo/client/social/api/FacebookAPI;-><init>(Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;)V

    iput-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    .line 118
    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-virtual {v1, p0}, Lcom/vlingo/client/social/api/FacebookAPI;->login(Landroid/content/Context;)V

    goto :goto_51

    .line 121
    :cond_85
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 122
    if-eqz v0, :cond_91

    .line 123
    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_51

    .line 125
    :cond_91
    new-instance v1, Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {v1, p0}, Lcom/vlingo/client/social/api/TwitterAPI;-><init>(Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;)V

    iput-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    .line 126
    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v1, p0}, Lcom/vlingo/client/social/api/TwitterAPI;->startLoginFlow(Landroid/content/Context;)V

    goto :goto_51

    .line 130
    :cond_9e
    if-eqz v0, :cond_a4

    .line 131
    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_51

    .line 133
    :cond_a4
    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_51
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const v9, 0x7f0903fa

    const v8, 0x7f090192

    const v5, 0x7f090190

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 208
    iput p1, p0, Lcom/vlingo/client/social/SocialAccountActivity;->curDialogID:I

    .line 209
    packed-switch p1, :pswitch_data_252

    .line 417
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :goto_14
    return-object v4

    .line 211
    :pswitch_15
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 212
    .local v1, factory:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 213
    .local v2, textEntryView:Landroid/view/View;
    const/high16 v4, 0x7f0f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 214
    .local v3, usernameLabel:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 215
    const v4, 0x7f090403

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_38
    :goto_38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 223
    const v4, 0x7f0903e8

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    :cond_4d
    :goto_4d
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v4, 0x7f0903ea

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/vlingo/client/social/SocialAccountActivity$1;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;Landroid/view/View;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    const v4, 0x7f090048

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$2;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$2;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    new-instance v4, Lcom/vlingo/client/social/SocialAccountActivity$3;

    invoke-direct {v4, p0}, Lcom/vlingo/client/social/SocialAccountActivity$3;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    new-instance v4, Lcom/vlingo/client/social/SocialAccountActivity$4;

    invoke-direct {v4, p0}, Lcom/vlingo/client/social/SocialAccountActivity$4;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_14

    .line 217
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_83
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 218
    const v4, 0x7f0903e7

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 224
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :cond_94
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 225
    const v4, 0x7f090404

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4d

    .line 276
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #textEntryView:Landroid/view/View;
    .end local v3           #usernameLabel:Landroid/widget/TextView;
    :pswitch_a5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 279
    const v4, 0x7f0903f6

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 280
    const v4, 0x7f0903f7

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    :cond_c4
    :goto_c4
    const v4, 0x7f09040e

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$5;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$5;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {p0, v9}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$6;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$6;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    new-instance v4, Lcom/vlingo/client/social/SocialAccountActivity$7;

    invoke-direct {v4, p0}, Lcom/vlingo/client/social/SocialAccountActivity$7;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    new-instance v4, Lcom/vlingo/client/social/SocialAccountActivity$8;

    invoke-direct {v4, p0}, Lcom/vlingo/client/social/SocialAccountActivity$8;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 282
    :cond_f5
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v4

    if-eqz v4, :cond_110

    .line 283
    const v4, 0x7f0903f8

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 284
    const v4, 0x7f0903f9

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_c4

    .line 286
    :cond_110
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFacebook()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 287
    const v4, 0x7f0903f4

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 288
    const v4, 0x7f0903f5

    invoke-virtual {p0, v4}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_c4

    .line 323
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_12b
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 324
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v4

    if-eqz v4, :cond_165

    .line 325
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    :cond_141
    :goto_141
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f09040d

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 330
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 331
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$9;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$9;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 339
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_14

    .line 326
    :cond_165
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v4

    if-eqz v4, :cond_141

    .line 327
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v8}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_141

    .line 341
    :pswitch_175
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 342
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v4

    if-eqz v4, :cond_1af

    .line 343
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    :cond_18b
    :goto_18b
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f090387

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 348
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 349
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$10;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$10;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 357
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_14

    .line 344
    :cond_1af
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v4

    if-eqz v4, :cond_18b

    .line 345
    iget-object v4, p0, Lcom/vlingo/client/social/SocialAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v8}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_18b

    .line 359
    :pswitch_1bf
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0901f8

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0901f7

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/social/SocialAccountActivity$13;

    invoke-direct {v6, p0}, Lcom/vlingo/client/social/SocialAccountActivity$13;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$12;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$12;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$11;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$11;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 383
    :pswitch_1fd
    const-string v4, "twitter_prompted_follow_vlingo"

    invoke-static {v4, v6}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 385
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0903e5

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0903e6

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09040e

    invoke-virtual {p0, v5}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/social/SocialAccountActivity$17;

    invoke-direct {v6, p0}, Lcom/vlingo/client/social/SocialAccountActivity$17;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/social/SocialAccountActivity$16;

    invoke-direct {v6, p0}, Lcom/vlingo/client/social/SocialAccountActivity$16;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$15;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$15;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/social/SocialAccountActivity$14;

    invoke-direct {v5, p0}, Lcom/vlingo/client/social/SocialAccountActivity$14;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 209
    :pswitch_data_252
    .packed-switch 0xc9
        :pswitch_15
        :pswitch_a5
        :pswitch_12b
        :pswitch_1bf
        :pswitch_1fd
        :pswitch_175
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    if-eqz v0, :cond_c

    .line 197
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->shutdown()V

    .line 199
    :cond_c
    return-void
.end method

.method public onFacebookAPILogin(Lcom/vlingo/client/social/api/FacebookAPI;ILandroid/os/Bundle;)V
    .registers 5
    .parameter "api"
    .parameter "responseType"
    .parameter "params"

    .prologue
    .line 639
    new-instance v0, Lcom/vlingo/client/social/SocialAccountActivity$24;

    invoke-direct {v0, p0, p2, p1}, Lcom/vlingo/client/social/SocialAccountActivity$24;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;ILcom/vlingo/client/social/api/FacebookAPI;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 662
    return-void
.end method

.method public onFacebookAPIMethod(Lcom/vlingo/client/social/api/FacebookAPI;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .parameter "api"
    .parameter "responseType"
    .parameter "method"
    .parameter "params"

    .prologue
    .line 665
    new-instance v0, Lcom/vlingo/client/social/SocialAccountActivity$25;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/vlingo/client/social/SocialAccountActivity$25;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method public onFollowVlingoComplete(ILjava/lang/String;)V
    .registers 4
    .parameter "result"
    .parameter "errMessage"

    .prologue
    .line 460
    new-instance v0, Lcom/vlingo/client/social/SocialAccountActivity$19;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/social/SocialAccountActivity$19;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
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
    .line 449
    .local p2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    return-void
.end method

.method public onLoginComplete(IZLjava/lang/String;)V
    .registers 5
    .parameter "result"
    .parameter "success"
    .parameter "errMessage"

    .prologue
    .line 516
    new-instance v0, Lcom/vlingo/client/social/SocialAccountActivity$21;

    invoke-direct {v0, p0, p1, p3}, Lcom/vlingo/client/social/SocialAccountActivity$21;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method public onLoginResult(ZLjava/util/Hashtable;)V
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
    .line 428
    .local p2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    new-instance v0, Lcom/vlingo/client/social/SocialAccountActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/social/SocialAccountActivity$18;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 446
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/FacebookAPI;->dismissDialogs()V

    .line 154
    :cond_9
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    if-eqz v0, :cond_12

    .line 155
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->dismissDialogs()V

    .line 157
    :cond_12
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onPause()V

    .line 158
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/16 v2, 0xca

    const/4 v1, 0x0

    .line 161
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onResume()V

    .line 162
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFacebook()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 163
    const-string v0, "facebook_account"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 164
    invoke-virtual {p0, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 174
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 175
    const-string v0, "twitter_account"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 176
    invoke-virtual {p0, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 185
    :cond_28
    :goto_28
    return-void

    .line 168
    :cond_29
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    if-eqz v0, :cond_17

    .line 169
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/FacebookAPI;->showDialogs()V

    .line 170
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->facebookAPI:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/FacebookAPI;->updateDialog()V

    goto :goto_17

    .line 179
    :cond_38
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    if-eqz v0, :cond_28

    .line 180
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->showDialogs()V

    .line 181
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->updateDialog()V

    goto :goto_28
.end method

.method public onUpdateComplete(ILjava/lang/String;)V
    .registers 3
    .parameter "result"
    .parameter "errMessage"

    .prologue
    .line 484
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
    .line 452
    .local p2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    return-void
.end method

.method public onVerifyComplete(ILjava/lang/String;)V
    .registers 4
    .parameter "result"
    .parameter "errMessage"

    .prologue
    .line 487
    new-instance v0, Lcom/vlingo/client/social/SocialAccountActivity$20;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/social/SocialAccountActivity$20;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method

.method public onVlingoFriendshipExists(IZLjava/lang/String;)V
    .registers 5
    .parameter "result"
    .parameter "exists"
    .parameter "errMessage"

    .prologue
    .line 542
    new-instance v0, Lcom/vlingo/client/social/SocialAccountActivity$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/vlingo/client/social/SocialAccountActivity$22;-><init>(Lcom/vlingo/client/social/SocialAccountActivity;IZ)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/social/SocialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    return-void
.end method
