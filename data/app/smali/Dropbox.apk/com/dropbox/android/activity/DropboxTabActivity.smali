.class public Lcom/dropbox/android/activity/DropboxTabActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/c;


# instance fields
.field private b:Landroid/widget/TabHost$TabSpec;

.field private c:Lcom/dropbox/android/util/am;

.field private d:Z

.field private e:Lcom/dropbox/android/activity/M;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->d:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->e:Lcom/dropbox/android/activity/M;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 241
    .line 242
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 244
    const v1, 0x7f030031

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 246
    const v0, 0x7f0d00c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/BetterTextView;

    .line 247
    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/BetterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dropbox/android/widget/BetterTextView;->setStatefullShadowColor(Landroid/content/res/ColorStateList;)V

    .line 250
    const v0, 0x7f0d007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 251
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-object v1
.end method

.method private g()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 105
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ldbxyzptlk/j/m;->s()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 108
    invoke-static {}, Lcom/dropbox/android/util/X;->a()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {v3}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 110
    invoke-static {}, Lcom/dropbox/android/activity/DropboxBrowser;->a()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 111
    new-array v0, v1, [Lcom/dropbox/android/activity/bB;

    sget-object v4, Lcom/dropbox/android/activity/bB;->f:Lcom/dropbox/android/activity/bB;

    aput-object v4, v0, v2

    .line 115
    :goto_34
    invoke-static {p0, v0}, Lcom/dropbox/android/activity/TourActivity;->a(Landroid/content/Context;[Lcom/dropbox/android/activity/bB;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/dropbox/android/activity/DropboxTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    invoke-virtual {v3, v1}, Ldbxyzptlk/j/m;->i(Z)V

    move v0, v1

    .line 122
    :goto_41
    return v0

    .line 113
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

    .line 122
    goto :goto_41
.end method

.method private h()V
    .registers 7

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    .line 179
    sget-object v3, Lcom/dropbox/android/activity/L;->b:Lcom/dropbox/android/activity/L;

    invoke-virtual {v3}, Lcom/dropbox/android/activity/L;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 182
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    const-class v4, Lcom/dropbox/android/activity/Browser;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 184
    sget-object v4, Lcom/dropbox/android/activity/L;->a:Lcom/dropbox/android/activity/L;

    invoke-virtual {v4}, Lcom/dropbox/android/activity/L;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->b:Landroid/widget/TabHost$TabSpec;

    .line 186
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->b:Landroid/widget/TabHost$TabSpec;

    const v4, 0x7f09002e

    invoke-virtual {p0, v4}, Lcom/dropbox/android/activity/DropboxTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020076

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/dropbox/android/activity/DropboxTabActivity;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 189
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->b:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/dropbox/android/activity/UploadsActivityGroup;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    sget-object v4, Lcom/dropbox/android/activity/L;->b:Lcom/dropbox/android/activity/L;

    invoke-virtual {v4}, Lcom/dropbox/android/activity/L;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 194
    const v4, 0x7f090030

    invoke-virtual {p0, v4}, Lcom/dropbox/android/activity/DropboxTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020078

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/dropbox/android/activity/DropboxTabActivity;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 197
    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    sget-object v4, Lcom/dropbox/android/activity/L;->c:Lcom/dropbox/android/activity/L;

    invoke-virtual {v4}, Lcom/dropbox/android/activity/L;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 201
    const v4, 0x7f09002f

    invoke-virtual {p0, v4}, Lcom/dropbox/android/activity/DropboxTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020077

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/dropbox/android/activity/DropboxTabActivity;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 204
    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 206
    new-instance v0, Lcom/dropbox/android/activity/J;

    invoke-direct {v0, p0, v3}, Lcom/dropbox/android/activity/J;-><init>(Lcom/dropbox/android/activity/DropboxTabActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/activity/K;

    invoke-direct {v1, p0, v2, v3}, Lcom/dropbox/android/activity/K;-><init>(Lcom/dropbox/android/activity/DropboxTabActivity;Landroid/widget/TabHost;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->j()V

    .line 267
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    instance-of v1, v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    if-eqz v1, :cond_14

    .line 269
    check-cast v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->a()V

    .line 271
    :cond_14
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/activity/L;->b:Lcom/dropbox/android/activity/L;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/L;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 275
    return-void
.end method


# virtual methods
.method public final a()Lcom/dropbox/android/util/am;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->c:Lcom/dropbox/android/util/am;

    return-object v0
.end method

.method public final a(Lcom/dropbox/android/util/am;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->c:Lcom/dropbox/android/util/am;

    .line 280
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    const/16 v0, 0xf

    if-ne p1, v0, :cond_14

    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    .line 259
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 260
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->i()V

    .line 263
    :cond_14
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->d:Z

    if-nez v0, :cond_18

    .line 162
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_18

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->d:Z

    .line 166
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->d:Z

    .line 172
    :goto_17
    return-void

    .line 171
    :cond_18
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->onBackPressed()V

    goto :goto_17
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_10

    .line 155
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Lcom/dropbox/android/activity/M;

    invoke-direct {v0, p1}, Lcom/dropbox/android/activity/M;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->e:Lcom/dropbox/android/activity/M;

    .line 66
    if-eqz p1, :cond_1e

    const-string v0, "key_history_stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 67
    const-string v0, "key_history_stack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/am;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->c:Lcom/dropbox/android/util/am;

    .line 70
    :cond_1e
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxTabActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->h()V

    .line 73
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "ACTION_CAMERA_UPLOAD_DETAILS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "ACTION_CAMERA_UPLOAD_GALLERY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 76
    :cond_3f
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->i()V

    .line 88
    :goto_42
    return-void

    .line 77
    :cond_43
    const-string v1, "ACTION_UPLOADS_TAB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 78
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->j()V

    goto :goto_42

    .line 81
    :cond_4f
    if-eqz p1, :cond_67

    const-string v0, "key_tab_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 82
    const-string v0, "key_tab_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    :goto_5f
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_42

    .line 84
    :cond_67
    const/4 v0, 0x0

    goto :goto_5f
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->e:Lcom/dropbox/android/activity/M;

    invoke-virtual {v0, p1, p0}, Lcom/dropbox/android/activity/M;->a(ILandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_9

    .line 288
    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/DropboxTabActivity;->setIntent(Landroid/content/Intent;)V

    .line 128
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "ACTION_CAMERA_UPLOAD_DETAILS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "ACTION_CAMERA_UPLOAD_GALLERY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 133
    :cond_1a
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->i()V

    .line 147
    :goto_1d
    return-void

    .line 134
    :cond_1e
    const-string v1, "ACTION_UPLOADS_TAB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 135
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->j()V

    goto :goto_1d

    .line 137
    :cond_2a
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 138
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    const-class v1, Lcom/dropbox/android/activity/Browser;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/dropbox/android/activity/L;->a:Lcom/dropbox/android/activity/L;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/L;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    .line 144
    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->b:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 145
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1d
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->g()Z

    move-result v0

    .line 94
    if-nez v0, :cond_e

    .line 95
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->e:Lcom/dropbox/android/activity/M;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/activity/M;->a(Landroid/app/Activity;)V

    .line 97
    :cond_e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->e:Lcom/dropbox/android/activity/M;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/M;->a(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->c:Lcom/dropbox/android/util/am;

    if-eqz v0, :cond_13

    .line 54
    const-string v0, "key_history_stack"

    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxTabActivity;->c:Lcom/dropbox/android/util/am;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    :cond_13
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 57
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 58
    const-string v1, "key_tab_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    :cond_23
    return-void
.end method
