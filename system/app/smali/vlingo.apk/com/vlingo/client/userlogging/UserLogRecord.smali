.class public Lcom/vlingo/client/userlogging/UserLogRecord;
.super Ljava/lang/Object;
.source "UserLogRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldUsageCounts;,
        Lcom/vlingo/client/userlogging/UserLogRecord$TextFieldRecord;
    }
.end annotation


# instance fields
.field private settings:Ljava/lang/String;

.field private setupFinished:Z

.field private setupStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 247
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 248
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 249
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 251
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private getData(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/UserLogRecord;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateXml()Ljava/lang/String;
    .registers 46

    .prologue
    .line 85
    new-instance v40, Ljava/lang/StringBuffer;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v40, sb:Ljava/lang/StringBuffer;
    const-string v2, "<user-log>"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<user-id>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</user-id>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<setup started=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/userlogging/UserLogRecord;->setupStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" finished=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/userlogging/UserLogRecord;->setupFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/userlogging/UserLogRecord;->settings:Ljava/lang/String;

    if-eqz v2, :cond_7f

    .line 92
    const-string v2, "<settings values=\""

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/userlogging/UserLogRecord;->settings:Ljava/lang/String;

    invoke-static {v2}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v2, "\"/>"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_7f
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/userlogging/UserLogRecord;->getCurrentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "helppages"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 102
    .local v24, cur:Landroid/database/Cursor;
    invoke-static/range {v24 .. v24}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 106
    const-string v2, "pageId"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 107
    .local v37, pageIdColumn:I
    const-string v2, "viewCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 111
    .local v44, viewCountColumn:I
    :cond_b3
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 112
    .local v36, pageId:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 115
    .local v43, viewCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<help-page page-id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v36 .. v36}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_b3

    .line 121
    .end local v36           #pageId:Ljava/lang/String;
    .end local v37           #pageIdColumn:I
    .end local v43           #viewCount:I
    .end local v44           #viewCountColumn:I
    :cond_f7
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/userlogging/UserLogRecord;->getCurrentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "errorrecords"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 129
    invoke-static/range {v24 .. v24}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_172

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_172

    .line 133
    const-string v2, "errorId"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 134
    .local v26, errorIdColumn:I
    const-string v2, "viewCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 138
    .restart local v44       #viewCountColumn:I
    :cond_12e
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 139
    .local v25, errorId:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 142
    .restart local v43       #viewCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<error msg-id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v25 .. v25}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_12e

    .line 148
    .end local v25           #errorId:Ljava/lang/String;
    .end local v26           #errorIdColumn:I
    .end local v43           #viewCount:I
    .end local v44           #viewCountColumn:I
    :cond_172
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 151
    const-string v2, "<landing-pages>"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/userlogging/UserLogRecord;->getCurrentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "landingpages"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 158
    invoke-static/range {v24 .. v24}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_364

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_364

    .line 176
    const-string v2, "pageId"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 177
    .restart local v37       #pageIdColumn:I
    const-string v2, "viewCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 178
    .restart local v44       #viewCountColumn:I
    const-string v2, "launchTimeTotal"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 179
    .local v33, launchtimetotalColumn:I
    const-string v2, "launchCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 180
    .local v32, launchcountColumn:I
    const-string v2, "backCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 181
    .local v19, backcountColumn:I
    const-string v2, "backNoEditCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 182
    .local v20, backnoteditcountColumn:I
    const-string v2, "backUtteranceCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 183
    .local v21, backutterancecountColumn:I
    const-string v2, "actionCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 184
    .local v11, actioncountColumn:I
    const-string v2, "actionNoEditCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 185
    .local v12, actionnoeditcountColumn:I
    const-string v2, "actionUtteranceCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 186
    .local v13, actionutterancecountColumn:I
    const-string v2, "fromEmailChangedCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 187
    .local v28, fromemailchangedcountColumn:I
    const-string v2, "alternativePhrasePickedCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 188
    .local v15, alternativephrasepickedcountColumn:I
    const-string v2, "contactChangeCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 189
    .local v23, contactchangecountColumn:I
    const-string v2, "phoneChangeCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 190
    .local v39, phonechangecountColumn:I
    const-string v2, "noteTypeChangeCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 191
    .local v35, notetypechangecountColumn:I
    const-string v2, "undoCount"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 195
    .local v42, undocountColumn:I
    :cond_220
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 196
    .restart local v36       #pageId:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 197
    .restart local v43       #viewCount:I
    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 198
    .local v29, launchCount:I
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 199
    .local v31, launchTimeTotal:I
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 200
    .local v16, backCount:I
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 201
    .local v17, backNoEditCount:I
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 202
    .local v18, backUtteranceCount:I
    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 203
    .local v8, actionCount:I
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 204
    .local v9, actionNoEditCount:I
    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 205
    .local v10, actionUtteranceCount:I
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 206
    .local v27, fromEmailChangedCount:I
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 207
    .local v14, alternativePhrasePickedCount:I
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 208
    .local v22, contactChangeCount:I
    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 209
    .local v38, phoneChangeCount:I
    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 210
    .local v34, noteTypeChangeCount:I
    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 212
    .local v41, undoCount:I
    if-nez v29, :cond_37a

    const/16 v30, 0x0

    .line 214
    .local v30, launchTimeAvg:F
    :goto_29c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<landing-page page-id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v36 .. v36}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" launch-time-avg=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" back-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" back-noedit-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" back-utt-avg=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" action-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" action-noedit-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" action-utt-avg=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" from-email-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" undo-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" alternative-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" contact-change-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" phone-change-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" note-change-count=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></landing-page>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_220

    .line 238
    .end local v8           #actionCount:I
    .end local v9           #actionNoEditCount:I
    .end local v10           #actionUtteranceCount:I
    .end local v11           #actioncountColumn:I
    .end local v12           #actionnoeditcountColumn:I
    .end local v13           #actionutterancecountColumn:I
    .end local v14           #alternativePhrasePickedCount:I
    .end local v15           #alternativephrasepickedcountColumn:I
    .end local v16           #backCount:I
    .end local v17           #backNoEditCount:I
    .end local v18           #backUtteranceCount:I
    .end local v19           #backcountColumn:I
    .end local v20           #backnoteditcountColumn:I
    .end local v21           #backutterancecountColumn:I
    .end local v22           #contactChangeCount:I
    .end local v23           #contactchangecountColumn:I
    .end local v27           #fromEmailChangedCount:I
    .end local v28           #fromemailchangedcountColumn:I
    .end local v29           #launchCount:I
    .end local v30           #launchTimeAvg:F
    .end local v31           #launchTimeTotal:I
    .end local v32           #launchcountColumn:I
    .end local v33           #launchtimetotalColumn:I
    .end local v34           #noteTypeChangeCount:I
    .end local v35           #notetypechangecountColumn:I
    .end local v36           #pageId:Ljava/lang/String;
    .end local v37           #pageIdColumn:I
    .end local v38           #phoneChangeCount:I
    .end local v39           #phonechangecountColumn:I
    .end local v41           #undoCount:I
    .end local v42           #undocountColumn:I
    .end local v43           #viewCount:I
    .end local v44           #viewCountColumn:I
    :cond_364
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 240
    const-string v2, "</landing-pages>"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string v2, "</user-log>"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 212
    .restart local v8       #actionCount:I
    .restart local v9       #actionNoEditCount:I
    .restart local v10       #actionUtteranceCount:I
    .restart local v11       #actioncountColumn:I
    .restart local v12       #actionnoeditcountColumn:I
    .restart local v13       #actionutterancecountColumn:I
    .restart local v14       #alternativePhrasePickedCount:I
    .restart local v15       #alternativephrasepickedcountColumn:I
    .restart local v16       #backCount:I
    .restart local v17       #backNoEditCount:I
    .restart local v18       #backUtteranceCount:I
    .restart local v19       #backcountColumn:I
    .restart local v20       #backnoteditcountColumn:I
    .restart local v21       #backutterancecountColumn:I
    .restart local v22       #contactChangeCount:I
    .restart local v23       #contactchangecountColumn:I
    .restart local v27       #fromEmailChangedCount:I
    .restart local v28       #fromemailchangedcountColumn:I
    .restart local v29       #launchCount:I
    .restart local v31       #launchTimeTotal:I
    .restart local v32       #launchcountColumn:I
    .restart local v33       #launchtimetotalColumn:I
    .restart local v34       #noteTypeChangeCount:I
    .restart local v35       #notetypechangecountColumn:I
    .restart local v36       #pageId:Ljava/lang/String;
    .restart local v37       #pageIdColumn:I
    .restart local v38       #phoneChangeCount:I
    .restart local v39       #phonechangecountColumn:I
    .restart local v41       #undoCount:I
    .restart local v42       #undocountColumn:I
    .restart local v43       #viewCount:I
    .restart local v44       #viewCountColumn:I
    :cond_37a
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v29

    int-to-float v3, v0

    div-float v30, v2, v3

    goto/16 :goto_29c
.end method

.method getRecordSize()I
    .registers 10

    .prologue
    .line 42
    const-string v4, "helppages"

    invoke-direct {p0, v4}, Lcom/vlingo/client/userlogging/UserLogRecord;->getData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 43
    .local v1, helpPages:Landroid/database/Cursor;
    const-string v4, "errorrecords"

    invoke-direct {p0, v4}, Lcom/vlingo/client/userlogging/UserLogRecord;->getData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 44
    .local v0, errors:Landroid/database/Cursor;
    const-string v4, "landingpages"

    invoke-direct {p0, v4}, Lcom/vlingo/client/userlogging/UserLogRecord;->getData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 45
    .local v2, landingPages:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/2addr v4, v5

    const-wide/high16 v5, 0x4012

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int v3, v4, v5

    .line 47
    .local v3, size:I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 51
    return v3
.end method

.method prepareStatistics()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "iux_started"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord;->setupStarted:Z

    .line 61
    const-string v0, "iux_complete"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord;->setupFinished:Z

    .line 62
    iget-boolean v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord;->setupStarted:Z

    iget-boolean v1, p0, Lcom/vlingo/client/userlogging/UserLogRecord;->setupFinished:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/vlingo/client/userlogging/UserLogRecord;->setupStarted:Z

    .line 63
    return-void
.end method
