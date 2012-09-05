.class public Lcom/sec/android/app/servicemodeapp/ViewFDList;
.super Landroid/app/Activity;
.source "ViewFDList.java"


# static fields
.field private static FDListMessage:Ljava/lang/StringBuilder;


# instance fields
.field private builder:Landroid/app/AlertDialog$Builder;

.field public mHandler:Landroid/os/Handler;

.field private mTextView:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lcom/sec/android/app/servicemodeapp/ViewFDList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/ViewFDList$1;-><init>(Lcom/sec/android/app/servicemodeapp/ViewFDList;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private ResultMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "View FD Result"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 268
    return-void
.end method

.method static synthetic access$000()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->FDListMessage:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->FDListMessage:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/ViewFDList;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private sendParsedString(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "rilLogMessage"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    const-string v1, "ViewFDList"

    const-string v2, "sendParsedString..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method private viewFastDormancyList()V
    .registers 23

    .prologue
    .line 102
    const-string v14, "true"

    .line 107
    .local v14, mDormFlag:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v21, viewFDListMessage:Ljava/lang/StringBuilder;
    const-string v3, "gsm.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 109
    .local v19, m_operator:Ljava/lang/String;
    const/4 v13, 0x0

    .line 112
    .local v13, isfindoperator:Z
    const-string v3, "ViewFDList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m_operator : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v11, Ljava/io/File;

    const-string v3, "/data/data/com.android.providers.telephony/databases"

    const-string v4, "nwk_info.db"

    invoke-direct {v11, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v11, databaseFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_224

    .line 127
    new-instance v11, Ljava/io/File;

    .end local v11           #databaseFile:Ljava/io/File;
    const-string v3, "/system/csc"

    const-string v4, "nwk_info.db"

    invoke-direct {v11, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .restart local v11       #databaseFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_57

    .line 129
    const-string v3, "[ViewFDList]There\'s no FD db!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->ResultMessage(Ljava/lang/String;)V

    .line 130
    const-string v3, "ViewFDList"

    const-string v4, "[ViewFDList] no nwk_info.db"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_56
    :goto_56
    return-void

    .line 133
    :cond_57
    const-string v3, "ViewFDList"

    const-string v4, "[ViewFDList] csc system area"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_5e
    :try_start_5e
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5e .. :try_end_67} :catch_22d

    move-result-object v2

    .line 149
    .local v2, mDormDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_68
    const-string v3, "dormpolicy"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 157
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1e2

    .line 158
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1e2

    .line 160
    :cond_7c
    const-string v3, "plmn"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 161
    .local v18, mNwkPlmn:Ljava/lang/String;
    const-string v3, "nwkname"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 162
    .local v17, mNwkName:Ljava/lang/String;
    const-string v3, "lcdonfdtime"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 163
    .local v16, mLcdOnDormFlag:Ljava/lang/String;
    const-string v3, "lcdofffdtime"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 165
    .local v15, mLcdOffDormFlag:Ljava/lang/String;
    const-string v3, "ViewFDList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FD] mLcdOnDormFlag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - mLcdOffDormFlag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v3, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    const-string v3, "0"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 168
    const-string v14, "false"

    .line 170
    :cond_dc
    if-eqz v18, :cond_108

    .line 171
    const-string v3, "ViewFDList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FD] mNwkPlmn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_108
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 175
    .local v20, title:Ljava/lang/String;
    const-string v3, "ViewFDList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    const/4 v13, 0x1

    .line 179
    .end local v20           #title:Ljava/lang/String;
    :cond_16b
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, "\t \t: "

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v3, "1"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_237

    .line 183
    const-string v15, "true"

    .line 187
    :goto_19d
    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23b

    .line 188
    const-string v16, "true"

    .line 192
    :goto_1a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCD ON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LCD OFF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v3, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v14, "true"

    .line 197
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 200
    .end local v15           #mLcdOffDormFlag:Ljava/lang/String;
    .end local v16           #mLcdOnDormFlag:Ljava/lang/String;
    .end local v17           #mNwkName:Ljava/lang/String;
    .end local v18           #mNwkPlmn:Ljava/lang/String;
    :cond_1e2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->sendParsedString(Ljava/lang/StringBuilder;)V

    .line 202
    if-nez v13, :cond_213

    .line 203
    const-string v3, "45001"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23f

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (Suwon Test Bed)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    :cond_213
    :goto_213
    if-eqz v2, :cond_56

    .line 212
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_218
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_218} :catch_21a

    goto/16 :goto_56

    .line 214
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_21a
    move-exception v12

    .line 215
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ViewFDList"

    const-string v4, "[FD] Exception during query"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 136
    .end local v2           #mDormDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :cond_224
    const-string v3, "ViewFDList"

    const-string v4, "[ViewFDList] provider data area"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 141
    :catch_22d
    move-exception v12

    .line 142
    .restart local v12       #e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ViewFDList"

    const-string v4, "[ViewFDList] nwk_info.db open exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 185
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #mDormDb:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v15       #mLcdOffDormFlag:Ljava/lang/String;
    .restart local v16       #mLcdOnDormFlag:Ljava/lang/String;
    .restart local v17       #mNwkName:Ljava/lang/String;
    .restart local v18       #mNwkPlmn:Ljava/lang/String;
    :cond_237
    :try_start_237
    const-string v15, "false"

    goto/16 :goto_19d

    .line 190
    :cond_23b
    const-string v16, "false"

    goto/16 :goto_1a9

    .line 207
    .end local v15           #mLcdOffDormFlag:Ljava/lang/String;
    .end local v16           #mLcdOnDormFlag:Ljava/lang/String;
    .end local v17           #mNwkName:Ljava/lang/String;
    .end local v18           #mNwkPlmn:Ljava/lang/String;
    :cond_23f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_273
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_237 .. :try_end_273} :catch_21a

    goto :goto_213
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->setContentView(I)V

    .line 226
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->mTextView:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->builder:Landroid/app/AlertDialog$Builder;

    .line 231
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->progressDialog:Landroid/app/ProgressDialog;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading FD List..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 237
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->viewFastDormancyList()V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewFDList;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 245
    packed-switch p1, :pswitch_data_10

    .line 257
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 249
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->finish()V

    .line 253
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/ViewFDList;->finish()V

    goto :goto_3

    .line 245
    nop

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
