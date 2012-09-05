.class public Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;
.super Ljava/lang/Object;
.source "SetAlarmHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 22
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 30
    .local v3, context:Landroid/content/Context;
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.SET_ALARM"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v15, setAlarm:Landroid/content/Intent;
    const-string v17, "Time"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 41
    .local v16, time:Ljava/lang/String;
    const/4 v10, 0x0

    .line 42
    .local v10, now:Z
    const-string v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_27

    .line 43
    const/4 v10, 0x1

    .line 48
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 50
    :cond_27
    const/4 v5, 0x0

    .line 51
    .local v5, hour:Ljava/lang/String;
    const/4 v7, 0x0

    .line 52
    .local v7, minute:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_41

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5d

    .line 53
    :cond_41
    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 54
    .local v2, colonIndex:I
    if-lez v2, :cond_5d

    .line 55
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 56
    add-int/lit8 v17, v2, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 61
    .end local v2           #colonIndex:I
    :cond_5d
    const/4 v6, -0x1

    .line 62
    .local v6, hr:I
    const/4 v8, -0x1

    .line 64
    .local v8, mn:I
    if-eqz v5, :cond_91

    const-string v17, "\\d+"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_91

    if-eqz v7, :cond_91

    const-string v17, "\\d+"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_91

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 71
    const/16 v17, 0x18

    move/from16 v0, v17

    if-ge v6, v0, :cond_8f

    const/16 v17, 0x3c

    move/from16 v0, v17

    if-ge v8, v0, :cond_8f

    if-ltz v6, :cond_8f

    if-gez v8, :cond_91

    .line 74
    :cond_8f
    const/4 v6, -0x1

    .line 75
    const/4 v8, -0x1

    .line 79
    :cond_91
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v6, :cond_dc

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_dc

    if-eqz v10, :cond_dc

    .line 80
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v17, "HH"

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 81
    .local v12, nowHrFmt:Ljava/text/SimpleDateFormat;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v17, "mm"

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 84
    .local v14, nowMnFmt:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 85
    .local v4, dateNow:Ljava/util/Date;
    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 86
    .local v11, nowHr:I
    invoke-virtual {v14, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 87
    .local v13, nowMn:I
    add-int v17, v13, v8

    div-int/lit8 v9, v17, 0x3c

    .line 88
    .local v9, mnRollOver:I
    add-int v17, v13, v8

    rem-int/lit8 v8, v17, 0x3c

    .line 89
    add-int v17, v11, v6

    add-int v17, v17, v9

    rem-int/lit8 v6, v17, 0x18

    .line 94
    .end local v4           #dateNow:Ljava/util/Date;
    .end local v9           #mnRollOver:I
    .end local v11           #nowHr:I
    .end local v12           #nowHrFmt:Ljava/text/SimpleDateFormat;
    .end local v13           #nowMn:I
    .end local v14           #nowMnFmt:Ljava/text/SimpleDateFormat;
    :cond_dc
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v6, :cond_109

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_109

    .line 95
    const-string v17, "android.intent.extra.alarm.HOUR"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v17, "android.intent.extra.alarm.MINUTES"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09036d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 104
    :goto_108
    return-object v15

    .line 101
    :cond_109
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0901a6

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 102
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0901a6

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_108
.end method
