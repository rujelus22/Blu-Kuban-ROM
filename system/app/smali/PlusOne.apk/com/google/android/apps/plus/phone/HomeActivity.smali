.class public Lcom/google/android/apps/plus/phone/HomeActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;"
    }
.end annotation


# static fields
.field private static final PRIVACY:Landroid/net/Uri;

.field private static final TERMS:Landroid/net/Uri;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

.field private mIsCreated:Z

.field private mIsResumed:Z

.field private mNotificationsCount:J

.field private mOobAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "http://m.google.com/app/plus/serviceurl?type=tos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/HomeActivity;->TERMS:Landroid/net/Uri;

    .line 54
    const-string v0, "http://m.google.com/app/plus/serviceurl?type=privacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/HomeActivity;->PRIVACY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private isContactsSyncPreferenceNeeded()Z
    .registers 3

    .prologue
    .line 659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncPreferenceSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 485
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mIsResumed:Z

    if-eqz v1, :cond_12

    .line 486
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eq v1, p1, :cond_12

    .line 487
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 490
    :cond_12
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 492
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 494
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->updateMenu()V

    .line 497
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 498
    .local v0, loaderMgr:Landroid/support/v4/app/LoaderManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 500
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 501
    return-void
.end method

.method private startGamesActivity()V
    .registers 6

    .prologue
    .line 435
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->getGamesIntent()Landroid/content/Intent;

    move-result-object v2

    .line 437
    .local v2, intent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_9} :catch_a

    .line 451
    :goto_9
    return-void

    .line 438
    :catch_a
    move-exception v0

    .line 440
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    const-string v4, "bazaar://search?q=pname:com.google.android.apps.oneup"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 443
    .restart local v2       #intent:Landroid/content/Intent;
    :try_start_18
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_9

    .line 444
    :catch_1c
    move-exception v1

    .line 446
    .local v1, e2:Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://go.ext.google.com/getbazaar"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 448
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private switchAccounts()V
    .registers 4

    .prologue
    .line 468
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_11

    .line 469
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 470
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/service/EsService;->removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 471
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 474
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 475
    .local v0, startIntent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->finish()V

    .line 477
    return-void
.end method

.method private updateMenu()V
    .registers 3

    .prologue
    .line 647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_d

    .line 648
    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->createTitlebarButtons(I)V

    .line 652
    :goto_c
    return-void

    .line 650
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->invalidateOptionsMenu()V

    goto :goto_c
.end method

.method private updateNotificationsMenuItem(Landroid/view/MenuItem;)V
    .registers 16
    .parameter "menuItem"

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 600
    .local v6, resources:Landroid/content/res/Resources;
    iget-wide v9, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsCount:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_47

    .line 601
    iget-wide v9, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsCount:J

    const-wide/16 v11, 0x9

    cmp-long v9, v9, v11

    if-lez v9, :cond_33

    .line 602
    const v9, 0x7f07021d

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/phone/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, notificationsCountText:Ljava/lang/String;
    :goto_1b
    const v9, 0x7f0200e9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 616
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    :goto_22
    const v9, 0x7f0c0002

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    .line 617
    .local v1, bitmapSize:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 618
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_56

    .line 641
    :goto_32
    return-void

    .line 604
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapSize:I
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #notificationsCountText:Ljava/lang/String;
    :cond_33
    const v9, 0x7f07021e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/google/android/apps/plus/phone/HomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #notificationsCountText:Ljava/lang/String;
    goto :goto_1b

    .line 610
    .end local v4           #notificationsCountText:Ljava/lang/String;
    :cond_47
    const v9, 0x7f0200ea

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 612
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    const v9, 0x7f07021c

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/phone/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #notificationsCountText:Ljava/lang/String;
    goto :goto_22

    .line 622
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmapSize:I
    :cond_56
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 623
    .local v5, notificationsPaint:Landroid/text/TextPaint;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 624
    const/high16 v9, 0x7f09

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 625
    const v9, 0x7f0c004b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 627
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 629
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v7, v9

    .line 630
    .local v7, textWidth:I
    const v9, 0x7f0c0003

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    .line 632
    .local v8, verticalOffset:I
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 633
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 634
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 635
    sub-int v9, v1, v7

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    int-to-float v10, v1

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    int-to-float v11, v8

    sub-float/2addr v10, v11

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v2, v4, v9, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 639
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 640
    const v9, 0x7f070060

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/google/android/apps/plus/phone/HomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_32
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 676
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->HOME:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "startIntent"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_2a

    .line 189
    :cond_3
    :goto_3
    return-void

    .line 159
    :pswitch_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mOobAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 160
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1a

    .line 161
    if-eqz p3, :cond_13

    .line 162
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->finish()V

    goto :goto_3

    .line 166
    :cond_13
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;

    goto :goto_3

    .line 169
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->switchAccounts()V

    goto :goto_3

    .line 175
    :pswitch_1e
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mIsCreated:Z

    if-eqz v0, :cond_3

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsCount:J

    .line 180
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->updateMenu()V

    goto :goto_3

    .line 157
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1e
    .end packed-switch
.end method

.method public onAvatarChanged(J)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUnsafeUserId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->refreshProfilePhoto()V

    .line 262
    :cond_17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iput-boolean v9, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mIsCreated:Z

    .line 87
    iput-boolean v8, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mIsResumed:Z

    .line 88
    const v6, 0x7f030036

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/HomeActivity;->setContentView(I)V

    .line 90
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_2b

    .line 92
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/HomeActivity;->showTitlebar(Z)V

    .line 94
    const v6, 0x7f020087

    const v7, 0x7f070033

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/phone/HomeActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 97
    const v6, 0x7f100010

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/HomeActivity;->createTitlebarButtons(I)V

    .line 101
    :cond_2b
    const v6, 0x7f0d00c9

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 102
    .local v1, gridView:Landroid/widget/GridView;
    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v6, Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    .line 104
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    invoke-virtual {v1, v8}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 108
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 110
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_a8

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 113
    .local v2, myIntent:Landroid/content/Intent;
    if-nez p1, :cond_86

    const-string v6, "run_oob"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 115
    const-string v6, "intent"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 118
    .local v5, startIntent:Landroid/content/Intent;
    const-string v6, "network_oob"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 120
    .local v4, oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    if-eqz v4, :cond_78

    .line 121
    invoke-static {p0, v0, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getOutOfBoxActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 127
    .local v3, nextIntent:Landroid/content/Intent;
    :goto_70
    if-eqz v3, :cond_7d

    .line 128
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mOobAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 129
    invoke-virtual {p0, v3, v9}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    .end local v2           #myIntent:Landroid/content/Intent;
    .end local v3           #nextIntent:Landroid/content/Intent;
    .end local v4           #oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .end local v5           #startIntent:Landroid/content/Intent;
    :cond_77
    :goto_77
    return-void

    .line 124
    .restart local v2       #myIntent:Landroid/content/Intent;
    .restart local v4       #oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .restart local v5       #startIntent:Landroid/content/Intent;
    :cond_78
    invoke-static {p0, v8, v0, v5}, Lcom/google/android/apps/plus/oob/OobUtils;->getNextIntent(Landroid/content/Context;ILcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #nextIntent:Landroid/content/Intent;
    goto :goto_70

    .line 130
    :cond_7d
    if-eqz v5, :cond_77

    .line 131
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->finish()V

    goto :goto_77

    .line 134
    .end local v3           #nextIntent:Landroid/content/Intent;
    .end local v4           #oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .end local v5           #startIntent:Landroid/content/Intent;
    :cond_86
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v6

    if-nez v6, :cond_90

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->switchAccounts()V

    goto :goto_77

    .line 137
    :cond_90
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 139
    if-nez p1, :cond_9a

    .line 140
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->LAUNCH:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/HomeActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 143
    :cond_9a
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->isContactsSyncPreferenceNeeded()Z

    move-result v6

    if-eqz v6, :cond_77

    .line 144
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getContactsSyncConfigActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_77

    .line 148
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_a8
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->switchAccounts()V

    goto :goto_77
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 16
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
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 508
    packed-switch p1, :pswitch_data_56

    move-object v5, v4

    .line 534
    :goto_7
    return-object v5

    .line 510
    :pswitch_8
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_NOTIFICATION_COUNT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 512
    .local v2, queryUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    new-array v3, v3, [Ljava/lang/String;

    const-string v1, "_count"

    aput-object v1, v3, v6

    sget-object v7, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_URI:Landroid/net/Uri;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    move-object v5, v0

    goto :goto_7

    .line 517
    .end local v2           #queryUri:Landroid/net/Uri;
    :pswitch_22
    new-instance v5, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/String;

    const-string v0, "unread_count"

    aput-object v0, v8, v6

    const-string v9, "unread_count!=0 AND is_muted=0 AND is_visible=1"

    move-object v6, p0

    move-object v10, v4

    move-object v11, v4

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_7

    .line 527
    :pswitch_3c
    new-instance v5, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v8, v6

    const-string v9, "read==0"

    move-object v6, p0

    move-object v10, v4

    move-object v11, v4

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_7

    .line 508
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_8
        :pswitch_22
        :pswitch_3c
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 386
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v0, :cond_5

    .line 431
    :goto_4
    return-void

    .line 390
    :cond_5
    packed-switch p3, :pswitch_data_5c

    goto :goto_4

    .line 392
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 397
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/ConversationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 405
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v0

    .line 406
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosHomeIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 411
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    .line 412
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 418
    :pswitch_4d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getCirclesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 423
    :pswitch_57
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->startGamesActivity()V

    goto :goto_4

    .line 390
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_13
        :pswitch_2a
        :pswitch_3a
        :pswitch_4d
        :pswitch_57
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
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
    .line 544
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 582
    :goto_7
    return-void

    .line 546
    :pswitch_8
    const/4 v0, 0x0

    .line 547
    .local v0, count:Ljava/lang/Long;
    if-eqz p2, :cond_1a

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 548
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 550
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->setPhotoNotificationCount(Ljava/lang/Long;)V

    goto :goto_7

    .line 555
    .end local v0           #count:Ljava/lang/Long;
    :pswitch_20
    const/4 v0, 0x0

    .line 556
    .restart local v0       #count:Ljava/lang/Long;
    if-eqz p2, :cond_32

    .line 558
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_32

    .line 559
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 563
    :cond_32
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->setHuddleUnreadCount(Ljava/lang/Long;)V

    goto :goto_7

    .line 568
    .end local v0           #count:Ljava/lang/Long;
    :pswitch_38
    if-eqz p2, :cond_45

    .line 569
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsCount:J

    .line 573
    :goto_41
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->updateMenu()V

    goto :goto_7

    .line 571
    :cond_45
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mNotificationsCount:J

    goto :goto_41

    .line 544
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_20
        :pswitch_38
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/HomeActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 589
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_22

    .line 198
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 199
    .local v0, intentAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 205
    .end local v0           #intentAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_21
    :goto_21
    return-void

    .line 203
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->finish()V

    goto :goto_21
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_a6

    .line 376
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 321
    :sswitch_b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->onSearchRequested()Z

    move-result v2

    goto :goto_a

    .line 325
    :sswitch_10
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {p0, v4, v2}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 326
    goto :goto_a

    .line 330
    :sswitch_1d
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v3

    .line 332
    goto :goto_a

    .line 336
    :sswitch_29
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 337
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 338
    goto :goto_a

    .line 342
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_34
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 343
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    move v2, v3

    .line 344
    goto :goto_a

    .line 348
    :sswitch_3e
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_SIGNOUT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/HomeActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 349
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v4}, Lcom/google/android/apps/plus/service/EsService;->removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 350
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v4, :cond_51

    .line 351
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 353
    :cond_51
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "intent"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 355
    .local v1, startIntent:Landroid/content/Intent;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 356
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->finish()V

    move v2, v3

    .line 357
    goto :goto_a

    .line 361
    .end local v1           #startIntent:Landroid/content/Intent;
    :sswitch_6b
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_HELP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 362
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "plus_home"

    invoke-static {p0, v5}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 364
    goto :goto_a

    .line 367
    :sswitch_82
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    sget-object v5, Lcom/google/android/apps/plus/phone/HomeActivity;->PRIVACY:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 368
    goto/16 :goto_a

    .line 371
    :sswitch_91
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_TOS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 372
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    sget-object v5, Lcom/google/android/apps/plus/phone/HomeActivity;->TERMS:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 373
    goto/16 :goto_a

    .line 319
    nop

    :sswitch_data_a6
    .sparse-switch
        0x7f0d01b3 -> :sswitch_b
        0x7f0d01b5 -> :sswitch_29
        0x7f0d01b6 -> :sswitch_34
        0x7f0d01b7 -> :sswitch_6b
        0x7f0d01db -> :sswitch_10
        0x7f0d01dc -> :sswitch_1d
        0x7f0d01dd -> :sswitch_3e
        0x7f0d01de -> :sswitch_82
        0x7f0d01df -> :sswitch_91
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mIsResumed:Z

    .line 248
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_16

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 252
    :cond_16
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const v3, 0x7f0d01dc

    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v1, :cond_9

    .line 290
    :goto_8
    return v0

    .line 282
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2c

    .line 283
    const v1, 0x7f0d01b3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 284
    const v1, 0x7f0d01db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    :goto_2a
    const/4 v0, 0x1

    goto :goto_8

    .line 287
    :cond_2c
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->updateNotificationsMenuItem(Landroid/view/MenuItem;)V

    goto :goto_2a
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 299
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 302
    :cond_13
    const v2, 0x7f0d01b3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    const v2, 0x7f0d01db

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v2, :cond_2c

    .line 312
    :goto_2b
    return-void

    .line 309
    :cond_2c
    const v2, 0x7f0d01dc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 310
    .local v1, notifMenuItem:Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/HomeActivity;->updateNotificationsMenuItem(Landroid/view/MenuItem;)V

    goto :goto_2b
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_10

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 219
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v0, :cond_1f

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mOobAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v0, :cond_1c

    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->switchAccounts()V

    .line 239
    :cond_1b
    :goto_1b
    return-void

    .line 224
    :cond_1c
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mIsResumed:Z

    goto :goto_1b

    .line 226
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->isIntentAccountActive(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 227
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mIsResumed:Z

    .line 228
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    if-eqz v0, :cond_1b

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mGridAdapter:Lcom/google/android/apps/plus/phone/HomeGridAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->refreshProfilePhoto()V

    goto :goto_1b

    .line 237
    :cond_3f
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HomeActivity;->switchAccounts()V

    goto :goto_1b
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    .line 458
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v2, "posts"

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 461
    const/4 v1, 0x1

    return v1
.end method
