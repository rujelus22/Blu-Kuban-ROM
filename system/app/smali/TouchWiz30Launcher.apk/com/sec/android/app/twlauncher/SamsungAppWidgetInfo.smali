.class Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "SamsungAppWidgetInfo.java"


# instance fields
.field intent:Landroid/content/Intent;

.field mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

.field state:I

.field widgetId:J

.field widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 63
    return-void
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .registers 5
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .registers 24
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"
    .parameter "widgetInfo"

    .prologue
    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    if-nez p4, :cond_bf

    .line 181
    new-instance v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v7           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-direct {v7}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 182
    .restart local v7       #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    move-wide/from16 v0, p2

    iput-wide v0, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    .line 189
    :cond_c
    :goto_c
    const/4 v3, 0x0

    .line 190
    .local v3, contentView:Landroid/view/View;
    const/4 v12, 0x0

    .line 191
    .local v12, orientation:I
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/app/ActivityGroup;

    if-eqz v15, :cond_95

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    if-eqz v15, :cond_95

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz v15, :cond_95

    move-object/from16 v6, p0

    .line 193
    check-cast v6, Landroid/app/ActivityGroup;

    .line 194
    .local v6, group:Landroid/app/ActivityGroup;
    invoke-virtual {v6}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v11

    .line 196
    .local v11, manager:Landroid/app/LocalActivityManager;
    const/4 v2, 0x0

    .line 198
    .local v2, c:Landroid/content/Context;
    :try_start_29
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_36} :catch_cf

    move-result-object v2

    .line 226
    :goto_37
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v15, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/4 v13, 0x0

    .line 234
    .local v13, w:Landroid/view/Window;
    :try_start_59
    iget-wide v15, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15, v8}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_d5

    move-result-object v13

    .line 240
    :goto_63
    if-eqz v13, :cond_fb

    const v15, 0x1020002

    invoke-virtual {v13, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 241
    .local v10, mainView:Landroid/view/View;
    :goto_6c
    if-eqz v10, :cond_fe

    move-object v15, v10

    check-cast v15, Landroid/view/ViewGroup;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 243
    :goto_77
    if-eqz v3, :cond_7e

    .line 244
    check-cast v10, Landroid/view/ViewGroup;

    .end local v10           #mainView:Landroid/view/View;
    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 250
    :cond_7e
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v15, v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v2           #c:Landroid/content/Context;
    .end local v6           #group:Landroid/app/ActivityGroup;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #manager:Landroid/app/LocalActivityManager;
    .end local v13           #w:Landroid/view/Window;
    :cond_95
    new-instance v14, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 255
    .local v14, widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v9, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v15, 0x11

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    if-eqz v3, :cond_101

    .line 260
    invoke-virtual {v14, v3, v9}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    :goto_b8
    iput-object v14, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 266
    move-object/from16 v0, p1

    iput-object v0, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 268
    return-object v7

    .line 184
    .end local v3           #contentView:Landroid/view/View;
    .end local v9           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v12           #orientation:I
    .end local v14           #widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    :cond_bf
    move-object/from16 v7, p4

    .line 185
    iget-wide v15, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_c

    .line 186
    move-wide/from16 v0, p2

    iput-wide v0, v7, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    goto/16 :goto_c

    .line 200
    .restart local v2       #c:Landroid/content/Context;
    .restart local v3       #contentView:Landroid/view/View;
    .restart local v6       #group:Landroid/app/ActivityGroup;
    .restart local v11       #manager:Landroid/app/LocalActivityManager;
    .restart local v12       #orientation:I
    :catch_cf
    move-exception v5

    .line 201
    .local v5, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_37

    .line 235
    .end local v5           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v13       #w:Landroid/view/Window;
    :catch_d5
    move-exception v4

    .line 236
    .local v4, e:Ljava/lang/Exception;
    const-string v15, "SamsungAppWidgetInfo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed startActivity("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_63

    .line 240
    .end local v4           #e:Ljava/lang/Exception;
    :cond_fb
    const/4 v10, 0x0

    goto/16 :goto_6c

    .line 241
    .restart local v10       #mainView:Landroid/view/View;
    :cond_fe
    const/4 v3, 0x0

    goto/16 :goto_77

    .line 262
    .end local v2           #c:Landroid/content/Context;
    .end local v6           #group:Landroid/app/ActivityGroup;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #mainView:Landroid/view/View;
    .end local v11           #manager:Landroid/app/LocalActivityManager;
    .end local v13           #w:Landroid/view/Window;
    .restart local v9       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v14       #widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    :cond_101
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b8
.end method


# virtual methods
.method public fireOnPause(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 130
    :cond_6
    :goto_6
    return-void

    .line 95
    :cond_7
    if-eqz p1, :cond_6

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 96
    check-cast p1, Landroid/app/ActivityGroup;

    .line 97
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_6

    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 104
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_33
    array-length v4, v3

    if-ge v1, v4, :cond_4d

    .line 105
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 106
    aget-object v0, v3, v1

    .line 104
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 110
    :cond_4d
    if-eqz v0, :cond_6

    .line 112
    :try_start_4f
    const-string v1, "fireOnPause"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_6

    .line 114
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_5f} :catch_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4f .. :try_end_5f} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_5f} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4f .. :try_end_5f} :catch_6f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4f .. :try_end_5f} :catch_74

    goto :goto_6

    .line 117
    :catch_60
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_6

    .line 119
    :catch_65
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_6

    .line 121
    :catch_6a
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_6

    .line 123
    :catch_6f
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6

    .line 125
    :catch_74
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_6
.end method

.method public fireOnResume(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I

    if-ne v0, v2, :cond_7

    .line 170
    :cond_6
    :goto_6
    return-void

    .line 135
    :cond_7
    if-eqz p1, :cond_6

    instance-of v0, p1, Landroid/app/ActivityGroup;

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 136
    check-cast p1, Landroid/app/ActivityGroup;

    .line 137
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_6

    .line 142
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 144
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_33
    array-length v4, v3

    if-ge v1, v4, :cond_4d

    .line 145
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 146
    aget-object v0, v3, v1

    .line 144
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 150
    :cond_4d
    if-eqz v0, :cond_6

    .line 152
    :try_start_4f
    const-string v1, "fireOnResume"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->state:I
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_5f} :catch_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4f .. :try_end_5f} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_5f} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4f .. :try_end_5f} :catch_6f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4f .. :try_end_5f} :catch_74

    goto :goto_6

    .line 157
    :catch_60
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_6

    .line 159
    :catch_65
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_6

    .line 161
    :catch_6a
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_6

    .line 163
    :catch_6f
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6

    .line 165
    :catch_74
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_6
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, uri:Ljava/lang/String;
    :goto_e
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 80
    .end local v0           #uri:Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    goto :goto_e
.end method

.method final setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"
    .parameter "className"
    .parameter "themeName"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
