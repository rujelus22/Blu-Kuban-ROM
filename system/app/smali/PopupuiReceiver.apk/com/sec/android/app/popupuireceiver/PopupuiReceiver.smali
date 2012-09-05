.class public Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PopupuiReceiver.java"


# instance fields
.field private MCCvalue:Ljava/lang/String;

.field private prevMCCvalue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-string v0, "mccstrcmp"

    iput-object v0, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    const-string v12, "PopupuiReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive() getAction : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_114

    .line 45
    :try_start_28
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 46
    .local v5, loadMCCstrForCompare:Landroid/content/SharedPreferences;
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    const-string v13, "-111"

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    .line 47
    const-string v11, ""

    .line 48
    .local v11, tempNumeric:Ljava/lang/String;
    const-string v7, ""

    .line 51
    .local v7, numericMCCvalue:Ljava/lang/String;
    const-string v12, "PopupuiReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_SET_TIME prevMCCvalue : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v12, "gsm.operator.numeric"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a8

    .line 54
    const-string v12, "gsm.operator.numeric"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 57
    const-string v12, "PopupuiReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "gsm.operator.numeric : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_85
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c5

    .line 68
    const-string v12, "PopupuiReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SAME to prevMCCvalue : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v5           #loadMCCstrForCompare:Landroid/content/SharedPreferences;
    .end local v7           #numericMCCvalue:Ljava/lang/String;
    .end local v11           #tempNumeric:Ljava/lang/String;
    :cond_a7
    :goto_a7
    return-void

    .line 60
    .restart local v5       #loadMCCstrForCompare:Landroid/content/SharedPreferences;
    .restart local v7       #numericMCCvalue:Ljava/lang/String;
    .restart local v11       #tempNumeric:Ljava/lang/String;
    :cond_a8
    const-string v7, "-111"

    .line 62
    const-string v12, "PopupuiReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "gsm.operator.numeric is null : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 92
    .end local v5           #loadMCCstrForCompare:Landroid/content/SharedPreferences;
    .end local v7           #numericMCCvalue:Ljava/lang/String;
    .end local v11           #tempNumeric:Ljava/lang/String;
    :catch_c3
    move-exception v12

    goto :goto_a7

    .line 70
    .restart local v5       #loadMCCstrForCompare:Landroid/content/SharedPreferences;
    .restart local v7       #numericMCCvalue:Ljava/lang/String;
    .restart local v11       #tempNumeric:Ljava/lang/String;
    :cond_c5
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_ca} :catch_c3

    move-result v12

    if-nez v12, :cond_a7

    .line 73
    :try_start_cd
    new-instance v1, Landroid/content/Intent;

    const-string v12, "forexit.action.NITZPOPUP"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, iNITZ:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 76
    const-string v12, "PopupuiReceiver"

    const-string v13, "removeStickyBroadcast QUIT_NITZ_ACTION"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 79
    .local v2, initMCC:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 80
    .local v3, initMCCedit:Landroid/content/SharedPreferences$Editor;
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    const-string v13, "-111"

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    const-string v12, "PopupuiReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MCC init : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_111} :catch_112

    goto :goto_a7

    .line 86
    .end local v1           #iNITZ:Landroid/content/Intent;
    .end local v2           #initMCC:Landroid/content/SharedPreferences;
    .end local v3           #initMCCedit:Landroid/content/SharedPreferences$Editor;
    :catch_112
    move-exception v12

    goto :goto_a7

    .line 96
    .end local v5           #loadMCCstrForCompare:Landroid/content/SharedPreferences;
    .end local v7           #numericMCCvalue:Ljava/lang/String;
    .end local v11           #tempNumeric:Ljava/lang/String;
    :cond_114
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.MCC_SET_TIME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1bb

    .line 98
    :try_start_120
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 99
    .local v4, loadMCCstr:Landroid/content/SharedPreferences;
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    const-string v13, "-111"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    .line 101
    const-string v12, "PopupuiReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_MCC_SET_TIME prevMCCvalue"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v6, ""

    .line 104
    .local v6, newMCCvalue:Ljava/lang/String;
    const-string v12, "MCC"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    const-string v12, "PopupuiReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_MCC_SET_TIME read MCC = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_183

    .line 111
    const-string v12, "PopupuiReceiver"

    const-string v13, "SAME to prevMCCvalue : do not display"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a7

    .line 133
    .end local v4           #loadMCCstr:Landroid/content/SharedPreferences;
    .end local v6           #newMCCvalue:Ljava/lang/String;
    :catch_180
    move-exception v12

    goto/16 :goto_a7

    .line 113
    .restart local v4       #loadMCCstr:Landroid/content/SharedPreferences;
    .restart local v6       #newMCCvalue:Ljava/lang/String;
    :cond_183
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->prevMCCvalue:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_188} :catch_180

    move-result v12

    if-nez v12, :cond_a7

    .line 116
    :try_start_18b
    new-instance v1, Landroid/content/Intent;

    const-string v12, "forexit.action.NITZPOPUP"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v1       #iNITZ:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 119
    const-string v12, "PopupuiReceiver"

    const-string v13, "removeStickyBroadcast QUIT_NITZ_ACTION"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 122
    .local v8, saveToMCC:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 123
    .local v9, saveToMCCedit:Landroid/content/SharedPreferences$Editor;
    iget-object v12, p0, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->MCCvalue:Ljava/lang/String;

    invoke-interface {v9, v12, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/popupuireceiver/PopupuiReceiver;->showNITZpopup(Landroid/content/Context;)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1b6} :catch_1b8

    goto/16 :goto_a7

    .line 127
    .end local v1           #iNITZ:Landroid/content/Intent;
    .end local v8           #saveToMCC:Landroid/content/SharedPreferences;
    .end local v9           #saveToMCCedit:Landroid/content/SharedPreferences$Editor;
    :catch_1b8
    move-exception v12

    goto/16 :goto_a7

    .line 136
    .end local v4           #loadMCCstr:Landroid/content/SharedPreferences;
    .end local v6           #newMCCvalue:Ljava/lang/String;
    :cond_1bb
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a7

    .line 140
    :try_start_1c7
    const-string v12, "PopupuiReceiver"

    const-string v13, "ACTION_NITZ_SET_TIME sendStickyBroadcast"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v10, Landroid/content/Intent;

    const-string v12, "forexit.action.NITZPOPUP"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v10, sendi:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 146
    const-string v12, "PopupuiReceiver"

    const-string v13, "ACTION_NITZ_SET_TIME - "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1e1} :catch_1e3

    goto/16 :goto_a7

    .line 148
    .end local v10           #sendi:Landroid/content/Intent;
    :catch_1e3
    move-exception v12

    goto/16 :goto_a7
.end method

.method showNITZpopup(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    const-string v0, "PopupuiReceiver"

    const-string v1, "showNITZpopup() === VER : 1.6 === +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/popupuireceiver/popupNITZ;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
