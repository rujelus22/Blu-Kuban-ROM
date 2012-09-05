.class public Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;
.super Ljava/lang/Object;
.source "WidgetIdManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWidgetIds(Landroid/content/Context;II)V
    .registers 11
    .parameter "context"
    .parameter "widgetTypeKey"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 34
    const-string v4, "APNews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWidgetIds() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v4, "APNews_WidgetIDs"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 36
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetID_Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 40
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3d
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_84

    .line 42
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APNews_WidgetIDs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne p2, v4, :cond_81

    .line 54
    :goto_80
    return-void

    .line 40
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 49
    :cond_84
    const-string v4, "APNews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWidgetIds() : ID_Length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v4, "APNews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWidgetIds() : Ids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetID_Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_80
.end method

.method public static getPrefIDs(Landroid/content/Context;I)[I
    .registers 10
    .parameter "context"
    .parameter "widgetTypeKey"

    .prologue
    const/4 v7, 0x0

    .line 17
    const-string v4, "APNews_WidgetIDs"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 18
    .local v3, pref:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetID_Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 20
    .local v2, length:I
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APNews_WidgetID_Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v4, "APNews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPrefIDs() : length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-array v0, v2, [I

    .line 24
    .local v0, WidgetId:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_51
    if-ge v1, v2, :cond_9b

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v1

    .line 27
    const-string v4, "APNews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPrefIDs() : Ids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 29
    :cond_9b
    return-object v0
.end method

.method public static getWidgetType(Landroid/content/Context;I)I
    .registers 14
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    const/4 v9, -0x1

    .line 300
    const-string v10, "APNews_WidgetIDs"

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 302
    .local v8, pref:Landroid/content/SharedPreferences;
    const-string v10, "APNews_WidgetID_Length302"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 303
    .local v2, length_3x2:I
    const-string v10, "APNews_WidgetID_Length202"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 304
    .local v1, length_2x2:I
    const-string v10, "APNews_WidgetID_Length402"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 305
    .local v3, length_4x2:I
    const-string v10, "APNews_WidgetID_Length403"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 306
    .local v4, length_4x3:I
    const-string v10, "APNews_WidgetID_Length404"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 307
    .local v5, length_4x4:I
    const-string v10, "APNews_WidgetID_Length502"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 308
    .local v6, length_5x2:I
    const-string v10, "APNews_WidgetID_Length503"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 310
    .local v7, length_5x3:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_33
    if-ge v0, v2, :cond_56

    .line 312
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs302"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_53

    .line 313
    const/16 v9, 0x12e

    .line 352
    :cond_52
    :goto_52
    return v9

    .line 310
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 316
    :cond_56
    const/4 v0, 0x0

    :goto_57
    if-ge v0, v1, :cond_7a

    .line 318
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs202"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_77

    .line 319
    const/16 v9, 0xca

    goto :goto_52

    .line 316
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 322
    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    if-ge v0, v3, :cond_9e

    .line 324
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs402"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_9b

    .line 325
    const/16 v9, 0x192

    goto :goto_52

    .line 322
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 328
    :cond_9e
    const/4 v0, 0x0

    :goto_9f
    if-ge v0, v4, :cond_c2

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs403"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_bf

    .line 331
    const/16 v9, 0x193

    goto :goto_52

    .line 328
    :cond_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 334
    :cond_c2
    const/4 v0, 0x0

    :goto_c3
    if-ge v0, v5, :cond_e7

    .line 336
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs404"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_e4

    .line 337
    const/16 v9, 0x194

    goto/16 :goto_52

    .line 334
    :cond_e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 340
    :cond_e7
    const/4 v0, 0x0

    :goto_e8
    if-ge v0, v6, :cond_10c

    .line 342
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs502"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_109

    .line 343
    const/16 v9, 0x1f6

    goto/16 :goto_52

    .line 340
    :cond_109
    add-int/lit8 v0, v0, 0x1

    goto :goto_e8

    .line 346
    :cond_10c
    const/4 v0, 0x0

    :goto_10d
    if-ge v0, v7, :cond_52

    .line 348
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs503"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_12e

    .line 349
    const/16 v9, 0x1f7

    goto/16 :goto_52

    .line 346
    :cond_12e
    add-int/lit8 v0, v0, 0x1

    goto :goto_10d
.end method

.method public static isActive(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 209
    const-string v2, "APNews_WidgetIDs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APNews_WidgetID_Length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_21

    .line 213
    const/4 v1, 0x1

    .line 216
    :cond_21
    return v1
.end method

.method public static removeAllWidgetIds(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 223
    const-string v4, "APNews_WidgetIDs"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 224
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "APNews_WidgetID_Length302"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 228
    const-string v4, "APNews_WidgetID_Length302"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 229
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v2, :cond_37

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs302"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 233
    :cond_37
    const-string v4, "APNews_WidgetID_Length302"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_3c
    const-string v4, "APNews_WidgetID_Length202"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 238
    const-string v4, "APNews_WidgetID_Length202"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 239
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4b
    if-ge v1, v2, :cond_68

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs202"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 243
    :cond_68
    const-string v4, "APNews_WidgetID_Length202"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_6d
    const-string v4, "APNews_WidgetID_Length402"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 248
    const-string v4, "APNews_WidgetID_Length402"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 249
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7c
    if-ge v1, v2, :cond_99

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs402"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 253
    :cond_99
    const-string v4, "APNews_WidgetID_Length402"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_9e
    const-string v4, "APNews_WidgetID_Length403"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 258
    const-string v4, "APNews_WidgetID_Length403"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 259
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_ad
    if-ge v1, v2, :cond_ca

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs403"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 263
    :cond_ca
    const-string v4, "APNews_WidgetID_Length403"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_cf
    const-string v4, "APNews_WidgetID_Length404"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 268
    const-string v4, "APNews_WidgetID_Length404"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 269
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_de
    if-ge v1, v2, :cond_fb

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs404"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    .line 273
    :cond_fb
    const-string v4, "APNews_WidgetID_Length404"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_100
    const-string v4, "APNews_WidgetID_Length502"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_131

    .line 278
    const-string v4, "APNews_WidgetID_Length502"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 279
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10f
    if-ge v1, v2, :cond_12c

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs502"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_10f

    .line 283
    :cond_12c
    const-string v4, "APNews_WidgetID_Length502"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_131
    const-string v4, "APNews_WidgetID_Length503"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_162

    .line 288
    const-string v4, "APNews_WidgetID_Length503"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 289
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_140
    if-ge v1, v2, :cond_15d

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APNews_WidgetIDs503"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_140

    .line 293
    :cond_15d
    const-string v4, "APNews_WidgetID_Length503"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method

.method public static removeWidgetIds(Landroid/content/Context;I)V
    .registers 15
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v12, 0x0

    .line 99
    const-string v10, "APNews_WidgetIDs"

    invoke-virtual {p0, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 100
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/4 v9, 0x0

    .line 103
    .local v9, widgetTypeKey:I
    const-string v10, "APNews_WidgetID_Length302"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 105
    const-string v10, "APNews_WidgetID_Length302"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 106
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v2, :cond_3d

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs302"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_3a

    .line 109
    const/16 v9, 0x12e

    .line 106
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 113
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_3d
    const-string v10, "APNews_WidgetID_Length202"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 115
    const-string v10, "APNews_WidgetID_Length202"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 116
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4c
    if-ge v1, v2, :cond_6e

    .line 118
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs202"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_6b

    .line 119
    const/16 v9, 0xca

    .line 116
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 123
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_6e
    const-string v10, "APNews_WidgetID_Length402"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 125
    const-string v10, "APNews_WidgetID_Length402"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7d
    if-ge v1, v2, :cond_9f

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs402"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_9c

    .line 129
    const/16 v9, 0x192

    .line 126
    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 133
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_9f
    const-string v10, "APNews_WidgetID_Length403"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 135
    const-string v10, "APNews_WidgetID_Length403"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_ae
    if-ge v1, v2, :cond_d0

    .line 138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs403"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_cd

    .line 139
    const/16 v9, 0x193

    .line 136
    :cond_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    .line 143
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_d0
    const-string v10, "APNews_WidgetID_Length404"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_101

    .line 145
    const-string v10, "APNews_WidgetID_Length404"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 146
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_df
    if-ge v1, v2, :cond_101

    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs404"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_fe

    .line 149
    const/16 v9, 0x194

    .line 146
    :cond_fe
    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    .line 153
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_101
    const-string v10, "APNews_WidgetID_Length502"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_132

    .line 155
    const-string v10, "APNews_WidgetID_Length502"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 156
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_110
    if-ge v1, v2, :cond_132

    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs502"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_12f

    .line 159
    const/16 v9, 0x1f6

    .line 156
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_110

    .line 163
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_132
    const-string v10, "APNews_WidgetID_Length503"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_163

    .line 165
    const-string v10, "APNews_WidgetID_Length503"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 166
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_141
    if-ge v1, v2, :cond_163

    .line 168
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs503"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_160

    .line 169
    const/16 v9, 0x1f7

    .line 166
    :cond_160
    add-int/lit8 v1, v1, 0x1

    goto :goto_141

    .line 173
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_163
    if-eqz v9, :cond_216

    .line 175
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetID_Length"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 176
    .restart local v2       #length:I
    new-array v3, v2, [I

    .line 177
    .local v3, mWidgetId:[I
    add-int/lit8 v10, v2, -0x1

    new-array v7, v10, [I

    .line 178
    .local v7, tmpWidgetId:[I
    const/4 v5, 0x0

    .line 179
    .local v5, tmp:I
    const/4 v8, -0x1

    .line 181
    .local v8, widgetPosition:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    move v6, v5

    .end local v5           #tmp:I
    .local v6, tmp:I
    :goto_186
    if-ge v1, v2, :cond_1b8

    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    aput v10, v3, v1

    .line 184
    aget v10, v3, v1

    if-ne v10, p1, :cond_1b1

    .line 186
    move v8, v1

    move v5, v6

    .line 181
    .end local v6           #tmp:I
    .restart local v5       #tmp:I
    :goto_1ad
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #tmp:I
    .restart local v6       #tmp:I
    goto :goto_186

    .line 190
    :cond_1b1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmp:I
    .restart local v5       #tmp:I
    aget v10, v3, v1

    aput v10, v7, v6

    goto :goto_1ad

    .line 194
    .end local v5           #tmp:I
    .restart local v6       #tmp:I
    :cond_1b8
    const/4 v10, -0x1

    if-eq v8, v10, :cond_216

    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetID_Length"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v2, -0x1

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    const/4 v1, 0x0

    :goto_1d4
    add-int/lit8 v10, v2, -0x1

    if-ge v1, v10, :cond_1f9

    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aget v11, v7, v1

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d4

    .line 201
    :cond_1f9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APNews_WidgetIDs"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mWidgetId:[I
    .end local v6           #tmp:I
    .end local v7           #tmpWidgetId:[I
    .end local v8           #widgetPosition:I
    :cond_216
    return-void
.end method

.method public static setWidgetType(Landroid/content/Context;II)V
    .registers 26
    .parameter "context"
    .parameter "id"
    .parameter "newtype"

    .prologue
    .line 358
    const-string v21, "APNews_WidgetIDs"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 359
    .local v15, pref:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 361
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v21, "APNews_WidgetID_Length302"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 362
    .local v7, length_3x2:I
    const-string v21, "APNews_WidgetID_Length202"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 363
    .local v6, length_2x2:I
    const-string v21, "APNews_WidgetID_Length402"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 364
    .local v8, length_4x2:I
    const-string v21, "APNews_WidgetID_Length403"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 365
    .local v9, length_4x3:I
    const-string v21, "APNews_WidgetID_Length404"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 366
    .local v10, length_4x4:I
    const-string v21, "APNews_WidgetID_Length502"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 367
    .local v11, length_5x2:I
    const-string v21, "APNews_WidgetID_Length503"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 371
    .local v12, length_5x3:I
    const/16 v20, 0x0

    .line 373
    .local v20, widgetTypeKey:I
    const-string v21, "APNews_WidgetID_Length302"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9f

    .line 375
    const/4 v4, 0x0

    .local v4, i:I
    :goto_73
    if-ge v4, v7, :cond_9f

    .line 376
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs302"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_9c

    .line 377
    const/16 v20, 0x12e

    .line 375
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 382
    .end local v4           #i:I
    :cond_9f
    const-string v21, "APNews_WidgetID_Length202"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d6

    .line 384
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_aa
    if-ge v4, v6, :cond_d6

    .line 385
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs202"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_d3

    .line 386
    const/16 v20, 0xca

    .line 384
    :cond_d3
    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    .line 392
    .end local v4           #i:I
    :cond_d6
    const-string v21, "APNews_WidgetID_Length402"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10d

    .line 394
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_e1
    if-ge v4, v8, :cond_10d

    .line 395
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs402"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_10a

    .line 396
    const/16 v20, 0x192

    .line 394
    :cond_10a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e1

    .line 402
    .end local v4           #i:I
    :cond_10d
    const-string v21, "APNews_WidgetID_Length403"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_144

    .line 404
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_118
    if-ge v4, v9, :cond_144

    .line 405
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs403"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_141

    .line 406
    const/16 v20, 0x193

    .line 404
    :cond_141
    add-int/lit8 v4, v4, 0x1

    goto :goto_118

    .line 412
    .end local v4           #i:I
    :cond_144
    const-string v21, "APNews_WidgetID_Length404"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17b

    .line 414
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_14f
    if-ge v4, v10, :cond_17b

    .line 415
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs404"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_178

    .line 416
    const/16 v20, 0x194

    .line 414
    :cond_178
    add-int/lit8 v4, v4, 0x1

    goto :goto_14f

    .line 421
    .end local v4           #i:I
    :cond_17b
    const-string v21, "APNews_WidgetID_Length502"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1b2

    .line 423
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_186
    if-ge v4, v11, :cond_1b2

    .line 424
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs502"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_1af

    .line 425
    const/16 v20, 0x1f6

    .line 423
    :cond_1af
    add-int/lit8 v4, v4, 0x1

    goto :goto_186

    .line 430
    .end local v4           #i:I
    :cond_1b2
    const-string v21, "APNews_WidgetID_Length503"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1e9

    .line 432
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1bd
    if-ge v4, v12, :cond_1e9

    .line 433
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs503"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_1e6

    .line 434
    const/16 v20, 0x1f7

    .line 432
    :cond_1e6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1bd

    .line 439
    .end local v4           #i:I
    :cond_1e9
    if-eqz v20, :cond_2da

    .line 441
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetID_Length"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 442
    .local v5, length:I
    new-array v13, v5, [I

    .line 443
    .local v13, mWidgetId:[I
    add-int/lit8 v21, v5, -0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 444
    .local v18, tmpWidgetId:[I
    const/16 v16, 0x0

    .line 445
    .local v16, tmp:I
    const/16 v19, -0x1

    .line 447
    .local v19, widgetPosition:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    move/from16 v17, v16

    .end local v16           #tmp:I
    .local v17, tmp:I
    :goto_21d
    if-ge v4, v5, :cond_260

    .line 449
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    aput v21, v13, v4

    .line 450
    aget v21, v13, v4

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_259

    .line 452
    move/from16 v19, v4

    move/from16 v16, v17

    .line 447
    .end local v17           #tmp:I
    .restart local v16       #tmp:I
    :goto_254
    add-int/lit8 v4, v4, 0x1

    move/from16 v17, v16

    .end local v16           #tmp:I
    .restart local v17       #tmp:I
    goto :goto_21d

    .line 456
    :cond_259
    add-int/lit8 v16, v17, 0x1

    .end local v17           #tmp:I
    .restart local v16       #tmp:I
    aget v21, v13, v4

    aput v21, v18, v17

    goto :goto_254

    .line 460
    .end local v16           #tmp:I
    .restart local v17       #tmp:I
    :cond_260
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2da

    .line 462
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetID_Length"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    add-int/lit8 v22, v5, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 463
    const/4 v4, 0x0

    :goto_289
    add-int/lit8 v21, v5, -0x1

    move/from16 v0, v21

    if-ge v4, v0, :cond_2b8

    .line 465
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v4, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aget v22, v18, v4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_289

    .line 467
    :cond_2b8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 472
    .end local v4           #i:I
    .end local v5           #length:I
    .end local v13           #mWidgetId:[I
    .end local v17           #tmp:I
    .end local v18           #tmpWidgetId:[I
    .end local v19           #widgetPosition:I
    :cond_2da
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetID_Length"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 473
    .local v14, newtypelength:I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetIDs"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 474
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "APNews_WidgetID_Length"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 475
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 478
    return-void
.end method
