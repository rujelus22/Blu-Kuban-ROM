.class public Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
.super Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;
.source "UrlGatewayLoaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$VanityUrlLoader;
    }
.end annotation


# instance fields
.field private final mDesktopActivityIdLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$1;-><init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mDesktopActivityIdLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 68
    new-instance v0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity$2;-><init>(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getContext()Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onDesktopActivityIdResolved()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->onProfileLoaded()V

    return-void
.end method

.method private getContext()Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;
    .registers 1

    .prologue
    .line 164
    return-object p0
.end method

.method private onDesktopActivityIdResolved()V
    .registers 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 153
    .local v0, loaderManager:Landroid/support/v4/app/LoaderManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 154
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mActivityId:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->isReadyToRedirect()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 156
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->redirect()V

    .line 161
    :cond_15
    :goto_15
    return-void

    .line 159
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->redirectToBrowser()V

    goto :goto_15
.end method

.method private onProfileLoaded()V
    .registers 5

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 135
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileIdValidated:Z

    if-eqz v0, :cond_26

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mDesktopActivityId:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mDesktopActivityIdLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 149
    :cond_1b
    :goto_1b
    return-void

    .line 143
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->isReadyToRedirect()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->redirect()V

    goto :goto_1b

    .line 147
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->redirectToBrowser()V

    goto :goto_1b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 131
    :cond_b
    :goto_b
    return-void

    .line 114
    :cond_c
    const v1, 0x7f0300eb

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->setContentView(I)V

    .line 116
    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 119
    .local v0, loaderManager:Landroid/support/v4/app/LoaderManager;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mDesktopActivityId:Ljava/lang/String;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mActivityId:Ljava/lang/String;

    if-nez v1, :cond_47

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mGaiaId:Ljava/lang/String;

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileId:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_b

    .line 124
    :cond_3c
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileId:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mGaiaId:Ljava/lang/String;

    .line 125
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mDesktopActivityIdLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_b

    .line 128
    :cond_47
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileId:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mProfileLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_10

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 185
    const/4 v0, 0x1

    .line 188
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
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 197
    return-void
.end method

.method protected redirect(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 172
    const/high16 v0, 0x201

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->finish()V

    .line 175
    invoke-virtual {p0, v1, v1}, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;->overridePendingTransition(II)V

    .line 176
    return-void
.end method
