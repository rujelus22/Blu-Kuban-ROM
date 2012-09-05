.class public Lcom/vlingo/client/vvs/handlers/MemoHandler;
.super Ljava/lang/Object;
.source "MemoHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "memo"

    .prologue
    const/4 v5, 0x1

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, memoIntent:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/vlingo/client/ClientConfiguration;->trySamsungMemoDBSave(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 116
    const-string v1, "Memo saved"

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 138
    :goto_11
    return-object v0

    .line 118
    :cond_12
    const-string v1, "android.intent.action.MEMO_CREATE"

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {p0, v1, v2, v3, v4}, Lcom/vlingo/client/util/PackageUtil;->canHandleIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 120
    new-instance v0, Landroid/content/Intent;

    .end local v0           #memoIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v0       #memoIntent:Landroid/content/Intent;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 123
    const-string v1, "insert"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_11

    .line 125
    :cond_44
    const-string v1, "android.intent.action.MEMO_CREATE_PREVIEW"

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {p0, v1, v2, v3, v4}, Lcom/vlingo/client/util/PackageUtil;->canHandleIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 127
    new-instance v0, Landroid/content/Intent;

    .end local v0           #memoIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v0       #memoIntent:Landroid/content/Intent;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 130
    const-string v1, "insert"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_11

    .line 134
    :cond_76
    new-instance v0, Landroid/content/Intent;

    .end local v0           #memoIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v0       #memoIntent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_11
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 18
    .parameter "memoIntent"
    .parameter "dispatcher"

    .prologue
    .line 24
    const-string v11, "Message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, memo:Ljava/lang/String;
    const-string v11, "Type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, memoType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 27
    .local v2, context:Landroid/content/Context;
    const/4 v6, 0x0

    .line 30
    .local v6, newIntent:Landroid/content/Intent;
    const-string v11, "email"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_68

    .line 32
    invoke-static {v2}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getGmailAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 35
    const/4 v1, 0x0

    .line 37
    :cond_2a
    move-object v9, v4

    .line 39
    .local v9, text:Ljava/lang/String;
    if-eqz v9, :cond_34

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_34

    .line 40
    const/4 v9, 0x0

    .line 42
    :cond_34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09019d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, subject:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    .end local v6           #newIntent:Landroid/content/Intent;
    const-string v11, "android.intent.action.SEND"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local v6       #newIntent:Landroid/content/Intent;
    if-eqz v1, :cond_53

    .line 47
    const-string v11, "android.intent.extra.EMAIL"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :cond_53
    if-eqz v8, :cond_5a

    .line 51
    const-string v11, "android.intent.extra.SUBJECT"

    invoke-virtual {v6, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_5a
    if-eqz v9, :cond_61

    .line 54
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v6, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_61
    const-string v11, "message/rfc822"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .end local v1           #address:Ljava/lang/String;
    .end local v8           #subject:Ljava/lang/String;
    .end local v9           #text:Ljava/lang/String;
    :cond_66
    :goto_66
    move-object v7, v6

    .line 110
    .end local v6           #newIntent:Landroid/content/Intent;
    .local v7, newIntent:Landroid/content/Intent;
    :goto_67
    return-object v7

    .line 65
    .end local v7           #newIntent:Landroid/content/Intent;
    .restart local v6       #newIntent:Landroid/content/Intent;
    :cond_68
    const-string v11, "dictation"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c0

    .line 66
    new-instance v6, Landroid/content/Intent;

    .end local v6           #newIntent:Landroid/content/Intent;
    const-string v11, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v6       #newIntent:Landroid/content/Intent;
    const-string v11, "android.intent.action.RUN"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const/4 v10, 0x0

    .line 70
    .local v10, title:Ljava/lang/String;
    const-string v11, "Title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 71
    if-eqz v10, :cond_95

    .line 73
    const-string v11, "android.provider.MediaStore.extra.MAX_BYTES"

    const-wide/32 v12, 0x7d000

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 74
    const-string v11, "title"

    invoke-virtual {v6, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_95
    invoke-static {v2, v6}, Lcom/vlingo/client/util/PackageUtil;->canHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v11

    if-nez v11, :cond_66

    .line 77
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090347

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v2, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090347

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 79
    const/4 v6, 0x0

    goto :goto_66

    .line 83
    .end local v10           #title:Ljava/lang/String;
    :cond_c0
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isGaudiPhone()Z

    move-result v11

    if-nez v11, :cond_cc

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isEpic2Phone()Z

    move-result v11

    if-eqz v11, :cond_e1

    .line 84
    :cond_cc
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09023b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, errorMsg:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-static {v2, v3, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object v7, v6

    .line 87
    .end local v6           #newIntent:Landroid/content/Intent;
    .restart local v7       #newIntent:Landroid/content/Intent;
    goto :goto_67

    .line 90
    .end local v3           #errorMsg:Ljava/lang/String;
    .end local v7           #newIntent:Landroid/content/Intent;
    .restart local v6       #newIntent:Landroid/content/Intent;
    :cond_e1
    const-string v11, "android.intent.action.MEMO_CREATE"

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    invoke-static {v2, v11, v12, v13, v14}, Lcom/vlingo/client/util/PackageUtil;->canHandleIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_115

    .line 92
    new-instance v6, Landroid/content/Intent;

    .end local v6           #newIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090023

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v6       #newIntent:Landroid/content/Intent;
    const-string v11, "content"

    invoke-virtual {v6, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v11, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 95
    const-string v11, "insert"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_66

    .line 98
    :cond_115
    const-string v11, "android.intent.action.MEMO_CREATE_PREVIEW"

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    invoke-static {v2, v11, v12, v13, v14}, Lcom/vlingo/client/util/PackageUtil;->canHandleIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_149

    .line 99
    new-instance v6, Landroid/content/Intent;

    .end local v6           #newIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090024

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v6       #newIntent:Landroid/content/Intent;
    const-string v11, "content"

    invoke-virtual {v6, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v11, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    const-string v11, "insert"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_66

    .line 106
    :cond_149
    new-instance v6, Landroid/content/Intent;

    .end local v6           #newIntent:Landroid/content/Intent;
    const-string v11, "android.intent.action.SEND"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v6       #newIntent:Landroid/content/Intent;
    const-string v11, "text/plain"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v6, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_66
.end method
