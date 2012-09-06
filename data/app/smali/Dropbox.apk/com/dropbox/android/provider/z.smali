.class public Lcom/dropbox/android/provider/z;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const-class v0, Lcom/dropbox/android/provider/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/z;->a:Ljava/lang/String;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "local_revision"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "encoding"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/provider/z;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/provider/z;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/dropbox/android/provider/z;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/dropbox/android/provider/z;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dropbox/android/provider/z;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/provider/z;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dropbox/android/provider/z;->d:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/dropbox/android/provider/g;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/dropbox/android/provider/u;)Landroid/database/Cursor;
    .registers 26
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_12

    .line 49
    const/16 v2, 0x12

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    .line 50
    const/4 v2, 0x0

    .line 182
    :goto_11
    return-object v2

    .line 53
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/android/provider/z;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_a5

    const/4 v2, 0x1

    .line 56
    :goto_23
    if-eqz v2, :cond_23b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/provider/z;->b:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/provider/z;->d:Ljava/util/List;

    if-eqz v2, :cond_23b

    .line 57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/android/provider/z;->d:Ljava/util/List;

    .line 59
    invoke-static/range {p5 .. p5}, Lcom/dropbox/android/provider/B;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 60
    new-instance v12, Landroid/database/MatrixCursor;

    invoke-direct {v12, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 63
    const-string v5, "canon_path = ?"

    .line 64
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, ""

    aput-object v7, v6, v3

    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v11, v3

    :goto_58
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ldbxyzptlk/l/k;

    .line 70
    const/4 v3, 0x0

    iget-object v4, v10, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 71
    const-string v3, "dropbox"

    sget-object v4, Lcom/dropbox/android/provider/z;->e:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 72
    const/4 v3, 0x0

    .line 73
    if-eqz v8, :cond_86

    .line 74
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_86

    .line 75
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    const/4 v3, 0x1

    .line 80
    :cond_86
    array-length v4, v13

    new-array v9, v4, [Ljava/lang/Object;

    .line 81
    const/4 v4, 0x0

    array-length v15, v13

    move v7, v4

    :goto_8c
    if-ge v7, v15, :cond_21e

    .line 83
    aget-object v4, v13, v7

    .line 85
    const-string v16, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a8

    .line 86
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    .line 81
    :goto_a1
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_8c

    .line 54
    :cond_a5
    const/4 v2, 0x0

    goto/16 :goto_23

    .line 87
    :cond_a8
    const-string v16, "_display_name"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b9

    .line 88
    invoke-virtual {v10}, Ldbxyzptlk/l/k;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v7

    goto :goto_a1

    .line 89
    :cond_b9
    const-string v16, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    .line 90
    iget-object v4, v10, Ldbxyzptlk/l/k;->j:Ljava/lang/String;

    aput-object v4, v9, v7

    goto :goto_a1

    .line 91
    :cond_c8
    const-string v16, "size"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d7

    .line 92
    iget-object v4, v10, Ldbxyzptlk/l/k;->p:Ljava/lang/String;

    aput-object v4, v9, v7

    goto :goto_a1

    .line 93
    :cond_d7
    const-string v16, "bytes"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_ec

    .line 94
    iget-wide v0, v10, Ldbxyzptlk/l/k;->h:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v7

    goto :goto_a1

    .line 95
    :cond_ec
    const-string v16, "modified"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_fb

    .line 96
    iget-object v4, v10, Ldbxyzptlk/l/k;->l:Ljava/lang/String;

    aput-object v4, v9, v7

    goto :goto_a1

    .line 97
    :cond_fb
    const-string v16, "path"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10a

    .line 98
    iget-object v4, v10, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    aput-object v4, v9, v7

    goto :goto_a1

    .line 99
    :cond_10a
    const-string v16, "mime_type"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_119

    .line 100
    iget-object v4, v10, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    aput-object v4, v9, v7

    goto :goto_a1

    .line 101
    :cond_119
    const-string v16, "is_dir"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_132

    .line 102
    iget-boolean v4, v10, Ldbxyzptlk/l/k;->k:Z

    if-eqz v4, :cond_130

    const/4 v4, 0x1

    :goto_128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    :cond_130
    const/4 v4, 0x0

    goto :goto_128

    .line 103
    :cond_132
    const-string v16, "revision"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_142

    .line 104
    iget-object v4, v10, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 105
    :cond_142
    const-string v16, "thumb_exists"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15b

    .line 106
    iget-boolean v4, v10, Ldbxyzptlk/l/k;->s:Z

    if-eqz v4, :cond_159

    const/4 v4, 0x1

    :goto_151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    :cond_159
    const/4 v4, 0x0

    goto :goto_151

    .line 107
    :cond_15b
    const-string v16, "mime_type"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16b

    .line 108
    iget-object v4, v10, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 109
    :cond_16b
    const-string v16, "hash"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17b

    .line 110
    iget-object v4, v10, Ldbxyzptlk/l/k;->i:Ljava/lang/String;

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 111
    :cond_17b
    const-string v16, "local_revision"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19d

    .line 112
    if-eqz v3, :cond_194

    .line 113
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 115
    :cond_194
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 117
    :cond_19d
    const-string v16, "_data"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b8

    .line 118
    if-eqz v3, :cond_1b2

    .line 119
    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 121
    :cond_1b2
    const-string v4, ""

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 123
    :cond_1b8
    const-string v16, "is_favorite"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1da

    .line 124
    if-eqz v3, :cond_1d1

    .line 125
    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 127
    :cond_1d1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 129
    :cond_1da
    const-string v16, "encoding"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1fc

    .line 130
    if-eqz v3, :cond_1f3

    .line 131
    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 133
    :cond_1f3
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    goto/16 :goto_a1

    .line 136
    :cond_1fc
    const-string v16, "0"

    aput-object v16, v9, v7

    .line 137
    sget-object v16, Lcom/dropbox/android/provider/z;->a:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unimplemented projection in search: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1

    .line 140
    :cond_21e
    if-eqz v8, :cond_223

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_223
    invoke-virtual {v12, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v3, v11, 0x1

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_238

    .line 148
    :cond_22c
    const/16 v2, 0xff

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    move-object v2, v12

    .line 150
    goto/16 :goto_11

    :cond_238
    move v11, v3

    .line 147
    goto/16 :goto_58

    .line 152
    :cond_23b
    const/4 v2, 0x3

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    .line 155
    new-instance v2, Lcom/dropbox/android/provider/A;

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/dropbox/android/provider/A;-><init>(Lcom/dropbox/android/provider/z;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Lcom/dropbox/android/provider/u;)V

    .line 175
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "Search Update"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 177
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static/range {p5 .. p5}, Lcom/dropbox/android/provider/B;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_11
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v7

    const-string v1, "suggest_intent_query"

    aput-object v1, v0, v8

    .line 198
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-static {v0}, Lcom/dropbox/android/provider/B;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 199
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 201
    const v2, 0x7f090151

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    .line 204
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 205
    const v2, 0x7f020079

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    .line 206
    const-string v2, "android.intent.action.SEARCH"

    aput-object v2, v0, v7

    .line 207
    aput-object p2, v0, v8

    .line 209
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 210
    return-object v1
.end method
