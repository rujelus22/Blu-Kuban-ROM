.class public Lcom/sprint/w/installer/ManagePacksActivity;
.super Landroid/app/Activity;
.source "ManagePacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;,
        Lcom/sprint/w/installer/ManagePacksActivity$PackItemView;,
        Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItemView;,
        Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;,
        Lcom/sprint/w/installer/ManagePacksActivity$PackItem;,
        Lcom/sprint/w/installer/ManagePacksActivity$Listable;
    }
.end annotation


# static fields
.field static final REQUEST_BROWSE_PACKS:I = 0x1

.field static final REQUEST_SHOW_PACK_DETAILS:I = 0x3

.field static final REQUEST_UNINSTALL_CONTENT:I = 0x2


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field mAdapter:Lcom/sprint/w/installer/ManagePacksActivity$LandingAdapter;

.field mInstalledPack:Lcom/sprint/w/installer/PackInfo;

.field mInstalledPackId:Ljava/lang/String;

.field final mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field mLayoutManager:Lcom/sprint/w/installer/LayoutManager;

.field mLimitReached:Z

.field mListItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/w/installer/ManagePacksActivity$Listable;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mLock:Ljava/lang/Object;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mWidgetCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-class v0, Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity;->log:Lcom/sprint/id/logger/Logger;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/sprint/w/installer/ManagePacksActivity$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/ManagePacksActivity$3;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;)V

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mWidgetCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/ManagePacksActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprint/w/installer/ManagePacksActivity;->findDistinctPacks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/ManagePacksActivity;Ljava/util/Vector;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ManagePacksActivity;->updateListView(Ljava/util/Vector;)V

    return-void
.end method

.method private findDistinctPacks()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/ManagePacksActivity$PackItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 155
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/ManagePacksActivity$PackItem;>;"
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "packId"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "packName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "packVersion"

    aput-object v1, v2, v0

    .line 159
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/w/installer/ManagePacksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const-string v5, "packName"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 161
    .local v9, cur:Landroid/database/Cursor;
    :try_start_25
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 162
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 163
    .local v10, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "packId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, colPackId:I
    const-string v0, "packName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 165
    .local v7, colPackName:I
    const-string v0, "packVersion"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 167
    .local v8, colPackVersion:I
    :cond_42
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, packId:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 169
    new-instance v13, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, p0, v12, v0, v1}, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v13, pi:Lcom/sprint/w/installer/ManagePacksActivity$PackItem;
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mInstalledPackId:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 171
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    :goto_65
    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v13           #pi:Lcom/sprint/w/installer/ManagePacksActivity$PackItem;
    :cond_68
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6b
    .catchall {:try_start_25 .. :try_end_6b} :catchall_76

    move-result v0

    if-nez v0, :cond_42

    .line 180
    .end local v6           #colPackId:I
    .end local v7           #colPackName:I
    .end local v8           #colPackVersion:I
    .end local v10           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12           #packId:Ljava/lang/String;
    :cond_6e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 182
    return-object v11

    .line 173
    .restart local v6       #colPackId:I
    .restart local v7       #colPackName:I
    .restart local v8       #colPackVersion:I
    .restart local v10       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12       #packId:Ljava/lang/String;
    .restart local v13       #pi:Lcom/sprint/w/installer/ManagePacksActivity$PackItem;
    :cond_72
    :try_start_72
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_65

    .line 180
    .end local v6           #colPackId:I
    .end local v7           #colPackName:I
    .end local v8           #colPackVersion:I
    .end local v10           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12           #packId:Ljava/lang/String;
    .end local v13           #pi:Lcom/sprint/w/installer/ManagePacksActivity$PackItem;
    :catchall_76
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 60
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0600d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    new-instance v0, Lcom/sprint/w/installer/LayoutManager;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/LayoutManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mLayoutManager:Lcom/sprint/w/installer/LayoutManager;

    .line 63
    return-void
.end method

.method private loadContent()V
    .registers 4

    .prologue
    .line 105
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    .line 106
    iget-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    if-eqz v2, :cond_10

    .line 107
    iget-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    iput-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity;->mInstalledPackId:Ljava/lang/String;

    .line 109
    :cond_10
    move-object v0, p0

    .line 110
    .local v0, c:Landroid/content/Context;
    new-instance v1, Lcom/sprint/w/installer/ManagePacksActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity$1;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;Landroid/content/Context;)V

    .line 129
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method

.method private updateListView(Ljava/util/Vector;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/w/installer/ManagePacksActivity$Listable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, list:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/sprint/w/installer/ManagePacksActivity$Listable;>;"
    new-instance v0, Lcom/sprint/w/installer/ManagePacksActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/sprint/w/installer/ManagePacksActivity$2;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;Ljava/util/Vector;)V

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/ManagePacksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 73
    if-eq p2, v1, :cond_6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 85
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/ManagePacksActivity;->setResult(I)V

    .line 86
    invoke-direct {p0}, Lcom/sprint/w/installer/ManagePacksActivity;->loadContent()V

    .line 91
    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    invoke-direct {p0}, Lcom/sprint/w/installer/ManagePacksActivity;->init()V

    .line 69
    invoke-virtual {p0}, Lcom/sprint/w/installer/ManagePacksActivity;->onResume()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/sprint/w/installer/ManagePacksActivity;->init()V

    .line 57
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 407
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const v5, 0x7f0c0096

    const/4 v4, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/sprint/w/installer/ManagePacksActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 373
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 376
    :try_start_16
    new-instance v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    invoke-virtual {v0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isDeveloperModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 378
    const v2, 0x7f0c0096

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2c} :catch_2d

    .line 383
    .end local v0           #dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    :cond_2c
    :goto_2c
    return v4

    .line 380
    :catch_2d
    move-exception v1

    .line 381
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Error loading ADP dev mode"

    invoke-virtual {v2, v3, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 388
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_2e

    .line 403
    :goto_7
    const/4 v3, 0x1

    return v3

    .line 390
    :pswitch_9
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v2, i2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/ManagePacksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 395
    .end local v2           #i2:Landroid/content/Intent;
    :pswitch_14
    :try_start_14
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sprint/w/installer/UpdaterClient;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.sprint.w.installer.ACTION_INTERACTIVE_UPDATE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/ManagePacksActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_23} :catch_24

    goto :goto_7

    .line 398
    .end local v1           #i:Landroid/content/Intent;
    :catch_24
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/sprint/w/installer/ManagePacksActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Error starting Updater"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 388
    nop

    :pswitch_data_2e
    .packed-switch 0x7f0c0095
        :pswitch_14
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/sprint/w/installer/ManagePacksActivity;->loadContent()V

    .line 102
    return-void
.end method
