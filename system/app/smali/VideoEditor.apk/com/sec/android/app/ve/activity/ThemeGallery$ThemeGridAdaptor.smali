.class public Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;
.super Landroid/widget/BaseAdapter;
.source "ThemeGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ThemeGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeGridAdaptor"
.end annotation


# instance fields
.field private ThemeTitle:[Ljava/lang/String;

.field inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private themeDescriptions:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/activity/ThemeGallery;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "c"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    .line 442
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 439
    invoke-virtual {p1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->themeDescriptions:[Ljava/lang/String;

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->inflater:Landroid/view/LayoutInflater;

    .line 559
    invoke-virtual {p1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->ThemeTitle:[Ljava/lang/String;

    .line 443
    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->mContext:Landroid/content/Context;

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->mContext:Landroid/content/Context;

    .line 445
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 444
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getThemeImage(I)I
    .registers 3
    .parameter "pos"

    .prologue
    .line 468
    packed-switch p1, :pswitch_data_22

    .line 496
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 472
    :pswitch_5
    const v0, 0x7f0200e8

    goto :goto_4

    .line 476
    :pswitch_9
    const v0, 0x7f02003f

    goto :goto_4

    .line 479
    :pswitch_d
    const v0, 0x7f02008c

    goto :goto_4

    .line 482
    :pswitch_11
    const v0, 0x7f0200cf

    goto :goto_4

    .line 485
    :pswitch_15
    const v0, 0x7f0200f0

    goto :goto_4

    .line 488
    :pswitch_19
    const v0, 0x7f02013d

    goto :goto_4

    .line 491
    :pswitch_1d
    const v0, 0x7f02018e

    goto :goto_4

    .line 468
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->ThemeTitle:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 463
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 503
    const/4 v6, 0x0

    .line 506
    .local v6, mTheme_item:Landroid/widget/RelativeLayout;
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->inflater:Landroid/view/LayoutInflater;

    .line 507
    const v8, 0x7f030030

    const/4 v9, 0x0

    .line 506
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v6, v0

    .line 508
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->ThemeTitle:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 509
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->themeDescriptions:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 511
    const v7, 0x7f0b00d2

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 510
    check-cast v1, Landroid/widget/TextView;

    .line 513
    .local v1, Lable:Landroid/widget/TextView;
    const v7, 0x7f0b00d0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 512
    check-cast v4, Landroid/widget/ImageView;

    .line 515
    .local v4, mPlayView:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->ThemeTitle:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_fe

    .line 517
    if-eqz v4, :cond_3f

    .line 519
    :try_start_38
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->getThemeImage(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_3f} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_fe

    .line 525
    :cond_3f
    :goto_3f
    :try_start_3f
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ThemeGallery got this :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 527
    const v7, 0x7f0b00d3

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 526
    check-cast v5, Landroid/widget/LinearLayout;

    .line 528
    .local v5, mTempRadioBtn:Landroid/widget/LinearLayout;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v7, "EQC:::Const"

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/app/video/editor/external/Constants;->getThemeInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 530
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 528
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 531
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v7, "EQC:::"

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/app/video/editor/external/Constants;->getThemeInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 531
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 533
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v7}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v7

    .line 534
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v8, v8, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    .line 533
    if-eqz v7, :cond_105

    .line 535
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v7}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v7

    .line 536
    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v8, v8, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getThemeValue(I)I

    move-result v8

    .line 535
    if-ne v7, v8, :cond_105

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ON:::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 541
    const v7, 0x7f020148

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 553
    .end local v1           #Lable:Landroid/widget/TextView;
    .end local v4           #mPlayView:Landroid/widget/ImageView;
    .end local v5           #mTempRadioBtn:Landroid/widget/LinearLayout;
    :goto_e4
    return-object v6

    .line 520
    .restart local v1       #Lable:Landroid/widget/TextView;
    .restart local v4       #mPlayView:Landroid/widget/ImageView;
    :catch_e5
    move-exception v3

    .line 521
    .local v3, err:Ljava/lang/OutOfMemoryError;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignore --> ThemeGallery OutOfMemoryError:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 521
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_fc} :catch_fe

    goto/16 :goto_3f

    .line 549
    .end local v1           #Lable:Landroid/widget/TextView;
    .end local v3           #err:Ljava/lang/OutOfMemoryError;
    .end local v4           #mPlayView:Landroid/widget/ImageView;
    :catch_fe
    move-exception v2

    .line 551
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Exception in ThemeGallery getView"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_e4

    .line 543
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #Lable:Landroid/widget/TextView;
    .restart local v4       #mPlayView:Landroid/widget/ImageView;
    .restart local v5       #mTempRadioBtn:Landroid/widget/LinearLayout;
    :cond_105
    :try_start_105
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OFF:::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 547
    const v7, 0x7f020147

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_11d} :catch_fe

    goto :goto_e4
.end method
