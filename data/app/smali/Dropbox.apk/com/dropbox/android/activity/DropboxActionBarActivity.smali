.class public Lcom/dropbox/android/activity/DropboxActionBarActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/c;
.implements Lcom/dropbox/android/widget/CustomTabView/b;


# instance fields
.field private b:Landroid/content/Intent;

.field private c:Lcom/dropbox/android/util/am;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/dropbox/android/activity/M;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->d:Z

    .line 43
    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->e:Z

    .line 44
    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->f:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->g:Lcom/dropbox/android/activity/M;

    return-void
.end method

.method private a(Lcom/dropbox/android/activity/A;)V
    .registers 4
    .parameter

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_17

    instance-of v1, v0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;

    if-eqz v1, :cond_17

    .line 327
    check-cast v0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;

    .line 328
    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a(Ljava/lang/Object;)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->setSelected(Lcom/dropbox/android/widget/CustomTabView/a;)V

    .line 330
    :cond_17
    return-void
.end method

.method private c()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 111
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 113
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ldbxyzptlk/j/m;->s()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 116
    invoke-static {}, Lcom/dropbox/android/util/X;->a()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {v3}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 118
    invoke-static {}, Lcom/dropbox/android/activity/DropboxBrowser;->a()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 119
    new-array v0, v1, [Lcom/dropbox/android/activity/bB;

    sget-object v4, Lcom/dropbox/android/activity/bB;->f:Lcom/dropbox/android/activity/bB;

    aput-object v4, v0, v2

    .line 123
    :goto_34
    invoke-static {p0, v0}, Lcom/dropbox/android/activity/TourActivity;->a(Landroid/content/Context;[Lcom/dropbox/android/activity/bB;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    invoke-virtual {v3, v1}, Ldbxyzptlk/j/m;->i(Z)V

    move v0, v1

    .line 130
    :goto_41
    return v0

    .line 121
    :cond_42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/activity/bB;

    sget-object v4, Lcom/dropbox/android/activity/bB;->b:Lcom/dropbox/android/activity/bB;

    aput-object v4, v0, v2

    sget-object v2, Lcom/dropbox/android/activity/bB;->f:Lcom/dropbox/android/activity/bB;

    aput-object v2, v0, v1

    goto :goto_34

    :cond_4e
    move v0, v2

    .line 130
    goto :goto_41
.end method

.method private h()V
    .registers 6

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 168
    new-instance v1, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;

    invoke-direct {v1, p0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance v2, Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-direct {v2, p0}, Lcom/dropbox/android/widget/CustomTabView/a;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/dropbox/android/activity/A;->a:Lcom/dropbox/android/activity/A;

    invoke-virtual {v2, v3}, Lcom/dropbox/android/widget/CustomTabView/a;->a(Ljava/lang/Object;)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    const v3, 0x7f020109

    invoke-virtual {v2, v3}, Lcom/dropbox/android/widget/CustomTabView/a;->a(I)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dropbox/android/widget/CustomTabView/a;->a(Lcom/dropbox/android/widget/CustomTabView/b;)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a(Lcom/dropbox/android/widget/CustomTabView/a;)V

    .line 170
    new-instance v2, Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-direct {v2, p0}, Lcom/dropbox/android/widget/CustomTabView/a;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/dropbox/android/activity/A;->b:Lcom/dropbox/android/activity/A;

    invoke-virtual {v2, v3}, Lcom/dropbox/android/widget/CustomTabView/a;->a(Ljava/lang/Object;)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    const v3, 0x7f020111

    invoke-virtual {v2, v3}, Lcom/dropbox/android/widget/CustomTabView/a;->a(I)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dropbox/android/widget/CustomTabView/a;->a(Lcom/dropbox/android/widget/CustomTabView/b;)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a(Lcom/dropbox/android/widget/CustomTabView/a;)V

    .line 171
    new-instance v2, Lcom/dropbox/android/widget/CustomTabView/a;

    invoke-direct {v2, p0}, Lcom/dropbox/android/widget/CustomTabView/a;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/dropbox/android/activity/A;->c:Lcom/dropbox/android/activity/A;

    invoke-virtual {v2, v3}, Lcom/dropbox/android/widget/CustomTabView/a;->a(Ljava/lang/Object;)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    const v3, 0x7f02010c

    invoke-virtual {v2, v3}, Lcom/dropbox/android/widget/CustomTabView/a;->a(I)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/dropbox/android/widget/CustomTabView/a;->a(Lcom/dropbox/android/widget/CustomTabView/b;)Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a(Lcom/dropbox/android/widget/CustomTabView/a;)V

    .line 172
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 173
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 174
    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->j()V

    .line 294
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 295
    instance-of v1, v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    if-eqz v1, :cond_14

    .line 296
    check-cast v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->a()V

    .line 298
    :cond_14
    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 301
    sget-object v0, Lcom/dropbox/android/activity/A;->b:Lcom/dropbox/android/activity/A;

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->a(Lcom/dropbox/android/activity/A;)V

    .line 302
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    if-eqz v1, :cond_13

    .line 319
    check-cast v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    .line 320
    invoke-virtual {v0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->c()V

    .line 322
    :cond_13
    return-void
.end method

.method private l()Lcom/dropbox/android/activity/A;
    .registers 3

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_1b

    instance-of v1, v0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;

    if-eqz v1, :cond_1b

    .line 335
    check-cast v0, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;

    .line 336
    invoke-virtual {v0}, Lcom/dropbox/android/widget/CustomTabView/ActionBarTabView;->a()Lcom/dropbox/android/widget/CustomTabView/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/widget/CustomTabView/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/A;

    .line 338
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public final a()Lcom/dropbox/android/util/am;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->c:Lcom/dropbox/android/util/am;

    return-object v0
.end method

.method public final a(Lcom/dropbox/android/util/am;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->c:Lcom/dropbox/android/util/am;

    .line 307
    return-void
.end method

.method public final a(Lcom/dropbox/android/widget/CustomTabView/a;Landroid/support/v4/app/s;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/A;

    .line 236
    sget-object v1, Lcom/dropbox/android/activity/z;->a:[I

    invoke-virtual {v0}, Lcom/dropbox/android/activity/A;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_42

    move-object v1, v2

    .line 253
    :goto_13
    if-eqz v1, :cond_1f

    .line 254
    invoke-virtual {v0}, Lcom/dropbox/android/activity/A;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->invalidateOptionsMenu()V

    .line 257
    :cond_1f
    return-void

    .line 238
    :pswitch_20
    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    if-eqz v1, :cond_29

    .line 239
    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    .line 240
    iput-object v2, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    goto :goto_13

    .line 242
    :cond_29
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/Browser;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_13

    .line 246
    :pswitch_31
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/UploadsActivityGroup;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_13

    .line 249
    :pswitch_39
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_13

    .line 236
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_20
        :pswitch_31
        :pswitch_39
    .end packed-switch
.end method

.method public final b(Lcom/dropbox/android/widget/CustomTabView/a;Landroid/support/v4/app/s;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/activity/A;->b:Lcom/dropbox/android/activity/A;

    if-ne v0, v1, :cond_c

    .line 264
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->k()V

    .line 272
    :cond_b
    :goto_b
    return-void

    .line 265
    :cond_c
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/activity/A;->a:Lcom/dropbox/android/activity/A;

    if-ne v0, v1, :cond_b

    .line 266
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 267
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    .line 269
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public final c(Lcom/dropbox/android/widget/CustomTabView/a;Landroid/support/v4/app/s;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/dropbox/android/widget/CustomTabView/a;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/activity/A;->b:Lcom/dropbox/android/activity/A;

    if-ne v0, v1, :cond_b

    .line 279
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->k()V

    .line 281
    :cond_b
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->finish()V

    .line 228
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    const/16 v0, 0xf

    if-ne p1, v0, :cond_14

    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    .line 286
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 287
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->i()V

    .line 290
    :cond_14
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->f:Z

    if-nez v0, :cond_18

    .line 179
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_18

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->f:Z

    .line 183
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->f:Z

    .line 189
    :goto_17
    return-void

    .line 188
    :cond_18
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onBackPressed()V

    goto :goto_17
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_10

    .line 139
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Lcom/dropbox/android/activity/M;

    invoke-direct {v0, p1}, Lcom/dropbox/android/activity/M;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->g:Lcom/dropbox/android/activity/M;

    .line 69
    if-eqz p1, :cond_1e

    const-string v0, "key_history_stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 70
    const-string v0, "key_history_stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/am;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->c:Lcom/dropbox/android/util/am;

    .line 73
    :cond_1e
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 75
    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/Browser;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    :cond_3e
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->h()V

    .line 85
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "ACTION_CAMERA_UPLOAD_DETAILS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "ACTION_CAMERA_UPLOAD_GALLERY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 88
    :cond_5b
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->i()V

    .line 96
    :goto_5e
    return-void

    .line 89
    :cond_5f
    const-string v1, "ACTION_UPLOADS_TAB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 90
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->j()V

    goto :goto_5e

    .line 92
    :cond_6b
    if-eqz p1, :cond_83

    const-string v0, "key_tab_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "key_tab_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/activity/A;->valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/A;

    move-result-object v0

    .line 94
    :goto_7f
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->a(Lcom/dropbox/android/activity/A;)V

    goto :goto_5e

    .line 92
    :cond_83
    sget-object v0, Lcom/dropbox/android/activity/A;->a:Lcom/dropbox/android/activity/A;

    goto :goto_7f
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->g:Lcom/dropbox/android/activity/M;

    invoke-virtual {v0, p1, p0}, Lcom/dropbox/android/activity/M;->a(ILandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_9

    .line 347
    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->d:Z

    if-nez v0, :cond_19

    .line 195
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_19

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->d:Z

    .line 199
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->d:Z

    .line 205
    :goto_18
    return v0

    :cond_19
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_18
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->setIntent(Landroid/content/Intent;)V

    .line 146
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "ACTION_CAMERA_UPLOAD_DETAILS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "ACTION_CAMERA_UPLOAD_GALLERY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 151
    :cond_1a
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->i()V

    .line 161
    :goto_1d
    return-void

    .line 152
    :cond_1e
    const-string v1, "ACTION_UPLOADS_TAB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 153
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->j()V

    goto :goto_1d

    .line 155
    :cond_2a
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->b:Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/Browser;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    sget-object v0, Lcom/dropbox/android/activity/A;->a:Lcom/dropbox/android/activity/A;

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->a(Lcom/dropbox/android/activity/A;)V

    goto :goto_1d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->e:Z

    if-nez v0, :cond_19

    .line 212
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_19

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->e:Z

    .line 216
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->e:Z

    .line 222
    :goto_18
    return v0

    :cond_19
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_18
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->c()Z

    move-result v0

    .line 102
    if-nez v0, :cond_e

    .line 103
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->g:Lcom/dropbox/android/activity/M;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/activity/M;->a(Landroid/app/Activity;)V

    .line 105
    :cond_e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->g:Lcom/dropbox/android/activity/M;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/M;->a(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->c:Lcom/dropbox/android/util/am;

    if-eqz v0, :cond_13

    .line 56
    const-string v0, "key_history_stack"

    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxActionBarActivity;->c:Lcom/dropbox/android/util/am;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    :cond_13
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxActionBarActivity;->l()Lcom/dropbox/android/activity/A;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_22

    .line 60
    const-string v1, "key_tab_id"

    invoke-virtual {v0}, Lcom/dropbox/android/activity/A;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_22
    return-void
.end method
