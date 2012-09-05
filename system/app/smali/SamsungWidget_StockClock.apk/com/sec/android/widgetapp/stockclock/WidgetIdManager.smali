.class public Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;
.super Ljava/lang/Object;
.source "WidgetIdManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
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

    .line 42
    const-string v4, "StockClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWidgetIds() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v4, "StockClock_WidgetIDs"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 44
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetID_Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 48
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3d
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_84

    .line 50
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StockClock_WidgetIDs"

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

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs"

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

    .line 62
    :goto_80
    return-void

    .line 48
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 57
    :cond_84
    const-string v4, "StockClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWidgetIds() : ID_Length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v4, "StockClock"

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

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetID_Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_80
.end method

.method public static getPrefIDs(Landroid/content/Context;I)[I
    .registers 10
    .parameter "context"
    .parameter "widgetTypeKey"

    .prologue
    const/4 v7, 0x0

    .line 25
    const-string v4, "StockClock_WidgetIDs"

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 26
    .local v3, pref:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetID_Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 28
    .local v2, length:I
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StockClock_WidgetID_Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v4, "StockClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPrefIDs() : length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-array v0, v2, [I

    .line 32
    .local v0, WidgetId:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_51
    if-ge v1, v2, :cond_9b

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs"

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

    .line 35
    const-string v4, "StockClock"

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

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 37
    :cond_9b
    return-object v0
.end method

.method public static getWidgetIndex(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1175
    const-string v1, "StockClock_WidgetIDs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1176
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StockClock_WidgetID_Symbol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWidgetType(Landroid/content/Context;I)I
    .registers 24
    .parameter "context"
    .parameter "id"

    .prologue
    .line 600
    const-string v20, "StockClock_WidgetIDs"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 603
    .local v19, pref:Landroid/content/SharedPreferences;
    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v20

    const v21, 0xe1000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e3

    .line 605
    const-string v20, "StockClock_WidgetID_Length201"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 606
    .local v4, length_2x1:I
    const-string v20, "StockClock_WidgetID_Length203"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 607
    .local v6, length_2x3:I
    const-string v20, "StockClock_WidgetID_Length205"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 608
    .local v8, length_2x5:I
    const-string v20, "StockClock_WidgetID_Length401"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 611
    .local v14, length_4x1:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3c
    if-ge v3, v4, :cond_65

    .line 613
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs201"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_62

    .line 614
    const/16 v20, 0xc9

    .line 765
    .end local v4           #length_2x1:I
    .end local v6           #length_2x3:I
    .end local v8           #length_2x5:I
    :goto_61
    return v20

    .line 611
    .restart local v4       #length_2x1:I
    .restart local v6       #length_2x3:I
    .restart local v8       #length_2x5:I
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 617
    :cond_65
    const/4 v3, 0x0

    :goto_66
    if-ge v3, v6, :cond_8f

    .line 619
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs203"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_8c

    .line 620
    const/16 v20, 0xcb

    goto :goto_61

    .line 617
    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 623
    :cond_8f
    const/4 v3, 0x0

    :goto_90
    if-ge v3, v8, :cond_b9

    .line 625
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs205"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_b6

    .line 626
    const/16 v20, 0xcd

    goto :goto_61

    .line 623
    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    .line 629
    :cond_b9
    const/4 v3, 0x0

    :goto_ba
    if-ge v3, v14, :cond_45b

    .line 631
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs401"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_e0

    .line 632
    const/16 v20, 0x191

    goto :goto_61

    .line 629
    :cond_e0
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 636
    .end local v3           #i:I
    .end local v4           #length_2x1:I
    .end local v6           #length_2x3:I
    .end local v8           #length_2x5:I
    .end local v14           #length_4x1:I
    :cond_e3
    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v20

    const v21, 0x25800

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f3

    .line 638
    const-string v20, "StockClock_WidgetID_Length201"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 639
    .local v5, length_2x2:I
    const-string v20, "StockClock_WidgetID_Length401"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 640
    .restart local v14       #length_4x1:I
    const-string v20, "StockClock_WidgetID_Length402"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 641
    .local v15, length_4x2:I
    const-string v20, "StockClock_WidgetID_Length403"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 642
    .local v16, length_4x3:I
    const-string v20, "StockClock_WidgetID_Length404"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 645
    .local v17, length_4x4:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_119
    if-ge v3, v5, :cond_143

    .line 647
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs201"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_140

    .line 648
    const/16 v20, 0xc9

    goto/16 :goto_61

    .line 645
    :cond_140
    add-int/lit8 v3, v3, 0x1

    goto :goto_119

    .line 651
    :cond_143
    const/4 v3, 0x0

    :goto_144
    if-ge v3, v14, :cond_16e

    .line 653
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs401"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_16b

    .line 654
    const/16 v20, 0x191

    goto/16 :goto_61

    .line 651
    :cond_16b
    add-int/lit8 v3, v3, 0x1

    goto :goto_144

    .line 657
    :cond_16e
    const/4 v3, 0x0

    :goto_16f
    if-ge v3, v15, :cond_199

    .line 659
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs402"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_196

    .line 660
    const/16 v20, 0x192

    goto/16 :goto_61

    .line 657
    :cond_196
    add-int/lit8 v3, v3, 0x1

    goto :goto_16f

    .line 663
    :cond_199
    const/4 v3, 0x0

    :goto_19a
    move/from16 v0, v16

    if-ge v3, v0, :cond_1c6

    .line 665
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs403"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_1c3

    .line 666
    const/16 v20, 0x193

    goto/16 :goto_61

    .line 663
    :cond_1c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_19a

    .line 669
    :cond_1c6
    const/4 v3, 0x0

    :goto_1c7
    move/from16 v0, v17

    if-ge v3, v0, :cond_45b

    .line 671
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs404"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_1f0

    .line 672
    const/16 v20, 0x194

    goto/16 :goto_61

    .line 669
    :cond_1f0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c7

    .line 677
    .end local v3           #i:I
    .end local v5           #length_2x2:I
    .end local v14           #length_4x1:I
    .end local v15           #length_4x2:I
    .end local v16           #length_4x3:I
    .end local v17           #length_4x4:I
    :cond_1f3
    const-string v20, "StockClock_WidgetID_Length401"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 678
    .restart local v14       #length_4x1:I
    const-string v20, "StockClock_WidgetID_Length202"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 679
    .restart local v5       #length_2x2:I
    const-string v20, "StockClock_WidgetID_Length204"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 680
    .local v7, length_2x4:I
    const-string v20, "StockClock_WidgetID_Length201"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 681
    .restart local v4       #length_2x1:I
    const-string v20, "StockClock_WidgetID_Length404"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 682
    .restart local v17       #length_4x4:I
    const-string v20, "StockClock_WidgetID_Length402"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 684
    .restart local v15       #length_4x2:I
    const-string v20, "StockClock_WidgetID_Length301"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 685
    .local v9, length_3x1:I
    const-string v20, "StockClock_WidgetID_Length302"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 686
    .local v10, length_3x2:I
    const-string v20, "StockClock_WidgetID_Length303"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 687
    .local v11, length_3x3:I
    const-string v20, "StockClock_WidgetID_Length304"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 688
    .local v12, length_3x4:I
    const-string v20, "StockClock_WidgetID_Length305"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 689
    .local v13, length_3x5:I
    const-string v20, "StockClock_WidgetID_Length501"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 691
    .local v18, length_5x1:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_254
    if-ge v3, v14, :cond_27e

    .line 693
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs401"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_27b

    .line 694
    const/16 v20, 0x191

    goto/16 :goto_61

    .line 691
    :cond_27b
    add-int/lit8 v3, v3, 0x1

    goto :goto_254

    .line 697
    :cond_27e
    const/4 v3, 0x0

    :goto_27f
    if-ge v3, v5, :cond_2a9

    .line 699
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs202"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_2a6

    .line 700
    const/16 v20, 0xca

    goto/16 :goto_61

    .line 697
    :cond_2a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_27f

    .line 703
    :cond_2a9
    const/4 v3, 0x0

    :goto_2aa
    if-ge v3, v7, :cond_2d4

    .line 705
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs204"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_2d1

    .line 706
    const/16 v20, 0xcc

    goto/16 :goto_61

    .line 703
    :cond_2d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2aa

    .line 709
    :cond_2d4
    const/4 v3, 0x0

    :goto_2d5
    if-ge v3, v4, :cond_2ff

    .line 711
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs201"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_2fc

    .line 712
    const/16 v20, 0xc9

    goto/16 :goto_61

    .line 709
    :cond_2fc
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d5

    .line 715
    :cond_2ff
    const/4 v3, 0x0

    :goto_300
    move/from16 v0, v17

    if-ge v3, v0, :cond_32c

    .line 716
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs404"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_329

    .line 717
    const/16 v20, 0x194

    goto/16 :goto_61

    .line 715
    :cond_329
    add-int/lit8 v3, v3, 0x1

    goto :goto_300

    .line 721
    :cond_32c
    const/4 v3, 0x0

    :goto_32d
    if-ge v3, v15, :cond_357

    .line 722
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs402"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_354

    .line 723
    const/16 v20, 0x192

    goto/16 :goto_61

    .line 721
    :cond_354
    add-int/lit8 v3, v3, 0x1

    goto :goto_32d

    .line 727
    :cond_357
    const/4 v3, 0x0

    :goto_358
    if-ge v3, v9, :cond_382

    .line 729
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs301"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_37f

    .line 730
    const/16 v20, 0x12d

    goto/16 :goto_61

    .line 727
    :cond_37f
    add-int/lit8 v3, v3, 0x1

    goto :goto_358

    .line 733
    :cond_382
    const/4 v3, 0x0

    :goto_383
    if-ge v3, v10, :cond_3ad

    .line 735
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs302"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_3aa

    .line 736
    const/16 v20, 0x12e

    goto/16 :goto_61

    .line 733
    :cond_3aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_383

    .line 739
    :cond_3ad
    const/4 v3, 0x0

    :goto_3ae
    if-ge v3, v11, :cond_3d8

    .line 741
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs303"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_3d5

    .line 742
    const/16 v20, 0x12f

    goto/16 :goto_61

    .line 739
    :cond_3d5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3ae

    .line 745
    :cond_3d8
    const/4 v3, 0x0

    :goto_3d9
    if-ge v3, v12, :cond_403

    .line 747
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs304"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_400

    .line 748
    const/16 v20, 0x130

    goto/16 :goto_61

    .line 745
    :cond_400
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d9

    .line 751
    :cond_403
    const/4 v3, 0x0

    :goto_404
    if-ge v3, v13, :cond_42e

    .line 753
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs305"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_42b

    .line 754
    const/16 v20, 0x131

    goto/16 :goto_61

    .line 751
    :cond_42b
    add-int/lit8 v3, v3, 0x1

    goto :goto_404

    .line 758
    :cond_42e
    const/4 v3, 0x0

    :goto_42f
    move/from16 v0, v18

    if-ge v3, v0, :cond_45b

    .line 760
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StockClock_WidgetIDs501"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v3, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_458

    .line 761
    const/16 v20, 0x1f5

    goto/16 :goto_61

    .line 758
    :cond_458
    add-int/lit8 v3, v3, 0x1

    goto :goto_42f

    .line 765
    .end local v4           #length_2x1:I
    .end local v5           #length_2x2:I
    .end local v7           #length_2x4:I
    .end local v9           #length_3x1:I
    .end local v10           #length_3x2:I
    .end local v11           #length_3x3:I
    .end local v12           #length_3x4:I
    .end local v13           #length_3x5:I
    .end local v15           #length_4x2:I
    .end local v17           #length_4x4:I
    .end local v18           #length_5x1:I
    :cond_45b
    const/16 v20, -0x1

    goto/16 :goto_61
.end method

.method public static getYahooUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 1190
    const-string v1, "StockClock_WidgetIDs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1191
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "StockClock_Widget_UUID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isActive(Landroid/content/Context;I)Z
    .registers 5
    .parameter "context"
    .parameter "type"

    .prologue
    .line 367
    const-string v1, "StockClock_WidgetIDs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StockClock_WidgetID_Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static removeAllWidgetIds(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 373
    const-string v4, "StockClock_WidgetIDs"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 374
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v4

    const v5, 0xe1000

    if-ne v4, v5, :cond_104

    .line 380
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 382
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 383
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v2, :cond_40

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs201"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 387
    :cond_40
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_45
    const-string v4, "StockClock_WidgetID_Length203"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 392
    const-string v4, "StockClock_WidgetID_Length203"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 393
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_54
    if-ge v1, v2, :cond_71

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs203"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 397
    :cond_71
    const-string v4, "StockClock_WidgetID_Length203"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_76
    const-string v4, "StockClock_WidgetID_Length205"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 402
    const-string v4, "StockClock_WidgetID_Length205"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 403
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_85
    if-ge v1, v2, :cond_a2

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs205"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 407
    :cond_a2
    const-string v4, "StockClock_WidgetID_Length205"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_a7
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 412
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 413
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_b6
    if-ge v1, v2, :cond_d3

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs401"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    .line 417
    :cond_d3
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 533
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_d8
    :goto_d8
    const-string v4, "StockClock_WidgetID_Length301"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_331

    .line 535
    const-string v4, "StockClock_WidgetID_Length301"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 536
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_e7
    if-ge v1, v2, :cond_32c

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs301"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    .line 420
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_104
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v4

    const v5, 0x25800

    if-ne v4, v5, :cond_204

    .line 423
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13e

    .line 425
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 426
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_11c
    if-ge v1, v2, :cond_139

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs201"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    .line 430
    :cond_139
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_13e
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 435
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 436
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_14d
    if-ge v1, v2, :cond_16a

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs401"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_14d

    .line 440
    :cond_16a
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_16f
    const-string v4, "StockClock_WidgetID_Length402"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 445
    const-string v4, "StockClock_WidgetID_Length402"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 446
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_17e
    if-ge v1, v2, :cond_19b

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs402"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_17e

    .line 450
    :cond_19b
    const-string v4, "StockClock_WidgetID_Length402"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1a0
    const-string v4, "StockClock_WidgetID_Length403"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 455
    const-string v4, "StockClock_WidgetID_Length403"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 456
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1af
    if-ge v1, v2, :cond_1cc

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs403"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_1af

    .line 460
    :cond_1cc
    const-string v4, "StockClock_WidgetID_Length403"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1d1
    const-string v4, "StockClock_WidgetID_Length404"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 465
    const-string v4, "StockClock_WidgetID_Length404"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 466
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1e0
    if-ge v1, v2, :cond_1fd

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs404"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e0

    .line 470
    :cond_1fd
    const-string v4, "StockClock_WidgetID_Length404"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_d8

    .line 475
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_204
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_235

    .line 477
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 478
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_213
    if-ge v1, v2, :cond_230

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs401"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_213

    .line 482
    :cond_230
    const-string v4, "StockClock_WidgetID_Length401"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_235
    const-string v4, "StockClock_WidgetID_Length202"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_266

    .line 487
    const-string v4, "StockClock_WidgetID_Length202"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 488
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_244
    if-ge v1, v2, :cond_261

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs202"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_244

    .line 492
    :cond_261
    const-string v4, "StockClock_WidgetID_Length202"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 495
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_266
    const-string v4, "StockClock_WidgetID_Length204"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_297

    .line 497
    const-string v4, "StockClock_WidgetID_Length204"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 498
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_275
    if-ge v1, v2, :cond_292

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs204"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_275

    .line 502
    :cond_292
    const-string v4, "StockClock_WidgetID_Length204"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 505
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_297
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c8

    .line 507
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 508
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2a6
    if-ge v1, v2, :cond_2c3

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs201"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a6

    .line 512
    :cond_2c3
    const-string v4, "StockClock_WidgetID_Length201"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2c8
    const-string v4, "StockClock_WidgetID_Length404"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f9

    .line 516
    const-string v4, "StockClock_WidgetID_Length404"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 517
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2d7
    if-ge v1, v2, :cond_2f4

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs404"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d7

    .line 520
    :cond_2f4
    const-string v4, "StockClock_WidgetID_Length404"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2f9
    const-string v4, "StockClock_WidgetID_Length402"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 525
    const-string v4, "StockClock_WidgetID_Length402"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 526
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_308
    if-ge v1, v2, :cond_325

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs402"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_308

    .line 529
    :cond_325
    const-string v4, "StockClock_WidgetID_Length402"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_d8

    .line 540
    :cond_32c
    const-string v4, "StockClock_WidgetID_Length301"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 543
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_331
    const-string v4, "StockClock_WidgetID_Length302"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_362

    .line 545
    const-string v4, "StockClock_WidgetID_Length302"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 546
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_340
    if-ge v1, v2, :cond_35d

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs302"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_340

    .line 550
    :cond_35d
    const-string v4, "StockClock_WidgetID_Length302"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_362
    const-string v4, "StockClock_WidgetID_Length303"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_393

    .line 555
    const-string v4, "StockClock_WidgetID_Length303"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 556
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_371
    if-ge v1, v2, :cond_38e

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs303"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_371

    .line 560
    :cond_38e
    const-string v4, "StockClock_WidgetID_Length303"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 563
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_393
    const-string v4, "StockClock_WidgetID_Length304"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c4

    .line 565
    const-string v4, "StockClock_WidgetID_Length304"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 566
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3a2
    if-ge v1, v2, :cond_3bf

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs304"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a2

    .line 570
    :cond_3bf
    const-string v4, "StockClock_WidgetID_Length304"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_3c4
    const-string v4, "StockClock_WidgetID_Length305"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f5

    .line 575
    const-string v4, "StockClock_WidgetID_Length305"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 576
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3d3
    if-ge v1, v2, :cond_3f0

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs305"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d3

    .line 580
    :cond_3f0
    const-string v4, "StockClock_WidgetID_Length305"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 584
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_3f5
    const-string v4, "StockClock_WidgetID_Length501"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_426

    .line 586
    const-string v4, "StockClock_WidgetID_Length501"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 587
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_404
    if-ge v1, v2, :cond_421

    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockClock_WidgetIDs501"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_404

    .line 591
    :cond_421
    const-string v4, "StockClock_WidgetID_Length501"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 595
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 596
    return-void
.end method

.method public static removeWidgetIds(Landroid/content/Context;I)V
    .registers 15
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v12, 0x0

    .line 107
    const-string v10, "StockClock_WidgetIDs"

    invoke-virtual {p0, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 108
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/4 v9, 0x0

    .line 113
    .local v9, widgetTypeKey:I
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v10

    const v11, 0xe1000

    if-ne v10, v11, :cond_d9

    .line 116
    const-string v10, "StockClock_WidgetID_Length201"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 118
    const-string v10, "StockClock_WidgetID_Length201"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 119
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    if-ge v1, v2, :cond_46

    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs201"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_43

    .line 122
    const/16 v9, 0xc9

    .line 119
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 126
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_46
    const-string v10, "StockClock_WidgetID_Length203"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 128
    const-string v10, "StockClock_WidgetID_Length203"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 129
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_55
    if-ge v1, v2, :cond_77

    .line 131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs203"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_74

    .line 132
    const/16 v9, 0xcb

    .line 129
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 136
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_77
    const-string v10, "StockClock_WidgetID_Length205"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a8

    .line 138
    const-string v10, "StockClock_WidgetID_Length205"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_86
    if-ge v1, v2, :cond_a8

    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs205"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_a5

    .line 142
    const/16 v9, 0xcd

    .line 139
    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 146
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_a8
    const-string v10, "StockClock_WidgetID_Length401"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2fd

    .line 148
    const-string v10, "StockClock_WidgetID_Length401"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 149
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_b7
    if-ge v1, v2, :cond_2fd

    .line 151
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs401"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_d6

    .line 152
    const/16 v9, 0x191

    .line 149
    :cond_d6
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 156
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_d9
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v10

    const v11, 0x25800

    if-ne v10, v11, :cond_1d7

    .line 159
    const-string v10, "StockClock_WidgetID_Length201"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_113

    .line 161
    const-string v10, "StockClock_WidgetID_Length201"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 162
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_f1
    if-ge v1, v2, :cond_113

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs201"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_110

    .line 165
    const/16 v9, 0xc9

    .line 162
    :cond_110
    add-int/lit8 v1, v1, 0x1

    goto :goto_f1

    .line 169
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_113
    const-string v10, "StockClock_WidgetID_Length401"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_144

    .line 171
    const-string v10, "StockClock_WidgetID_Length401"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_122
    if-ge v1, v2, :cond_144

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs401"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_141

    .line 175
    const/16 v9, 0x191

    .line 172
    :cond_141
    add-int/lit8 v1, v1, 0x1

    goto :goto_122

    .line 179
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_144
    const-string v10, "StockClock_WidgetID_Length402"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_175

    .line 181
    const-string v10, "StockClock_WidgetID_Length402"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 182
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_153
    if-ge v1, v2, :cond_175

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs402"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_172

    .line 185
    const/16 v9, 0x192

    .line 182
    :cond_172
    add-int/lit8 v1, v1, 0x1

    goto :goto_153

    .line 189
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_175
    const-string v10, "StockClock_WidgetID_Length403"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a6

    .line 191
    const-string v10, "StockClock_WidgetID_Length403"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 192
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_184
    if-ge v1, v2, :cond_1a6

    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs403"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_1a3

    .line 195
    const/16 v9, 0x193

    .line 192
    :cond_1a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_184

    .line 199
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1a6
    const-string v10, "StockClock_WidgetID_Length404"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2fd

    .line 201
    const-string v10, "StockClock_WidgetID_Length404"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 202
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1b5
    if-ge v1, v2, :cond_2fd

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs404"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_1d4

    .line 205
    const/16 v9, 0x194

    .line 202
    :cond_1d4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b5

    .line 211
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1d7
    const-string v10, "StockClock_WidgetID_Length401"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_208

    .line 213
    const-string v10, "StockClock_WidgetID_Length401"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 214
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1e6
    if-ge v1, v2, :cond_208

    .line 216
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs401"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_205

    .line 217
    const/16 v9, 0x191

    .line 214
    :cond_205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e6

    .line 221
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_208
    const-string v10, "StockClock_WidgetID_Length202"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_239

    .line 223
    const-string v10, "StockClock_WidgetID_Length202"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 224
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_217
    if-ge v1, v2, :cond_239

    .line 226
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs202"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_236

    .line 227
    const/16 v9, 0xca

    .line 224
    :cond_236
    add-int/lit8 v1, v1, 0x1

    goto :goto_217

    .line 231
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_239
    const-string v10, "StockClock_WidgetID_Length204"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26a

    .line 233
    const-string v10, "StockClock_WidgetID_Length204"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 234
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_248
    if-ge v1, v2, :cond_26a

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs204"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_267

    .line 237
    const/16 v9, 0xcc

    .line 234
    :cond_267
    add-int/lit8 v1, v1, 0x1

    goto :goto_248

    .line 241
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_26a
    const-string v10, "StockClock_WidgetID_Length201"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_29b

    .line 243
    const-string v10, "StockClock_WidgetID_Length201"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 244
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_279
    if-ge v1, v2, :cond_29b

    .line 246
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs201"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_298

    .line 247
    const/16 v9, 0xc9

    .line 244
    :cond_298
    add-int/lit8 v1, v1, 0x1

    goto :goto_279

    .line 251
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_29b
    const-string v10, "StockClock_WidgetID_Length404"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2cc

    .line 252
    const-string v10, "StockClock_WidgetID_Length404"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 253
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2aa
    if-ge v1, v2, :cond_2cc

    .line 254
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs404"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_2c9

    .line 255
    const/16 v9, 0x194

    .line 253
    :cond_2c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2aa

    .line 260
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2cc
    const-string v10, "StockClock_WidgetID_Length402"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2fd

    .line 261
    const-string v10, "StockClock_WidgetID_Length402"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 262
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2db
    if-ge v1, v2, :cond_2fd

    .line 263
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs402"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_2fa

    .line 264
    const/16 v9, 0x192

    .line 262
    :cond_2fa
    add-int/lit8 v1, v1, 0x1

    goto :goto_2db

    .line 269
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2fd
    const-string v10, "StockClock_WidgetID_Length301"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_32e

    .line 271
    const-string v10, "StockClock_WidgetID_Length301"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 272
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_30c
    if-ge v1, v2, :cond_32e

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs301"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_32b

    .line 275
    const/16 v9, 0x12d

    .line 272
    :cond_32b
    add-int/lit8 v1, v1, 0x1

    goto :goto_30c

    .line 279
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_32e
    const-string v10, "StockClock_WidgetID_Length302"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_35f

    .line 281
    const-string v10, "StockClock_WidgetID_Length302"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 282
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_33d
    if-ge v1, v2, :cond_35f

    .line 284
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs302"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_35c

    .line 285
    const/16 v9, 0x12e

    .line 282
    :cond_35c
    add-int/lit8 v1, v1, 0x1

    goto :goto_33d

    .line 289
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_35f
    const-string v10, "StockClock_WidgetID_Length303"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_390

    .line 291
    const-string v10, "StockClock_WidgetID_Length303"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 292
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_36e
    if-ge v1, v2, :cond_390

    .line 294
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs303"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_38d

    .line 295
    const/16 v9, 0x12f

    .line 292
    :cond_38d
    add-int/lit8 v1, v1, 0x1

    goto :goto_36e

    .line 299
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_390
    const-string v10, "StockClock_WidgetID_Length304"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3c1

    .line 301
    const-string v10, "StockClock_WidgetID_Length304"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 302
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_39f
    if-ge v1, v2, :cond_3c1

    .line 304
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs304"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_3be

    .line 305
    const/16 v9, 0x130

    .line 302
    :cond_3be
    add-int/lit8 v1, v1, 0x1

    goto :goto_39f

    .line 309
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_3c1
    const-string v10, "StockClock_WidgetID_Length305"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3f2

    .line 311
    const-string v10, "StockClock_WidgetID_Length305"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 312
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3d0
    if-ge v1, v2, :cond_3f2

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs305"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_3ef

    .line 315
    const/16 v9, 0x131

    .line 312
    :cond_3ef
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d0

    .line 320
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_3f2
    const-string v10, "StockClock_WidgetID_Length501"

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_423

    .line 322
    const-string v10, "StockClock_WidgetID_Length501"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 323
    .restart local v2       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_401
    if-ge v1, v2, :cond_423

    .line 325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs501"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, p1, :cond_420

    .line 326
    const/16 v9, 0x1f5

    .line 323
    :cond_420
    add-int/lit8 v1, v1, 0x1

    goto :goto_401

    .line 331
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_423
    if-eqz v9, :cond_4d6

    .line 333
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetID_Length"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 334
    .restart local v2       #length:I
    new-array v3, v2, [I

    .line 335
    .local v3, mWidgetId:[I
    add-int/lit8 v10, v2, -0x1

    new-array v7, v10, [I

    .line 336
    .local v7, tmpWidgetId:[I
    const/4 v5, 0x0

    .line 337
    .local v5, tmp:I
    const/4 v8, -0x1

    .line 339
    .local v8, widgetPosition:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    move v6, v5

    .end local v5           #tmp:I
    .local v6, tmp:I
    :goto_446
    if-ge v1, v2, :cond_478

    .line 341
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs"

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

    .line 342
    aget v10, v3, v1

    if-ne v10, p1, :cond_471

    .line 344
    move v8, v1

    move v5, v6

    .line 339
    .end local v6           #tmp:I
    .restart local v5       #tmp:I
    :goto_46d
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #tmp:I
    .restart local v6       #tmp:I
    goto :goto_446

    .line 348
    :cond_471
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmp:I
    .restart local v5       #tmp:I
    aget v10, v3, v1

    aput v10, v7, v6

    goto :goto_46d

    .line 352
    .end local v5           #tmp:I
    .restart local v6       #tmp:I
    :cond_478
    const/4 v10, -0x1

    if-eq v8, v10, :cond_4d6

    .line 354
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetID_Length"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v2, -0x1

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    const/4 v1, 0x0

    :goto_494
    add-int/lit8 v10, v2, -0x1

    if-ge v1, v10, :cond_4b9

    .line 357
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs"

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

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_494

    .line 359
    :cond_4b9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockClock_WidgetIDs"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mWidgetId:[I
    .end local v6           #tmp:I
    .end local v7           #tmpWidgetId:[I
    .end local v8           #widgetPosition:I
    :cond_4d6
    return-void
.end method

.method public static removeWidgetIds(Landroid/content/Context;II)V
    .registers 15
    .parameter "context"
    .parameter "widgetTypeKey"
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    .line 66
    const-string v9, "StockClock_WidgetIDs"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 67
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockClock_WidgetID_Length"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 103
    :cond_24
    :goto_24
    return-void

    .line 74
    :cond_25
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockClock_WidgetID_Length"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 75
    .local v2, length:I
    new-array v3, v2, [I

    .line 76
    .local v3, mWidgetId:[I
    add-int/lit8 v9, v2, -0x1

    new-array v7, v9, [I

    .line 77
    .local v7, tmpWidgetId:[I
    const/4 v5, 0x0

    .line 78
    .local v5, tmp:I
    const/4 v8, -0x1

    .line 80
    .local v8, widgetPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v5

    .end local v5           #tmp:I
    .local v6, tmp:I
    :goto_46
    if-ge v1, v2, :cond_78

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockClock_WidgetIDs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    aput v9, v3, v1

    .line 83
    aget v9, v3, v1

    if-ne v9, p2, :cond_71

    .line 85
    move v8, v1

    move v5, v6

    .line 80
    .end local v6           #tmp:I
    .restart local v5       #tmp:I
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #tmp:I
    .restart local v6       #tmp:I
    goto :goto_46

    .line 89
    :cond_71
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmp:I
    .restart local v5       #tmp:I
    aget v9, v3, v1

    aput v9, v7, v6

    goto :goto_6d

    .line 93
    .end local v5           #tmp:I
    .restart local v6       #tmp:I
    :cond_78
    const/4 v9, -0x1

    if-eq v8, v9, :cond_24

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockClock_WidgetID_Length"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    const/4 v1, 0x0

    :goto_94
    add-int/lit8 v9, v2, -0x1

    if-ge v1, v9, :cond_b9

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockClock_WidgetIDs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aget v10, v7, v1

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 100
    :cond_b9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockClock_WidgetIDs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_24
.end method

.method public static setWidgetIndex(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "id"
    .parameter "symbol"

    .prologue
    .line 1181
    const-string v2, "StockClock_WidgetIDs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1182
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1183
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StockClock_WidgetID_Symbol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1184
    return-void
.end method

.method public static setWidgetType(Landroid/content/Context;II)V
    .registers 27
    .parameter "context"
    .parameter "id"
    .parameter "newtype"

    .prologue
    .line 770
    const-string v22, "StockClock_WidgetIDs"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 771
    .local v21, pref:Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 774
    .local v3, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v22

    const v23, 0xe1000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_26d

    .line 777
    const-string v22, "StockClock_WidgetID_Length201"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 778
    .local v6, length_2x1:I
    const-string v22, "StockClock_WidgetID_Length203"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 779
    .local v8, length_2x3:I
    const-string v22, "StockClock_WidgetID_Length205"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 780
    .local v10, length_2x5:I
    const-string v22, "StockClock_WidgetID_Length401"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 782
    .local v16, length_4x1:I
    const/4 v5, -0x1

    .line 783
    .local v5, length:I
    sparse-switch p2, :sswitch_data_c4c

    .line 802
    :goto_43
    const/4 v4, 0x0

    .local v4, i:I
    :goto_44
    if-ge v4, v6, :cond_d6

    .line 804
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs201"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_d2

    .line 806
    const/16 v22, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 807
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 808
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 809
    const-string v22, "StockClock_WidgetID_Length201"

    add-int/lit8 v23, v6, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 810
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1170
    .end local v6           #length_2x1:I
    .end local v8           #length_2x3:I
    .end local v10           #length_2x5:I
    :cond_c4
    :goto_c4
    return-void

    .line 787
    .end local v4           #i:I
    .restart local v6       #length_2x1:I
    .restart local v8       #length_2x3:I
    .restart local v10       #length_2x5:I
    :sswitch_c5
    move v5, v6

    .line 788
    goto/16 :goto_43

    .line 790
    :sswitch_c8
    move v5, v8

    .line 791
    goto/16 :goto_43

    .line 793
    :sswitch_cb
    move v5, v10

    .line 794
    goto/16 :goto_43

    .line 796
    :sswitch_ce
    move/from16 v5, v16

    goto/16 :goto_43

    .line 802
    .restart local v4       #i:I
    :cond_d2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_44

    .line 815
    :cond_d6
    const/4 v4, 0x0

    :goto_d7
    if-ge v4, v8, :cond_15d

    .line 817
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs203"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_159

    .line 819
    const/16 v22, 0xcb

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 820
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 821
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 822
    const-string v22, "StockClock_WidgetID_Length203"

    add-int/lit8 v23, v8, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 823
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 815
    :cond_159
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d7

    .line 828
    :cond_15d
    const/4 v4, 0x0

    :goto_15e
    if-ge v4, v10, :cond_1e4

    .line 830
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs205"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_1e0

    .line 832
    const/16 v22, 0xcd

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 833
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 834
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 835
    const-string v22, "StockClock_WidgetID_Length205"

    add-int/lit8 v23, v10, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 836
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 828
    :cond_1e0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15e

    .line 841
    :cond_1e4
    const/4 v4, 0x0

    :goto_1e5
    move/from16 v0, v16

    if-ge v4, v0, :cond_c4

    .line 843
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs401"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_269

    .line 845
    const/16 v22, 0x191

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 846
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 847
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 848
    const-string v22, "StockClock_WidgetID_Length401"

    add-int/lit8 v23, v16, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 849
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 841
    :cond_269
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1e5

    .line 855
    .end local v4           #i:I
    .end local v5           #length:I
    .end local v6           #length_2x1:I
    .end local v8           #length_2x3:I
    .end local v10           #length_2x5:I
    .end local v16           #length_4x1:I
    :cond_26d
    invoke-static/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v22

    const v23, 0x25800

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_564

    .line 858
    const-string v22, "StockClock_WidgetID_Length201"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 859
    .local v7, length_2x2:I
    const-string v22, "StockClock_WidgetID_Length401"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 860
    .restart local v16       #length_4x1:I
    const-string v22, "StockClock_WidgetID_Length402"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 861
    .local v17, length_4x2:I
    const-string v22, "StockClock_WidgetID_Length403"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 862
    .local v18, length_4x3:I
    const-string v22, "StockClock_WidgetID_Length404"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 864
    .local v19, length_4x4:I
    const/4 v5, -0x1

    .line 865
    .restart local v5       #length:I
    sparse-switch p2, :sswitch_data_c5e

    .line 886
    :goto_2a6
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2a7
    if-ge v4, v7, :cond_340

    .line 888
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs201"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_33c

    .line 890
    const/16 v22, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 891
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 892
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 893
    const-string v22, "StockClock_WidgetID_Length201"

    add-int/lit8 v23, v7, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 894
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 869
    .end local v4           #i:I
    :sswitch_329
    move v5, v7

    .line 870
    goto/16 :goto_2a6

    .line 872
    :sswitch_32c
    move/from16 v5, v16

    .line 873
    goto/16 :goto_2a6

    .line 875
    :sswitch_330
    move/from16 v5, v17

    .line 876
    goto/16 :goto_2a6

    .line 878
    :sswitch_334
    move/from16 v5, v18

    .line 879
    goto/16 :goto_2a6

    .line 881
    :sswitch_338
    move/from16 v5, v19

    goto/16 :goto_2a6

    .line 886
    .restart local v4       #i:I
    :cond_33c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2a7

    .line 899
    :cond_340
    const/4 v4, 0x0

    :goto_341
    move/from16 v0, v16

    if-ge v4, v0, :cond_3c9

    .line 901
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs401"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_3c5

    .line 903
    const/16 v22, 0x191

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 904
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 905
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 906
    const-string v22, "StockClock_WidgetID_Length401"

    add-int/lit8 v23, v16, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 907
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 899
    :cond_3c5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_341

    .line 912
    :cond_3c9
    const/4 v4, 0x0

    :goto_3ca
    move/from16 v0, v17

    if-ge v4, v0, :cond_452

    .line 914
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs402"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_44e

    .line 916
    const/16 v22, 0x192

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 917
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 918
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 919
    const-string v22, "StockClock_WidgetID_Length402"

    add-int/lit8 v23, v17, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 920
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 912
    :cond_44e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3ca

    .line 925
    :cond_452
    const/4 v4, 0x0

    :goto_453
    move/from16 v0, v18

    if-ge v4, v0, :cond_4db

    .line 927
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs403"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_4d7

    .line 929
    const/16 v22, 0x193

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 930
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 931
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 932
    const-string v22, "StockClock_WidgetID_Length403"

    add-int/lit8 v23, v18, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 933
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 925
    :cond_4d7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_453

    .line 938
    :cond_4db
    const/4 v4, 0x0

    :goto_4dc
    move/from16 v0, v19

    if-ge v4, v0, :cond_c4

    .line 940
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs404"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_560

    .line 942
    const/16 v22, 0x194

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 943
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 944
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 945
    const-string v22, "StockClock_WidgetID_Length404"

    add-int/lit8 v23, v19, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 946
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 938
    :cond_560
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4dc

    .line 954
    .end local v4           #i:I
    .end local v5           #length:I
    .end local v7           #length_2x2:I
    .end local v16           #length_4x1:I
    .end local v17           #length_4x2:I
    .end local v18           #length_4x3:I
    .end local v19           #length_4x4:I
    :cond_564
    const-string v22, "StockClock_WidgetID_Length401"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 955
    .restart local v16       #length_4x1:I
    const-string v22, "StockClock_WidgetID_Length202"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 956
    .restart local v7       #length_2x2:I
    const-string v22, "StockClock_WidgetID_Length204"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 957
    .local v9, length_2x4:I
    const-string v22, "StockClock_WidgetID_Length201"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 958
    .restart local v6       #length_2x1:I
    const-string v22, "StockClock_WidgetID_Length404"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 959
    .restart local v19       #length_4x4:I
    const-string v22, "StockClock_WidgetID_Length402"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 962
    .restart local v17       #length_4x2:I
    const-string v22, "StockClock_WidgetID_Length301"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 963
    .local v11, length_3x1:I
    const-string v22, "StockClock_WidgetID_Length302"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 964
    .local v12, length_3x2:I
    const-string v22, "StockClock_WidgetID_Length303"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 965
    .local v13, length_3x3:I
    const-string v22, "StockClock_WidgetID_Length304"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 966
    .local v14, length_3x4:I
    const-string v22, "StockClock_WidgetID_Length305"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 967
    .local v15, length_3x5:I
    const-string v22, "StockClock_WidgetID_Length501"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 969
    .local v20, length_5x1:I
    const/4 v5, -0x1

    .line 970
    .restart local v5       #length:I
    sparse-switch p2, :sswitch_data_c74

    .line 1014
    :goto_5c8
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5c9
    move/from16 v0, v16

    if-ge v4, v0, :cond_679

    .line 1016
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs401"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_675

    .line 1018
    const/16 v22, 0x191

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1019
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1020
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1021
    const-string v22, "StockClock_WidgetID_Length401"

    add-int/lit8 v23, v16, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1022
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 973
    .end local v4           #i:I
    :sswitch_64d
    move/from16 v5, v16

    .line 974
    goto/16 :goto_5c8

    .line 976
    :sswitch_651
    move v5, v7

    .line 977
    goto/16 :goto_5c8

    .line 979
    :sswitch_654
    move v5, v9

    .line 980
    goto/16 :goto_5c8

    .line 982
    :sswitch_657
    move v5, v6

    .line 983
    goto/16 :goto_5c8

    .line 985
    :sswitch_65a
    move/from16 v5, v19

    .line 986
    goto/16 :goto_5c8

    .line 988
    :sswitch_65e
    move/from16 v5, v17

    .line 989
    goto/16 :goto_5c8

    .line 993
    :sswitch_662
    move v5, v11

    .line 994
    goto/16 :goto_5c8

    .line 996
    :sswitch_665
    move v5, v12

    .line 997
    goto/16 :goto_5c8

    .line 999
    :sswitch_668
    move v5, v13

    .line 1000
    goto/16 :goto_5c8

    .line 1002
    :sswitch_66b
    move v5, v14

    .line 1003
    goto/16 :goto_5c8

    .line 1005
    :sswitch_66e
    move v5, v15

    .line 1006
    goto/16 :goto_5c8

    .line 1009
    :sswitch_671
    move/from16 v5, v20

    goto/16 :goto_5c8

    .line 1014
    .restart local v4       #i:I
    :cond_675
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5c9

    .line 1027
    :cond_679
    const/4 v4, 0x0

    :goto_67a
    if-ge v4, v7, :cond_700

    .line 1029
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs202"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_6fc

    .line 1031
    const/16 v22, 0xca

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1032
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1033
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1034
    const-string v22, "StockClock_WidgetID_Length202"

    add-int/lit8 v23, v7, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1035
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1027
    :cond_6fc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_67a

    .line 1040
    :cond_700
    const/4 v4, 0x0

    :goto_701
    if-ge v4, v9, :cond_787

    .line 1042
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs204"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_783

    .line 1044
    const/16 v22, 0xcc

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1045
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1046
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1047
    const-string v22, "StockClock_WidgetID_Length204"

    add-int/lit8 v23, v9, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1048
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1040
    :cond_783
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_701

    .line 1053
    :cond_787
    const/4 v4, 0x0

    :goto_788
    if-ge v4, v6, :cond_80e

    .line 1055
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs201"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_80a

    .line 1057
    const/16 v22, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1058
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1059
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1060
    const-string v22, "StockClock_WidgetID_Length201"

    add-int/lit8 v23, v6, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1061
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1053
    :cond_80a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_788

    .line 1066
    :cond_80e
    const/4 v4, 0x0

    :goto_80f
    move/from16 v0, v19

    if-ge v4, v0, :cond_897

    .line 1067
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs404"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_893

    .line 1068
    const/16 v22, 0x194

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1069
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1070
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1071
    const-string v22, "StockClock_WidgetID_Length404"

    add-int/lit8 v23, v19, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1072
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1066
    :cond_893
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_80f

    .line 1078
    :cond_897
    const/4 v4, 0x0

    :goto_898
    move/from16 v0, v17

    if-ge v4, v0, :cond_920

    .line 1079
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs402"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_91c

    .line 1080
    const/16 v22, 0x192

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1081
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1082
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1083
    const-string v22, "StockClock_WidgetID_Length402"

    add-int/lit8 v23, v17, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1084
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1078
    :cond_91c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_898

    .line 1090
    :cond_920
    const/4 v4, 0x0

    :goto_921
    if-ge v4, v11, :cond_9a7

    .line 1092
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs301"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_9a3

    .line 1094
    const/16 v22, 0x12d

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1095
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1096
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1097
    const-string v22, "StockClock_WidgetID_Length301"

    add-int/lit8 v23, v11, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1098
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1090
    :cond_9a3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_921

    .line 1103
    :cond_9a7
    const/4 v4, 0x0

    :goto_9a8
    if-ge v4, v12, :cond_a2e

    .line 1105
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs302"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_a2a

    .line 1107
    const/16 v22, 0x12e

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1108
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1109
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1110
    const-string v22, "StockClock_WidgetID_Length302"

    add-int/lit8 v23, v12, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1103
    :cond_a2a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9a8

    .line 1116
    :cond_a2e
    const/4 v4, 0x0

    :goto_a2f
    if-ge v4, v13, :cond_ab5

    .line 1118
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs303"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_ab1

    .line 1120
    const/16 v22, 0x12f

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1121
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1122
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1123
    const-string v22, "StockClock_WidgetID_Length303"

    add-int/lit8 v23, v13, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1124
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1116
    :cond_ab1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a2f

    .line 1129
    :cond_ab5
    const/4 v4, 0x0

    :goto_ab6
    if-ge v4, v14, :cond_b3c

    .line 1131
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs304"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_b38

    .line 1133
    const/16 v22, 0x130

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1134
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1135
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1136
    const-string v22, "StockClock_WidgetID_Length304"

    add-int/lit8 v23, v14, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1137
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1129
    :cond_b38
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_ab6

    .line 1142
    :cond_b3c
    const/4 v4, 0x0

    :goto_b3d
    if-ge v4, v15, :cond_bc3

    .line 1144
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs305"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_bbf

    .line 1146
    const/16 v22, 0x131

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1147
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1148
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1149
    const-string v22, "StockClock_WidgetID_Length305"

    add-int/lit8 v23, v15, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1150
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1142
    :cond_bbf
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b3d

    .line 1156
    :cond_bc3
    const/4 v4, 0x0

    :goto_bc4
    move/from16 v0, v20

    if-ge v4, v0, :cond_c4

    .line 1158
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs501"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_c48

    .line 1160
    const/16 v22, 0x1f5

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;II)V

    .line 1161
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetIDs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1162
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "StockClock_WidgetID_Length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1163
    const-string v22, "StockClock_WidgetID_Length501"

    add-int/lit8 v23, v20, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1164
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c4

    .line 1156
    :cond_c48
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_bc4

    .line 783
    :sswitch_data_c4c
    .sparse-switch
        0xc9 -> :sswitch_c5
        0xcb -> :sswitch_c8
        0xcd -> :sswitch_cb
        0x191 -> :sswitch_ce
    .end sparse-switch

    .line 865
    :sswitch_data_c5e
    .sparse-switch
        0xc9 -> :sswitch_329
        0x191 -> :sswitch_32c
        0x192 -> :sswitch_330
        0x193 -> :sswitch_334
        0x194 -> :sswitch_338
    .end sparse-switch

    .line 970
    :sswitch_data_c74
    .sparse-switch
        0xc9 -> :sswitch_657
        0xca -> :sswitch_651
        0xcc -> :sswitch_654
        0x12d -> :sswitch_662
        0x12e -> :sswitch_665
        0x12f -> :sswitch_668
        0x130 -> :sswitch_66b
        0x131 -> :sswitch_66e
        0x191 -> :sswitch_64d
        0x192 -> :sswitch_65e
        0x194 -> :sswitch_65a
        0x1f5 -> :sswitch_671
    .end sparse-switch
.end method

.method public static setYahooUUID(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "uuid"

    .prologue
    .line 1196
    const-string v2, "StockClock_WidgetIDs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1197
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1198
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "StockClock_Widget_UUID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1199
    return-void
.end method
