.class public Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
.super Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;
.source "UrlGatewayLoaderActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onPublicIdResolved()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onDesktopActivityIdResolved()V

    return-void
.end method

.method private getLogo()I
    .registers 3

    .prologue
    const v0, 0x7f020087

    .line 70
    iget v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mRequestType:I

    packed-switch v1, :pswitch_data_1e

    .line 105
    :goto_8
    :pswitch_8
    return v0

    .line 73
    :pswitch_9
    const v0, 0x7f02011c

    goto :goto_8

    .line 79
    :pswitch_d
    const v0, 0x7f02007e

    goto :goto_8

    .line 91
    :pswitch_11
    const v0, 0x7f02008f

    goto :goto_8

    .line 95
    :pswitch_15
    const v0, 0x7f0200a3

    goto :goto_8

    .line 102
    :pswitch_19
    const v0, 0x7f020093

    goto :goto_8

    .line 70
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_15
        :pswitch_11
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_d
        :pswitch_15
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_19
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private onDesktopActivityIdResolved()V
    .registers 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 185
    .local v0, loaderManager:Landroid/support/v4/app/LoaderManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mActivityId:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->isReadyToRedirect()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->redirect()V

    .line 193
    :cond_15
    :goto_15
    return-void

    .line 191
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->redirectToBrowser()V

    goto :goto_15
.end method

.method private onPublicIdResolved()V
    .registers 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 173
    .local v0, loaderManager:Landroid/support/v4/app/LoaderManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 174
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mPersonId:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 175
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->isReadyToRedirect()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->redirect()V

    .line 181
    :cond_15
    :goto_15
    return-void

    .line 179
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->redirectToBrowser()V

    goto :goto_15
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 67
    :cond_c
    :goto_c
    return-void

    .line 43
    :cond_d
    const v2, 0x7f0300ab

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->setContentView(I)V

    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_4a

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2d

    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getLogo()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(I)V

    .line 52
    :cond_2d
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_30
    const v2, 0x7f0d0071

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    .line 62
    .local v1, loaderManager:Landroid/support/v4/app/LoaderManager;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mDesktopActivityId:Ljava/lang/String;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mActivityId:Ljava/lang/String;

    if-nez v2, :cond_55

    .line 63
    invoke-virtual {v1, v5, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_c

    .line 55
    .end local v1           #loaderManager:Landroid/support/v4/app/LoaderManager;
    :cond_4a
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->showTitlebar(Z)V

    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getLogo()I

    move-result v2

    invoke-virtual {p0, v2, v4}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->setTitlebarTitle(ILjava/lang/String;)V

    goto :goto_30

    .line 64
    .restart local v1       #loaderManager:Landroid/support/v4/app/LoaderManager;
    :cond_55
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mPublicId:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mPersonId:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 65
    invoke-virtual {v1, v6, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_c
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 6
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
    .line 113
    packed-switch p1, :pswitch_data_1a

    .line 122
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 115
    :pswitch_5
    new-instance v0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mPublicId:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/fragments/PublicIdLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_4

    .line 118
    :pswitch_f
    new-instance v0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mDesktopActivityId:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_4

    .line 113
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_f
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
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
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_52

    .line 161
    :goto_8
    return-void

    .line 132
    :pswitch_9
    if-eqz p2, :cond_28

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 133
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mPersonId:Ljava/lang/String;

    .line 134
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mName:Ljava/lang/String;

    .line 135
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    :cond_26
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mInCircles:Z

    .line 137
    :cond_28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;-><init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 148
    :pswitch_36
    if-eqz p2, :cond_44

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 149
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mActivityId:Ljava/lang/String;

    .line 151
    :cond_44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;-><init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 130
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_9
        :pswitch_36
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 169
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_10

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 214
    const/4 v0, 0x1

    .line 217
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_f
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 226
    return-void
.end method

.method protected redirect(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 201
    const/high16 v0, 0x201

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->finish()V

    .line 204
    invoke-virtual {p0, v1, v1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->overridePendingTransition(II)V

    .line 205
    return-void
.end method
