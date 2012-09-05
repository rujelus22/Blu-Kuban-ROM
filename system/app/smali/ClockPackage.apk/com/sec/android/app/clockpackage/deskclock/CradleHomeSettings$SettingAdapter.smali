.class public Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CradleHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/content/Context;ILjava/util/List;)V
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
            "Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1395
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    .line 1396
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1397
    iput p3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->mResourceId:I

    .line 1398
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 28
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1272
    const/16 v19, 0x0

    .line 1275
    .local v19, todoView:Landroid/widget/RelativeLayout;
    if-nez p2, :cond_dc

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 1278
    .local v20, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->mResourceId:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .end local v19           #todoView:Landroid/widget/RelativeLayout;
    check-cast v19, Landroid/widget/RelativeLayout;

    .line 1284
    .end local v20           #vi:Landroid/view/LayoutInflater;
    .restart local v19       #todoView:Landroid/widget/RelativeLayout;
    :goto_26
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 1285
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1287
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .line 1289
    .local v11, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    if-eqz v11, :cond_1bf

    .line 1290
    const v21, 0x7f0e00dd

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1292
    .local v14, mainText:Landroid/widget/TextView;
    const v21, 0x7f0e00df

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1295
    .local v18, subText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$700(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v21

    if-nez v21, :cond_79

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v22, v0

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$702(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 1300
    :cond_79
    iget-boolean v0, v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_e2

    .line 1301
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1302
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1308
    :goto_8f
    iget-boolean v0, v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mSubtiteVisibled:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c0

    .line 1309
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f09003f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v8, v0

    .line 1313
    .local v8, height:I
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-direct {v12, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1316
    .local v12, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x0

    .line 1317
    .local v6, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$700(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    .local v4, arr$:[I
    array-length v13, v4

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v7, v6

    .end local v6           #count:I
    .local v7, count:I
    :goto_cd
    if-ge v9, v13, :cond_f3

    aget v17, v4, v9

    .line 1318
    .local v17, rule:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #count:I
    .restart local v6       #count:I
    move/from16 v0, v17

    invoke-virtual {v12, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1317
    add-int/lit8 v9, v9, 0x1

    move v7, v6

    .end local v6           #count:I
    .restart local v7       #count:I
    goto :goto_cd

    .end local v4           #arr$:[I
    .end local v7           #count:I
    .end local v8           #height:I
    .end local v9           #i$:I
    .end local v11           #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .end local v12           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13           #len$:I
    .end local v14           #mainText:Landroid/widget/TextView;
    .end local v17           #rule:I
    .end local v18           #subText:Landroid/widget/TextView;
    :cond_dc
    move-object/from16 v19, p2

    .line 1281
    check-cast v19, Landroid/widget/RelativeLayout;

    goto/16 :goto_26

    .line 1304
    .restart local v11       #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    .restart local v14       #mainText:Landroid/widget/TextView;
    .restart local v18       #subText:Landroid/widget/TextView;
    :cond_e2
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1305
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_8f

    .line 1320
    .restart local v4       #arr$:[I
    .restart local v7       #count:I
    .restart local v8       #height:I
    .restart local v9       #i$:I
    .restart local v12       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v13       #len$:I
    :cond_f3
    iput v8, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090040

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1325
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    .end local v4           #arr$:[I
    .end local v7           #count:I
    .end local v8           #height:I
    .end local v9           #i$:I
    .end local v12           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13           #len$:I
    :cond_112
    :goto_112
    invoke-virtual {v14}, Landroid/widget/TextView;->invalidate()V

    .line 1335
    if-eqz v14, :cond_120

    .line 1336
    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    :cond_120
    if-eqz v18, :cond_12d

    .line 1340
    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getSubTitle()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    :cond_12d
    const v21, 0x7f0e00de

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;

    .line 1345
    .local v5, box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    const v21, 0x7f0e00e0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1347
    .local v10, imageView:Landroid/widget/ImageView;
    const v21, 0x7f0e00e1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1350
    .local v15, moreArrowView:Landroid/widget/ImageView;
    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getToggleButtonBackVisible()Z

    move-result v21

    if-nez v21, :cond_1ee

    .line 1351
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBack(Z)V

    .line 1352
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1358
    :goto_168
    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getMoreArrowImageVisible()Z

    move-result v21

    if-eqz v21, :cond_1fe

    .line 1359
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1364
    :goto_175
    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_207

    .line 1366
    const-string v21, "CradleHomeSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "check box is true "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->getMainTitle()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setVisibility(I)V

    .line 1368
    iget-boolean v0, v11, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mStateChecked:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setChecked(Z)V

    .line 1369
    move/from16 v16, p1

    .line 1370
    .local v16, myPosition:I
    new-instance v21, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;I)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1391
    .end local v5           #box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    .end local v10           #imageView:Landroid/widget/ImageView;
    .end local v14           #mainText:Landroid/widget/TextView;
    .end local v15           #moreArrowView:Landroid/widget/ImageView;
    .end local v16           #myPosition:I
    .end local v18           #subText:Landroid/widget/TextView;
    :cond_1bf
    :goto_1bf
    return-object v19

    .line 1327
    .restart local v14       #mainText:Landroid/widget/TextView;
    .restart local v18       #subText:Landroid/widget/TextView;
    :cond_1c0
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1328
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$700(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_112

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mTextDefaultLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$700(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_112

    .line 1354
    .restart local v5       #box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;
    .restart local v10       #imageView:Landroid/widget/ImageView;
    .restart local v15       #moreArrowView:Landroid/widget/ImageView;
    :cond_1ee
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setBack(Z)V

    .line 1355
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_168

    .line 1361
    :cond_1fe
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_175

    .line 1387
    :cond_207
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->setVisibility(I)V

    goto :goto_1bf
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 1264
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .line 1265
    .local v0, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    iget-boolean v1, v0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->mEnabled:Z

    return v1
.end method
