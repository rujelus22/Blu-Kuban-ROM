.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mController:Lcom/android/browser/Controller;

.field private mMotionDialog:Z

.field mMotionTiltDialog:Landroid/app/AlertDialog;

.field private mMotionUse:Z

.field private mNetworkSettingsHandler:Lcom/android/browser/NetworkSettingsHandler;

.field private mUi:Lcom/android/browser/UI;

.field tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMotionDialog:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 118
    new-instance v0, Lcom/android/browser/BrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$1;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 624
    const-string v0, "com.android.browser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initIntentFilter()V
    .registers 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private motionDialogInitialOff()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 528
    iget-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mMotionDialog:Z

    if-nez v7, :cond_bc

    .line 529
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mMotionDialog:Z

    .line 530
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 531
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 533
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f04002b

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 534
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f0d0075

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 535
    .local v2, img:Landroid/widget/ImageView;
    const v7, 0x7f0d0074

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 538
    .local v5, message1:Landroid/widget/TextView;
    const v7, 0x7f0d0076

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 539
    .local v6, message4:Landroid/widget/TextView;
    const v7, 0x7f0d0077

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 540
    .local v1, checkBox:Landroid/widget/CheckBox;
    const v7, 0x7f0c0198

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 542
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_bd

    const v7, 0x7f020095

    :goto_50
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 544
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 547
    const v7, 0x7f0c019b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 548
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 549
    const v7, 0x7f0c0196

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 552
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/browser/BrowserActivity$6;

    invoke-direct {v8, p0}, Lcom/android/browser/BrowserActivity$6;-><init>(Lcom/android/browser/BrowserActivity;)V

    const-wide/16 v9, 0x5f

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 559
    new-instance v7, Lcom/android/browser/BrowserActivity$7;

    invoke-direct {v7, p0}, Lcom/android/browser/BrowserActivity$7;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 564
    new-instance v7, Lcom/android/browser/BrowserActivity$8;

    invoke-direct {v7, p0}, Lcom/android/browser/BrowserActivity$8;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    const v7, 0x7f0c0193

    new-instance v8, Lcom/android/browser/BrowserActivity$9;

    invoke-direct {v8, p0}, Lcom/android/browser/BrowserActivity$9;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 596
    const v7, 0x7f0c0012

    new-instance v8, Lcom/android/browser/BrowserActivity$10;

    invoke-direct {v8, p0}, Lcom/android/browser/BrowserActivity$10;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 603
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 604
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 606
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v7}, Lcom/android/browser/Controller;->isActivityPaused()Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 607
    iput-boolean v11, p0, Lcom/android/browser/BrowserActivity;->mMotionDialog:Z

    .line 608
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->hide()V

    .line 611
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #img:Landroid/widget/ImageView;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #message1:Landroid/widget/TextView;
    .end local v6           #message4:Landroid/widget/TextView;
    :cond_bc
    return-void

    .line 542
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v1       #checkBox:Landroid/widget/CheckBox;
    .restart local v2       #img:Landroid/widget/ImageView;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #layout:Landroid/view/View;
    .restart local v5       #message1:Landroid/widget/TextView;
    .restart local v6       #message4:Landroid/widget/TextView;
    :cond_bd
    const v7, 0x7f020094

    goto :goto_50
.end method

.method private motionDialogInitialOn()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 472
    iget-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mMotionDialog:Z

    if-nez v6, :cond_a2

    .line 473
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mMotionDialog:Z

    .line 474
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 477
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04002c

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 478
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0d0075

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 479
    .local v2, img:Landroid/widget/ImageView;
    const v6, 0x7f0d0074

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 480
    .local v5, message1:Landroid/widget/TextView;
    const v6, 0x7f0d0077

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 481
    .local v1, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f0c0198

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 483
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a3

    const v6, 0x7f020095

    :goto_47
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 486
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 487
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 488
    const v6, 0x7f0c0196

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 489
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 491
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/browser/BrowserActivity$2;

    invoke-direct {v7, p0}, Lcom/android/browser/BrowserActivity$2;-><init>(Lcom/android/browser/BrowserActivity;)V

    const-wide/16 v8, 0x5f

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    new-instance v6, Lcom/android/browser/BrowserActivity$3;

    invoke-direct {v6, p0}, Lcom/android/browser/BrowserActivity$3;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 504
    new-instance v6, Lcom/android/browser/BrowserActivity$4;

    invoke-direct {v6, p0}, Lcom/android/browser/BrowserActivity$4;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    const v6, 0x7f0c0193

    new-instance v7, Lcom/android/browser/BrowserActivity$5;

    invoke-direct {v7, p0}, Lcom/android/browser/BrowserActivity$5;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 517
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 518
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 520
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v6}, Lcom/android/browser/Controller;->isActivityPaused()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 521
    iput-boolean v10, p0, Lcom/android/browser/BrowserActivity;->mMotionDialog:Z

    .line 522
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->hide()V

    .line 525
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #img:Landroid/widget/ImageView;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #message1:Landroid/widget/TextView;
    :cond_a2
    return-void

    .line 483
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v1       #checkBox:Landroid/widget/CheckBox;
    .restart local v2       #img:Landroid/widget/ImageView;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #layout:Landroid/view/View;
    .restart local v5       #message1:Landroid/widget/TextView;
    :cond_a3
    const v6, 0x7f020094

    goto :goto_47
.end method

.method private startMotionTutorialDialog()V
    .registers 4

    .prologue
    .line 459
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 461
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getSupportedFunction()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    .line 468
    :goto_11
    return-void

    .line 464
    :cond_12
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isMotionUse()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 465
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->motionDialogInitialOn()V

    goto :goto_11

    .line 467
    :cond_1c
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->motionDialogInitialOff()V

    goto :goto_11
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getCheckedOnOff(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getController()Lcom/android/browser/Controller;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method public isMotionUse()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1f

    :goto_1a
    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMotionUse:Z

    .line 616
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMotionUse:Z

    return v0

    :cond_1f
    move v0, v1

    .line 614
    goto :goto_1a
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 413
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 414
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 407
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 408
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onActivityResult(IILandroid/content/Intent;)V

    .line 420
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    .line 344
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 277
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 148
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 188
    :goto_13
    return-void

    .line 153
    :cond_14
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 154
    .local v1, prefBrowser:Landroid/content/SharedPreferences;
    const-string v6, "AllowBrowser"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    .local v0, bAllowBrowser:Z
    if-nez v0, :cond_2e

    .line 159
    const v4, 0x7f0c01c5

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_13

    .line 166
    :cond_2e
    new-instance v6, Lcom/android/browser/Controller;

    if-nez p1, :cond_72

    :goto_32
    invoke-direct {v6, p0, v4}, Lcom/android/browser/Controller;-><init>(Landroid/app/Activity;Z)V

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    .line 167
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v3

    .line 168
    .local v3, xlarge:Z
    if-eqz v3, :cond_74

    .line 169
    new-instance v4, Lcom/android/browser/XLargeUi;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-direct {v4, p0, v5}, Lcom/android/browser/XLargeUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    .line 173
    :goto_46
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    invoke-virtual {v4, v5}, Lcom/android/browser/Controller;->setUi(Lcom/android/browser/UI;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 176
    .local v2, state:Landroid/os/Bundle;
    if-eqz v2, :cond_5c

    if-nez p1, :cond_5c

    .line 177
    move-object p1, v2

    .line 180
    :cond_5c
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/browser/Controller;->start(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 182
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-static {p0}, Lcom/android/browser/Controller;->setStorageVolume(Lcom/android/browser/BrowserActivity;)V

    .line 186
    new-instance v4, Lcom/android/browser/NetworkSettingsHandler;

    invoke-direct {v4, p0}, Lcom/android/browser/NetworkSettingsHandler;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mNetworkSettingsHandler:Lcom/android/browser/NetworkSettingsHandler;

    goto :goto_13

    .end local v2           #state:Landroid/os/Bundle;
    .end local v3           #xlarge:Z
    :cond_72
    move v4, v5

    .line 166
    goto :goto_32

    .line 171
    .restart local v3       #xlarge:Z
    :cond_74
    new-instance v4, Lcom/android/browser/PhoneUi;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-direct {v4, p0, v5}, Lcom/android/browser/PhoneUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    goto :goto_46
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 376
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 647
    packed-switch p1, :pswitch_data_e

    .line 661
    :cond_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 650
    :pswitch_5
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, p1}, Lcom/android/browser/Controller;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 651
    .local v0, dlgPrint:Landroid/app/Dialog;
    if-eqz v0, :cond_3

    goto :goto_4

    .line 647
    :pswitch_data_e
    .packed-switch 0x65
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 355
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 318
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v2, :cond_e

    .line 319
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->onDestroy()V

    .line 321
    :cond_e
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    .line 322
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    .line 324
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 325
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 326
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 330
    :cond_25
    const-string v2, "gsm.sim.browserEvent"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 331
    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v4}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(II)V

    .line 332
    .local v0, catEventBrowser:Lcom/android/internal/telephony/cat/CatEventDownload;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "STK EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    const-string v2, "BrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy:sendBroadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v0           #catEventBrowser:Lcom/android/internal/telephony/cat/CatEventDownload;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 385
    const/16 v1, 0x54

    if-ne p1, v1, :cond_e

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->isCustomViewShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 388
    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/Controller;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 349
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onLowMemory()V

    .line 350
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 263
    if-nez p1, :cond_7

    .line 264
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 266
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    .line 201
    const-string v0, "--restart--"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, v0}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 205
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    :goto_37
    return-void

    .line 211
    :cond_38
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->handleNewIntent(Landroid/content/Intent;)V

    goto :goto_37
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 367
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 369
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 272
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_9

    .line 304
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onPause()V

    .line 306
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 309
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 361
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 222
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->initIntentFilter()V

    .line 225
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 226
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 230
    const v1, 0x7f0c01c5

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 231
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 252
    :cond_23
    :goto_23
    return-void

    .line 236
    :cond_24
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 237
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mNetworkSettingsHandler:Lcom/android/browser/NetworkSettingsHandler;

    if-nez v1, :cond_4f

    .line 238
    const-string v1, "browser"

    const-string v2, "onResume : mNetworkSettingsHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_23

    .line 244
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->onResume()V

    .line 246
    const-string v1, "MotionDialogOnOff"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getCheckedOnOff(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 248
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->startMotionTutorialDialog()V

    goto :goto_23

    .line 240
    :cond_4f
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mNetworkSettingsHandler:Lcom/android/browser/NetworkSettingsHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkSettingsHandler;->startWiFiSettingInAirplaneMode()V

    goto :goto_3a
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 297
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_c

    .line 298
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onStop()V

    .line 299
    :cond_c
    return-void
.end method

.method public setCheckedOnOff(Ljava/lang/String;Z)V
    .registers 5
    .parameter "name"
    .parameter "isChecked"

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 632
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 633
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    return-void
.end method

.method public setMotionUse(Z)V
    .registers 2
    .parameter "mMotionUse"

    .prologue
    .line 620
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mMotionUse:Z

    .line 621
    return-void
.end method
