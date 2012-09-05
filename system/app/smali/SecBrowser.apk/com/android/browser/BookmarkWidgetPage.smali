.class public Lcom/android/browser/BookmarkWidgetPage;
.super Landroid/app/ActivityGroup;
.source "BookmarkWidgetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/browser/BookmarksPageCallbacks;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAppWidgetId:I

.field private mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

.field mContext:Landroid/content/Context;

.field private mCurrentFolder:J

.field mDbCount:I

.field mEditName:Landroid/widget/EditText;

.field mEditUrl:Landroid/widget/EditText;

.field mFolderText:Landroid/widget/TextView;

.field mKeypadControll:Landroid/view/inputmethod/InputMethodManager;

.field private mMoreButton:Landroid/widget/LinearLayout;

.field private mMoreFolderClick:Landroid/view/View$OnClickListener;

.field mSavedListArray:[J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BookmarkWidgetPage;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mAppWidgetId:I

    .line 422
    new-instance v0, Lcom/android/browser/BookmarkWidgetPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BookmarkWidgetPage$1;-><init>(Lcom/android/browser/BookmarkWidgetPage;)V

    iput-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mMoreFolderClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method init()V
    .registers 9

    .prologue
    .line 273
    const v6, 0x7f0d0037

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditName:Landroid/widget/EditText;

    .line 274
    const v6, 0x7f0d0039

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditUrl:Landroid/widget/EditText;

    .line 275
    const v6, 0x7f0d0031

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 276
    .local v0, button1:Landroid/widget/Button;
    const v6, 0x7f0d0032

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 277
    .local v1, button2:Landroid/widget/Button;
    const v6, 0x7f0d0040

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 278
    .local v2, button3:Landroid/widget/Button;
    const v6, 0x7f0d0041

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 279
    .local v3, button4:Landroid/widget/Button;
    const v6, 0x7f0d003c

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mFolderText:Landroid/widget/TextView;

    .line 280
    iget-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mFolderText:Landroid/widget/TextView;

    const v7, 0x7f0c01ad

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object v5, p0, Lcom/android/browser/BookmarkWidgetPage;->mMoreFolderClick:Landroid/view/View$OnClickListener;

    .line 283
    .local v5, folderTextClick:Landroid/view/View$OnClickListener;
    const v6, 0x7f0d003b

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mMoreButton:Landroid/widget/LinearLayout;

    .line 284
    iget-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mMoreButton:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 285
    iget-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mMoreButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v6, 0x7f0d0052

    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 293
    .local v4, cancel:Landroid/view/View;
    if-eqz v4, :cond_7d

    .line 294
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_7d
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 410
    const/16 v3, 0x66

    if-ne p1, v3, :cond_23

    const/4 v3, -0x1

    if-ne p2, v3, :cond_23

    .line 413
    if-eqz p3, :cond_23

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_23

    .line 414
    const-string v3, "parent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 415
    .local v1, parent:I
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, title:Ljava/lang/String;
    int-to-long v3, v1

    iput-wide v3, p0, Lcom/android/browser/BookmarkWidgetPage;->mCurrentFolder:J

    .line 417
    iget-object v3, p0, Lcom/android/browser/BookmarkWidgetPage;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #parent:I
    .end local v2           #title:Ljava/lang/String;
    :cond_23
    return-void
.end method

.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .registers 4
    .parameter "c"
    .parameter "isFolder"

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 231
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_3e

    .line 257
    :cond_b
    :goto_b
    :sswitch_b
    return-void

    .line 237
    :sswitch_c
    const/4 v1, 0x0

    .line 238
    .local v1, savedListArray:[J
    iget-object v2, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v2}, Lcom/android/browser/BrowserBookmarksPage;->CheckedItemsList()[J

    move-result-object v1

    .line 239
    const-string v2, "bookmarkwidget"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 240
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/browser/BookmarkWidgetPage;->setResult(ILandroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->finish()V

    goto :goto_b

    .line 244
    .end local v1           #savedListArray:[J
    :sswitch_20
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->saveInputDirect()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 245
    const-string v2, "bookmarkwidget"

    iget-object v3, p0, Lcom/android/browser/BookmarkWidgetPage;->mSavedListArray:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 246
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/browser/BookmarkWidgetPage;->setResult(ILandroid/content/Intent;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->finish()V

    goto :goto_b

    .line 251
    :sswitch_35
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->finish()V

    goto :goto_b

    .line 254
    :sswitch_39
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->finish()V

    goto :goto_b

    .line 231
    nop

    :sswitch_data_3e
    .sparse-switch
        0x7f0d0031 -> :sswitch_c
        0x7f0d0032 -> :sswitch_39
        0x7f0d0040 -> :sswitch_20
        0x7f0d0041 -> :sswitch_35
        0x7f0d0106 -> :sswitch_b
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 189
    const-string v0, "BookmarkWidgetPage"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setPreCheckedItems(Z)V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 119
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 122
    .local v3, intent_income:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 123
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_17

    .line 124
    const-string v8, "appWidgetId"

    invoke-virtual {v1, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/browser/BookmarkWidgetPage;->mAppWidgetId:I

    .line 129
    :cond_17
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/browser/BookmarkWidgetPage;->mContext:Landroid/content/Context;

    .line 130
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/browser/BookmarkWidgetPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, p0, Lcom/android/browser/BookmarkWidgetPage;->mKeypadControll:Landroid/view/inputmethod/InputMethodManager;

    .line 132
    invoke-virtual {p0, v11}, Lcom/android/browser/BookmarkWidgetPage;->requestWindowFeature(I)Z

    .line 133
    const v8, 0x7f040012

    invoke-virtual {p0, v8}, Lcom/android/browser/BookmarkWidgetPage;->setContentView(I)V

    .line 134
    const v8, 0x7f0d002f

    invoke-virtual {p0, v8}, Lcom/android/browser/BookmarkWidgetPage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    .line 136
    .local v6, tabHost:Landroid/widget/TabHost;
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/browser/BookmarkWidgetPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, p0, Lcom/android/browser/BookmarkWidgetPage;->mKeypadControll:Landroid/view/inputmethod/InputMethodManager;

    .line 137
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const v9, 0x7f0d002d

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/browser/BrowserBookmarksPage;

    iput-object v8, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    .line 142
    :try_start_59
    const-string v8, "BookmarksTab"

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f0c0006

    invoke-virtual {p0, v9}, Lcom/android/browser/BookmarkWidgetPage;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f0d0030

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 147
    const-string v8, "DirectTab"

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f0c000a

    invoke-virtual {p0, v9}, Lcom/android/browser/BookmarkWidgetPage;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f0d0033

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 154
    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/TabWidget;->setShowDividers(I)V

    .line 156
    const/4 v5, 0x0

    .local v5, tab:I
    :goto_98
    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_f9

    .line 157
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v2, imParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 160
    .local v4, relLayout:Landroid/widget/RelativeLayout;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 161
    .local v7, tv:Landroid/widget/TextView;
    const/high16 v8, 0x41a0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_ee} :catch_f1

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    .line 168
    .end local v2           #imParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #relLayout:Landroid/widget/RelativeLayout;
    .end local v5           #tab:I
    .end local v7           #tv:Landroid/widget/TextView;
    :catch_f1
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "BookmarkWidgetPage"

    const-string v9, "Tab is error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0           #e:Ljava/lang/Exception;
    :cond_f9
    iget-object v8, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v8, v12}, Lcom/android/browser/BrowserBookmarksPage;->setCurrentWidgetTabMode(Z)V

    .line 174
    iget-object v8, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v8, v11}, Lcom/android/browser/BrowserBookmarksPage;->setPreCheckedItems(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->init()V

    .line 177
    iget v8, p0, Lcom/android/browser/BookmarkWidgetPage;->mAppWidgetId:I

    invoke-virtual {p0, v8}, Lcom/android/browser/BookmarkWidgetPage;->setCheckBox(I)V

    .line 179
    invoke-virtual {v6, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 180
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 209
    return-void
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .registers 3
    .parameter "urls"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 262
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 267
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 269
    :goto_f
    return v1

    .line 264
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->finish()V

    .line 269
    const/4 v1, 0x1

    goto :goto_f

    .line 262
    nop

    :pswitch_data_16
    .packed-switch 0x7f0d0052
        :pswitch_10
    .end packed-switch
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 185
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "tabId"

    .prologue
    const/4 v2, 0x0

    .line 213
    const-string v0, "BookmarksTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 214
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mKeypadControll:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 215
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mKeypadControll:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditUrl:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 216
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditUrl:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->dispatchWindowFocusChanged(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserBookmarksPage;->setCurrentWidgetTabMode(Z)V

    .line 226
    :goto_37
    return-void

    .line 224
    :cond_38
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setCurrentWidgetTabMode(Z)V

    goto :goto_37
.end method

.method saveInputDirect()Z
    .registers 15

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 299
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditUrl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, unfilteredUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_59

    move v7, v12

    .line 304
    .local v7, emptyTitle:Z
    :goto_28
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5b

    move v8, v12

    .line 305
    .local v8, emptyUrl:Z
    :goto_33
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 307
    .local v9, r:Landroid/content/res/Resources;
    if-nez v7, :cond_3b

    if-eqz v8, :cond_5d

    .line 308
    :cond_3b
    if-eqz v7, :cond_49

    .line 309
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditName:Landroid/widget/EditText;

    const v1, 0x7f0c0045

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 311
    :cond_49
    if-eqz v8, :cond_57

    .line 312
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditUrl:Landroid/widget/EditText;

    const v1, 0x7f0c0047

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_57
    move v12, v13

    .line 325
    :goto_58
    return v12

    .end local v7           #emptyTitle:Z
    .end local v8           #emptyUrl:Z
    .end local v9           #r:Landroid/content/res/Resources;
    :cond_59
    move v7, v13

    .line 303
    goto :goto_28

    .restart local v7       #emptyTitle:Z
    :cond_5b
    move v8, v13

    .line 304
    goto :goto_33

    .line 317
    .restart local v8       #emptyUrl:Z
    .restart local v9       #r:Landroid/content/res/Resources;
    :cond_5d
    new-array v0, v12, [J

    iput-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mSavedListArray:[J

    .line 318
    invoke-virtual {p0}, Lcom/android/browser/BookmarkWidgetPage;->setBookmarkInfo()V

    .line 319
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/BookmarkWidgetPage;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_id ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 322
    iget-object v0, p0, Lcom/android/browser/BookmarkWidgetPage;->mSavedListArray:[J

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v13

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_58
.end method

.method public setBookmarkInfo()V
    .registers 10

    .prologue
    .line 329
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, strName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mEditUrl:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, unfilteredUrl:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, strUrl:Ljava/lang/String;
    :try_start_21
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, address:Landroid/net/WebAddress;
    invoke-virtual {v0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_29
    .catch Landroid/net/ParseException; {:try_start_21 .. :try_end_29} :catch_5e

    move-result-object v3

    .line 340
    .end local v0           #address:Landroid/net/WebAddress;
    :goto_2a
    :try_start_2a
    const-string v6, "title"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v6, "url"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v6, "folder"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v6, "parent"

    iget-wide v7, p0, Lcom/android/browser/BookmarkWidgetPage;->mCurrentFolder:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    iget-object v6, p0, Lcom/android/browser/BookmarkWidgetPage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_54} :catch_55

    .line 348
    :goto_54
    return-void

    .line 345
    :catch_55
    move-exception v1

    .line 346
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v6, "BookmarkWidgetPage"

    const-string v7, "addBookmark"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 337
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_5e
    move-exception v6

    goto :goto_2a
.end method

.method setCheckBox(I)V
    .registers 15
    .parameter "appWidgetId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 379
    new-instance v10, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetPage;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;-><init>(Landroid/content/Context;)V

    .line 380
    .local v10, helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    invoke-virtual {v10}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 382
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "%s = ?"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v5, "appWidgetId"

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, selection:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    .line 387
    .local v4, selectionArgs:[Ljava/lang/String;
    :try_start_2b
    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksPage;->clearCheckInfo()V

    .line 389
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 390
    .local v12, mBookmarkWidget:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BookmarkWidgetPage;->mDbCount:I

    .line 392
    iget v1, p0, Lcom/android/browser/BookmarkWidgetPage;->mDbCount:I

    if-lez v1, :cond_5e

    .line 393
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 395
    const/4 v11, 0x0

    .local v11, i:I
    :goto_49
    iget v1, p0, Lcom/android/browser/BookmarkWidgetPage;->mDbCount:I

    if-ge v11, v1, :cond_5e

    .line 396
    iget-object v1, p0, Lcom/android/browser/BookmarkWidgetPage;->mBookmarks:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v6, v2}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedBox(JZ)V

    .line 397
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 395
    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    .line 400
    .end local v11           #i:I
    :cond_5e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catchall {:try_start_2b .. :try_end_61} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_61} :catch_67

    .line 404
    if-eqz v0, :cond_66

    .line 405
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 407
    .end local v12           #mBookmarkWidget:Landroid/database/Cursor;
    :cond_66
    :goto_66
    return-void

    .line 401
    :catch_67
    move-exception v9

    .line 402
    .local v9, e:Ljava/lang/Exception;
    :try_start_68
    const-string v1, "bookmarkwidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB is null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_68 .. :try_end_80} :catchall_86

    .line 404
    if-eqz v0, :cond_66

    .line 405
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_66

    .line 404
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_86
    move-exception v1

    if-eqz v0, :cond_8c

    .line 405
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8c
    throw v1
.end method
