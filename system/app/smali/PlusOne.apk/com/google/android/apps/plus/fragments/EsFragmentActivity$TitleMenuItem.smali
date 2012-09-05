.class Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;
.super Ljava/lang/Object;
.source "EsFragmentActivity.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleMenuItem"
.end annotation


# instance fields
.field private mActionEnum:I

.field private mEnabled:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mItemId:I

.field private final mResources:Landroid/content/res/Resources;

.field private mTitle:Ljava/lang/CharSequence;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .parameter "context"
    .parameter "itemId"
    .parameter "titleRes"

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mResources:Landroid/content/res/Resources;

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 288
    iput p2, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mItemId:I

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .registers 5
    .parameter "context"
    .parameter "itemId"
    .parameter "title"

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mResources:Landroid/content/res/Resources;

    .line 300
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 301
    iput p2, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mItemId:I

    .line 302
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .prologue
    .line 605
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mItemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mVisible:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3
    .parameter "actionProvider"

    .prologue
    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 2
    .parameter "resId"

    .prologue
    .line 453
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2
    .parameter "view"

    .prologue
    .line 445
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .parameter "alphaChar"

    .prologue
    .line 461
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter "checkable"

    .prologue
    .line 469
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter "checked"

    .prologue
    .line 477
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter "enabled"

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mEnabled:Z

    .line 486
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "iconRes"

    .prologue
    .line 503
    if-eqz p1, :cond_a

    .line 504
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 506
    :cond_a
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 2
    .parameter "icon"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 495
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2
    .parameter "intent"

    .prologue
    .line 514
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .parameter "numericChar"

    .prologue
    .line 522
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3
    .parameter "listener"

    .prologue
    .line 637
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2
    .parameter "menuItemClickListener"

    .prologue
    .line 530
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 538
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2
    .parameter "actionEnum"

    .prologue
    .line 546
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mActionEnum:I

    .line 547
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "actionEnum"

    .prologue
    .line 589
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "title"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 564
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .parameter "title"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 555
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .parameter "title"

    .prologue
    .line 572
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter "visible"

    .prologue
    .line 580
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;->mVisible:Z

    .line 581
    return-object p0
.end method
