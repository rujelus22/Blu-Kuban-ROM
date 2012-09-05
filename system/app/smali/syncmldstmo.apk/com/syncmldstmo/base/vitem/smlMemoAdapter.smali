.class public Lcom/syncmldstmo/base/vitem/smlMemoAdapter;
.super Ljava/lang/Object;
.source "smlMemoAdapter.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field public m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;


# direct methods
.method public constructor <init>(Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;)V
    .registers 2
    .parameter "memo"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;)V
    .registers 7
    .parameter "smlvnote"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_8

    .line 69
    :goto_7
    return-void

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->luid:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->_id:I

    .line 32
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->BODY:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 34
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    const-string v1, "NOTITLE"

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->body:Ljava/lang/String;

    .line 41
    :goto_1c
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->TITLE:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 43
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->TITLE:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->title:Ljava/lang/String;

    .line 46
    :cond_2a
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    if-eqz v0, :cond_65

    .line 48
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-ne v0, v3, :cond_5a

    .line 49
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->create:J

    .line 58
    :goto_3e
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    if-eqz v0, :cond_79

    .line 60
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-ne v0, v3, :cond_6e

    .line 61
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->modify:J

    goto :goto_7

    .line 38
    :cond_53
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->BODY:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->body:Ljava/lang/String;

    goto :goto_1c

    .line 51
    :cond_5a
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->create:J

    goto :goto_3e

    .line 55
    :cond_65
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->create:J

    goto :goto_3e

    .line 63
    :cond_6e
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->modify:J

    goto :goto_7

    .line 67
    :cond_79
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->modify:J

    goto :goto_7
.end method

.method public static DecodeVNote(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlMemoAdapter;
    .registers 3
    .parameter "DecodeStr"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlvCal;->DecodeVNote(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;

    move-result-object v1

    .line 74
    .local v1, vNote:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;

    invoke-direct {v0, v1}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;)V

    .line 76
    .local v0, memoItem:Lcom/syncmldstmo/base/vitem/smlMemoAdapter;
    return-object v0
.end method

.method public static EncodeVNote(Lcom/syncmldstmo/base/vitem/smlMemoAdapter;)Ljava/lang/String;
    .registers 3
    .parameter "MemoItem"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->ToSmlvNote_t(Lcom/syncmldstmo/base/vitem/smlMemoAdapter;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;

    move-result-object v1

    .line 109
    .local v1, vNote:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvCal;->EncodeVNote(Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, szEncoded:Ljava/lang/String;
    return-object v0
.end method

.method public static ToSmlvNote_t(Lcom/syncmldstmo/base/vitem/smlMemoAdapter;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;
    .registers 7
    .parameter "MemoItem"

    .prologue
    const-wide/16 v4, 0x0

    .line 82
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;-><init>()V

    .line 84
    .local v0, vNote:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->_id:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->luid:I

    .line 86
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;->VNOTE_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->VERSION:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

    .line 87
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->body:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->BODY:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-wide v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->create:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_33

    .line 91
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    if-nez v1, :cond_2a

    .line 92
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    .line 94
    :cond_2a
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->CREATEDATE:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-wide v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->create:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 96
    :cond_33
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-wide v1, v1, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->modify:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_4f

    .line 98
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    if-nez v1, :cond_46

    .line 99
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    .line 101
    :cond_46
    iget-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;->MODIFYDATE:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-wide v2, v2, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->modify:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 103
    :cond_4f
    return-object v0
.end method

.method public static deleteAllMemo(Landroid/content/ContentResolver;)Z
    .registers 5
    .parameter "cResolver"

    .prologue
    .line 228
    const-string v2, "content://com.samsung.sec.android/memo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 232
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_18

    .line 233
    const/4 v2, 0x1

    .line 240
    :goto_f
    return v2

    .line 235
    :catch_10
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 240
    .end local v0           #e:Ljava/lang/Exception;
    :cond_18
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static deleteMemo(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 6
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    .line 211
    const-string v2, "content://com.samsung.sec.android/memo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 215
    .local v1, uri:Landroid/net/Uri;
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_22

    move-result v2

    if-lez v2, :cond_2a

    .line 216
    const/4 v2, 0x1

    .line 223
    :goto_21
    return v2

    .line 218
    :catch_22
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 223
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2a
    const/4 v2, 0x0

    goto :goto_21
.end method


# virtual methods
.method public addMemo(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 16
    .parameter "cResolver"

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 116
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v8, cv:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .line 118
    .local v11, newUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 119
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 120
    .local v6, Id:I
    const/4 v10, 0x0

    .line 122
    .local v10, nLuid:I
    const-string v0, "content://com.samsung.sec.android/memo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 124
    .local v13, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 126
    const-string v0, "title"

    const-string v3, "Tue 2 Mar. 2010"

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_22
    const-string v0, "content"

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->body:Ljava/lang/String;

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "color"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    :try_start_41
    invoke-virtual {p1, v13, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_52

    move-result-object v11

    .line 147
    :goto_45
    if-nez v11, :cond_5b

    .line 177
    :goto_47
    return-object v12

    .line 130
    :cond_48
    const-string v0, "title"

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v3, v3, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->title:Ljava/lang/String;

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 142
    :catch_52
    move-exception v9

    .line 144
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_45

    .line 152
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5b
    const-string v0, "content://com.samsung.sec.android/memo/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    .local v1, uri2:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 158
    .local v2, from:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    :try_start_6c
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 159
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 161
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    .line 163
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7c
    .catchall {:try_start_6c .. :try_end_7c} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7c} :catch_87

    move-result v10

    .line 171
    if-eqz v7, :cond_82

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_82
    :goto_82
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, sid:Ljava/lang/String;
    goto :goto_47

    .line 165
    .end local v12           #sid:Ljava/lang/String;
    :catch_87
    move-exception v9

    .line 167
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_88
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_95

    .line 171
    if-eqz v7, :cond_82

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_82

    .line 171
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_95
    move-exception v0

    if-eqz v7, :cond_9b

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9b
    throw v0
.end method

.method public replaceMemo(Landroid/content/ContentResolver;I)I
    .registers 10
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "content://com.samsung.sec.android/memo"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 186
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "content"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-object v5, v5, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->body:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v4, "color"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v4, "title"

    const-string v5, "Tue 2 Mar. 2010"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v4, "modify_t"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-wide v5, v5, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->modify:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v4, "create_t"

    iget-object v5, p0, Lcom/syncmldstmo/base/vitem/smlMemoAdapter;->m_Memo:Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;

    iget-wide v5, v5, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->create:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    if-eqz v0, :cond_64

    .line 196
    :try_start_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, selection:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_58} :catch_5c

    move-result v4

    if-lez v4, :cond_64

    .line 206
    .end local v2           #selection:Ljava/lang/String;
    .end local p2
    :goto_5b
    return p2

    .line 201
    .restart local p2
    :catch_5c
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 206
    .end local v1           #e:Ljava/lang/Exception;
    :cond_64
    const/4 p2, 0x0

    goto :goto_5b
.end method
