.class public Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;
.super Landroid/widget/LinearLayout;
.source "ChildViewContainer.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArrayList:Ljava/util/ArrayList;

.field private mChildHeight:I

.field private mChildView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer$ChildViewContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChildWidth:I

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mDragLayerChildViewLayoutHeight:I

.field private mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 4
    .parameter "context"
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildWidth:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildHeight:I

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mActivity:Landroid/app/Activity;

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->init()V

    .line 49
    return-void
.end method

.method private addView()V
    .registers 23

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    rsub-int/lit8 v17, v20, 0x10

    .line 89
    .local v17, plusViewCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-eqz v20, :cond_14c

    .line 90
    const/4 v10, 0x0

    .local v10, i:I
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_14c

    .line 91
    new-instance v18, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;-><init>(Landroid/content/Context;Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;)V

    .line 93
    .local v18, textView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 94
    .local v9, hashMap:Ljava/util/HashMap;
    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setViewId(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 98
    .local v14, manager:Landroid/content/pm/PackageManager;
    const/16 v19, 0x0

    .line 100
    .local v19, tmpString:Ljava/lang/String;
    const-string v20, "packagename"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 102
    .local v16, packageName:Ljava/lang/String;
    const-string v20, "shortcut_afford"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 104
    .local v5, className:Ljava/lang/String;
    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 105
    .local v11, id:I
    if-eqz v5, :cond_95

    .line 106
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 110
    :cond_95
    const/16 v20, 0x80

    :try_start_97
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 116
    .local v4, applicationinfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_132

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_132

    .line 117
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v6, componentName:Landroid/content/ComponentName;
    const/16 v20, 0x80

    move/from16 v0, v20

    invoke-virtual {v14, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 121
    .local v3, af:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 122
    .local v12, lableName:Ljava/lang/String;
    invoke-virtual {v14, v6}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 134
    .end local v3           #af:Landroid/content/pm/ActivityInfo;
    .end local v6           #componentName:Landroid/content/ComponentName;
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    :goto_c8
    move-object/from16 v19, v12

    .line 136
    const/4 v15, 0x0

    .line 137
    .local v15, nu:I
    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v20

    invoke-virtual {v7, v15, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    if-eqz v5, :cond_141

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_141

    .line 140
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v7, v5}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_e5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_e5} :catch_147

    .line 155
    .end local v4           #applicationinfo:Landroid/content/pm/ApplicationInfo;
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v12           #lableName:Ljava/lang/String;
    .end local v15           #nu:I
    :goto_e5
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mDragLayerChildViewLayoutHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v13, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x31

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 158
    const/16 v20, 0x5

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 159
    const/16 v20, 0x5

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 161
    if-eqz v19, :cond_11d

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11d

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_11d
    if-eqz v19, :cond_127

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12e

    .line 166
    :cond_127
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->delView(Landroid/view/View;)V

    .line 90
    :cond_12e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_19

    .line 128
    .end local v13           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #applicationinfo:Landroid/content/pm/ApplicationInfo;
    :cond_132
    :try_start_132
    invoke-virtual {v14, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 131
    .restart local v12       #lableName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_c8

    .line 142
    .restart local v15       #nu:I
    :cond_141
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v7}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_146
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_132 .. :try_end_146} :catch_147

    goto :goto_e5

    .line 147
    .end local v4           #applicationinfo:Landroid/content/pm/ApplicationInfo;
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v12           #lableName:Ljava/lang/String;
    .end local v15           #nu:I
    :catch_147
    move-exception v8

    .line 148
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_e5

    .line 172
    .end local v5           #className:Ljava/lang/String;
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #hashMap:Ljava/util/HashMap;
    .end local v10           #i:I
    .end local v11           #id:I
    .end local v14           #manager:Landroid/content/pm/PackageManager;
    .end local v16           #packageName:Ljava/lang/String;
    .end local v18           #textView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    .end local v19           #tmpString:Ljava/lang/String;
    :cond_14c
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_14d
    move/from16 v0, v17

    if-ge v10, v0, :cond_154

    add-int/lit8 v10, v10, 0x1

    goto :goto_14d

    .line 175
    :cond_154
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildView:Ljava/util/ArrayList;

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->setActivity(Landroid/app/Activity;)V

    .line 57
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->setShortCutHelperCallBack(Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper$ShortCutHelperCallBack;)V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildWidth:I

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildHeight:I

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mDragLayerChildViewLayoutHeight:I

    .line 66
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildWidth:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->setChildWidth(I)V

    .line 67
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildHeight:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->setChildHeight(I)V

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->readShortCut()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    .local v0, arrayList:Ljava/util/ArrayList;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->setAdapter(Ljava/util/ArrayList;)V

    .line 72
    return-void
.end method

.method private setChildHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 354
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildHeight:I

    .line 355
    return-void
.end method

.method private setChildWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 350
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildWidth:I

    .line 351
    return-void
.end method


# virtual methods
.method protected checkLastChildView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 360
    .local v1, index:I
    if-ne v1, v3, :cond_a

    .line 370
    :cond_9
    :goto_9
    return-void

    .line 363
    :cond_a
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 365
    .local v0, dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getViewId()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 366
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->removeView(Landroid/view/View;)V

    goto :goto_9
.end method

.method protected delView(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 262
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 263
    .local v0, dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getViewId()I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 264
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->removeView(Landroid/view/View;)V

    .line 265
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->delShortCutDB(I)V

    .line 269
    .end local v0           #dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    :cond_1f
    return-void

    .line 261
    .restart local v0       #dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected delView(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 248
    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 250
    .local v2, textView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 251
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 252
    .local v0, dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getViewId()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getViewId()I

    move-result v4

    if-ne v3, v4, :cond_27

    .line 253
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->removeView(Landroid/view/View;)V

    .line 254
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->delShortCutDB(I)V

    .line 258
    .end local v0           #dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    :cond_26
    return-void

    .line 250
    .restart local v0       #dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getDragLayerChildView()Landroid/view/View;
    .registers 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 219
    .local v1, index:I
    if-ltz v1, :cond_f

    .line 220
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 223
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getShortCutHelper()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 420
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 433
    .local v0, testBoolean:Z
    return v0
.end method

.method protected plusChildView()V
    .registers 12

    .prologue
    const v10, 0x7f0b00e9

    const/4 v9, 0x5

    const/4 v8, -0x1

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 274
    .local v2, index:I
    if-eq v2, v8, :cond_22

    .line 275
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 278
    .local v0, dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1c

    .line 318
    .end local v0           #dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    :cond_1b
    :goto_1b
    return-void

    .line 281
    .restart local v0       #dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    :cond_1c
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getViewId()I

    move-result v6

    if-eq v6, v8, :cond_1b

    .line 286
    .end local v0           #dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    :cond_22
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-direct {v5, v6, v7}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;-><init>(Landroid/content/Context;Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;)V

    .line 288
    .local v5, textView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 290
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v8}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setViewId(I)V

    .line 292
    iget v6, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mColor:I

    if-eqz v6, :cond_6b

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mColor:I

    invoke-virtual {v5, v6, v1, v7}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 306
    :goto_4c
    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setSingleLine()V

    .line 309
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildWidth:I

    iget v7, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mDragLayerChildViewLayoutHeight:I

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 311
    .local v3, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 312
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 313
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 314
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->invalidate()V

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v2

    .line 318
    goto :goto_1b

    .line 297
    .end local v3           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6b
    const/4 v4, 0x0

    .line 298
    .local v4, nu:I
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4c
.end method

.method protected reset()V
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->resetShortCutDB()V

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mColor:I

    .line 426
    return-void
.end method

.method public saveDBresult(Ljava/lang/Object;I)V
    .registers 7
    .parameter "o"
    .parameter "check"

    .prologue
    .line 188
    if-nez p2, :cond_b

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->updateChildView()V

    .line 209
    :cond_a
    :goto_a
    return-void

    .line 192
    :cond_b
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1a

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->removeAllViews()V

    .line 195
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->init()V

    goto :goto_a

    .line 199
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v1, p1

    .line 201
    check-cast v1, Ljava/util/HashMap;

    .line 202
    .local v1, hashMap:Ljava/util/HashMap;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    .local v0, exId:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->delView(I)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_a

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->plusChildView()V

    goto :goto_a
.end method

.method public setAdapter(Ljava/util/ArrayList;)V
    .registers 2
    .parameter "arrayList"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->addView()V

    .line 78
    return-void
.end method

.method protected setDeleteMode(I)V
    .registers 9
    .parameter "mode"

    .prologue
    const/4 v6, 0x1

    .line 378
    const-string v4, "removeview"

    const-string v5, "setdeletemode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v3

    .line 381
    .local v3, mChildViewCount:I
    if-nez v3, :cond_14

    if-ne p1, v6, :cond_14

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->plusChildView()V

    .line 399
    :cond_13
    return-void

    .line 386
    :cond_14
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v3, :cond_13

    .line 387
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v2

    .line 388
    .local v2, id:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 389
    .local v0, dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setId(I)V

    .line 390
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getViewId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3b

    if-ne p1, v6, :cond_3b

    .line 392
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setDelVisible(I)V

    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->plusChildView()V

    .line 386
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 395
    :cond_3b
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setDelVisible(I)V

    goto :goto_38
.end method

.method protected updateChildView()V
    .registers 7

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 325
    .local v2, index:I
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 328
    .local v0, dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 329
    .local v1, hashMap:Ljava/util/HashMap;
    const-string v4, "_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setViewId(I)V

    .line 332
    const/16 v4, 0x51

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setGravity(I)V

    .line 333
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setSingleLine()V

    .line 334
    iget v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mColor:I

    if-eqz v4, :cond_3c

    .line 335
    iget v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mColor:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setColor(I)V

    .line 336
    :cond_3c
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mChildWidth:I

    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->mDragLayerChildViewLayoutHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    .local v3, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x33

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 340
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->removeView(Landroid/view/View;)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->addView(Landroid/view/View;)V

    .line 342
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setDelVisible(I)V

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getChildCount()I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_5e

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->plusChildView()V

    .line 347
    :cond_5e
    return-void
.end method
