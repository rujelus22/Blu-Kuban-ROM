.class public Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CradleWeatherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    .line 694
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 695
    iput p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->mResourceId:I

    .line 696
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 602
    const/4 v7, 0x0

    .line 605
    .local v7, todoView:Landroid/widget/RelativeLayout;
    if-nez p2, :cond_b9

    .line 606
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 608
    .local v8, vi:Landroid/view/LayoutInflater;
    iget v9, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->mResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .end local v7           #todoView:Landroid/widget/RelativeLayout;
    check-cast v7, Landroid/widget/RelativeLayout;

    .line 614
    .end local v8           #vi:Landroid/view/LayoutInflater;
    .restart local v7       #todoView:Landroid/widget/RelativeLayout;
    :goto_18
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    .line 616
    .local v2, item:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    if-eqz v2, :cond_b8

    .line 617
    const v9, 0x7f0e00dd

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 619
    .local v3, mainText:Landroid/widget/TextView;
    const v9, 0x7f0e00df

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 621
    .local v6, subText:Landroid/widget/TextView;
    const v9, 0x7f0e00e0

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 623
    .local v1, imageView:Landroid/widget/ImageView;
    const v9, 0x7f0e00de

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;

    .line 625
    .local v0, box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    const v9, 0x7f0e00e1

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 628
    .local v4, moreArrowView:Landroid/widget/ImageView;
    iget-boolean v9, v2, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mEnabled:Z

    if-nez v9, :cond_be

    .line 629
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 630
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 636
    :goto_59
    if-eqz v3, :cond_62

    .line 638
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :cond_62
    if-eqz v6, :cond_6b

    .line 642
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->getSubTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_6b
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->getDivideImageVisible()Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 646
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBack(Z)V

    .line 654
    :goto_79
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->getMoreArrowImageVisible()Z

    move-result v9

    if-eqz v9, :cond_cd

    .line 655
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    :goto_83
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d2

    .line 662
    const-string v9, "CradleWeatherSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check box is true "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setVisibility(I)V

    .line 664
    iget-boolean v9, v2, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    invoke-virtual {v0, v9}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setChecked(Z)V

    .line 665
    move v5, p1

    .line 666
    .local v5, myPosition:I
    new-instance v9, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter$1;

    invoke-direct {v9, p0, v0, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;I)V

    invoke-virtual {v0, v9}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    .end local v0           #box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v3           #mainText:Landroid/widget/TextView;
    .end local v4           #moreArrowView:Landroid/widget/ImageView;
    .end local v5           #myPosition:I
    .end local v6           #subText:Landroid/widget/TextView;
    :cond_b8
    :goto_b8
    return-object v7

    .end local v2           #item:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    :cond_b9
    move-object v7, p2

    .line 611
    check-cast v7, Landroid/widget/RelativeLayout;

    goto/16 :goto_18

    .line 632
    .restart local v0       #box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    .restart local v1       #imageView:Landroid/widget/ImageView;
    .restart local v2       #item:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    .restart local v3       #mainText:Landroid/widget/TextView;
    .restart local v4       #moreArrowView:Landroid/widget/ImageView;
    .restart local v6       #subText:Landroid/widget/TextView;
    :cond_be
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 633
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_59

    .line 651
    :cond_c7
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_79

    .line 657
    :cond_cd
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_83

    .line 685
    :cond_d2
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setVisibility(I)V

    goto :goto_b8
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    .line 596
    .local v0, item:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    iget-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mEnabled:Z

    return v1
.end method
