.class public final Laq;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;JLdg;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p0, p1, p2, p3}, Laq;->b(Landroid/content/Context;JLdg;)Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_9

    .line 79
    invoke-static {p0, v0}, Laq;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 81
    :cond_9
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 83
    sget-object v3, Ldg;->w:Ldg;

    if-ne p3, v3, :cond_18

    invoke-interface {v0, v1, v2}, Lw;->e(J)V

    .line 84
    :cond_18
    sget-object v3, Ldg;->x:Ldg;

    if-ne p3, v3, :cond_1f

    invoke-interface {v0, v1, v2}, Lw;->f(J)V

    .line 85
    :cond_1f
    return-void
.end method

.method public static a(Landroid/content/Context;Ldg;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lw;->A()J

    move-result-wide v1

    .line 57
    invoke-interface {v0}, Lw;->z()J

    move-result-wide v3

    .line 58
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 60
    invoke-static {p0, v0, v1, p1}, Laq;->b(Landroid/content/Context;JLdg;)Ljava/util/List;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_3c

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap;

    .line 65
    iget-boolean v3, v0, Lap;->e:Z

    if-eqz v3, :cond_1f

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 69
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 71
    invoke-static {p0, v1}, Laq;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 74
    :cond_3c
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x3e8

    .line 203
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap;

    new-instance v5, Lbt;

    invoke-direct {v5}, Lbt;-><init>()V

    iget-boolean v6, v0, Lap;->b:Z

    if-eqz v6, :cond_4b

    const-string v6, "incoming"

    :goto_33
    invoke-virtual {v5, v6}, Lbt;->setType(Ljava/lang/String;)V

    iget-object v6, v0, Lap;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lbt;->setNumber(Ljava/lang/String;)V

    iget-wide v6, v0, Lap;->d:J

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lbt;->setDuration(J)V

    iget-wide v6, v0, Lap;->c:J

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lbt;->setTime(J)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_4b
    const-string v6, "outgoing"

    goto :goto_33

    :cond_4e
    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    div-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lcg;->setTime(J)V

    invoke-virtual {v0, v3}, Lcg;->mergeCallActivityNotifications(Ljava/util/Collection;)V

    .line 208
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 211
    :cond_5e
    return-void
.end method

.method private static b(Landroid/content/Context;JLdg;)Ljava/util/List;
    .registers 32
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ldg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 94
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-static/range {p0 .. p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v3

    .line 96
    invoke-interface {v3}, Lw;->z()J

    move-result-wide v14

    .line 97
    invoke-interface {v3}, Lw;->A()J

    move-result-wide v16

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date > "

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 105
    const-string p1, "number"

    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 106
    const-string p2, "date"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 107
    const-string v3, "type"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 108
    const-string v3, "duration"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 109
    const-string v3, "idennumber"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 111
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1b1

    move-wide v3, v11

    move-wide/from16 v26, v9

    move-wide/from16 v10, v26

    .line 114
    :goto_6f
    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 116
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 117
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v21, 0x3e8

    mul-long v8, v8, v21

    .line 118
    const/16 v21, 0x0

    .line 121
    if-eqz v5, :cond_1c8

    const-string v22, "@sprint.com"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c8

    .line 126
    const/16 v21, 0x1

    .line 127
    const-string v22, "@sprint.com"

    const-string v23, ""

    move-object v0, v5

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 129
    const-wide/16 v22, 0x3e8

    div-long v8, v8, v22

    move/from16 v26, v21

    move-object/from16 v21, v5

    move/from16 v5, v26

    .line 131
    :goto_bd
    const-string v22, "-1"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c0

    .line 133
    const/4 v5, 0x1

    .line 134
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v26, v5

    move-object/from16 v5, v21

    move/from16 v21, v26

    .line 136
    :goto_d8
    if-nez v5, :cond_1bc

    const-string v5, ""

    move-object/from16 v22, v5

    .line 138
    :goto_de
    const-wide/16 v23, 0x0

    cmp-long v5, v8, v23

    if-lez v5, :cond_1b8

    const-wide/16 v23, 0x1

    add-long v3, v3, v23

    move-wide/from16 v23, v3

    .line 139
    :goto_ea
    const-wide/32 v3, 0x4c4b40

    cmp-long v3, v8, v3

    if-lez v3, :cond_f5

    const-wide/16 v3, 0x1

    add-long/2addr v3, v10

    move-wide v10, v3

    .line 142
    :cond_f5
    sparse-switch v12, :sswitch_data_1d0

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown callType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li;->e(Ljava/lang/String;)V

    .line 181
    :cond_10e
    :sswitch_10e
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1b4

    .line 182
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 184
    const-wide/16 p0, 0x0

    cmp-long p0, v23, p0

    if-lez p0, :cond_158

    .line 185
    move-wide v0, v10

    long-to-double v0, v0

    move-wide/from16 p0, v0

    const-wide/high16 p2, 0x3ff0

    mul-double p0, p0, p2

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 p2, v0

    const-wide/high16 v3, 0x3ff0

    mul-double p2, p2, v3

    div-double p0, p0, p2

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call durations likely millis: "

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Li;->c(Ljava/lang/String;)V

    .line 187
    const-wide p2, 0x3fe999999999999aL

    cmpl-double p0, p0, p2

    if-lez p0, :cond_1ab

    .line 188
    const-string p0, "WARNING: predicting that calls durations are in milliseconds!"

    invoke-static/range {p0 .. p0}, Li;->d(Ljava/lang/String;)V

    :cond_158
    :goto_158
    move-object/from16 p0, v13

    .line 198
    :goto_15a
    return-object p0

    .line 144
    :sswitch_15b
    const/4 v3, 0x1

    move v5, v3

    .line 161
    :goto_15d
    const-string v3, ","

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    const/4 v3, 0x0

    move/from16 v25, v3

    :goto_16d
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_10e

    aget-object v4, v12, v25

    .line 162
    new-instance v3, Lap;

    invoke-direct/range {v3 .. v9}, Lap;-><init>(Ljava/lang/String;ZJJ)V

    .line 166
    if-eqz v21, :cond_17f

    const/4 v4, 0x1

    iput-boolean v4, v3, Lap;->e:Z

    .line 169
    :cond_17f
    if-eqz v5, :cond_19a

    sget-object v4, Ldg;->w:Ldg;

    move-object/from16 v0, p3

    move-object v1, v4

    if-ne v0, v1, :cond_19a

    .line 170
    cmp-long v4, v6, v14

    if-lez v4, :cond_18f

    .line 171
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_18f
    :goto_18f
    add-int/lit8 v3, v25, 0x1

    move/from16 v25, v3

    goto :goto_16d

    .line 148
    :sswitch_194
    const/4 v3, 0x1

    move v5, v3

    .line 149
    goto :goto_15d

    .line 151
    :sswitch_197
    const/4 v3, 0x0

    move v5, v3

    .line 152
    goto :goto_15d

    .line 174
    :cond_19a
    if-nez v5, :cond_18f

    sget-object v4, Ldg;->x:Ldg;

    move-object/from16 v0, p3

    move-object v1, v4

    if-ne v0, v1, :cond_18f

    .line 175
    cmp-long v4, v6, v16

    if-lez v4, :cond_18f

    .line 176
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18f

    .line 190
    :cond_1ab
    const-string p0, "predicting that calls durations are in seconds"

    invoke-static/range {p0 .. p0}, Li;->c(Ljava/lang/String;)V

    goto :goto_158

    .line 198
    :cond_1b1
    const/16 p0, 0x0

    goto :goto_15a

    :cond_1b4
    move-wide/from16 v3, v23

    goto/16 :goto_6f

    :cond_1b8
    move-wide/from16 v23, v3

    goto/16 :goto_ea

    :cond_1bc
    move-object/from16 v22, v5

    goto/16 :goto_de

    :cond_1c0
    move/from16 v26, v5

    move-object/from16 v5, v21

    move/from16 v21, v26

    goto/16 :goto_d8

    :cond_1c8
    move/from16 v26, v21

    move-object/from16 v21, v5

    move/from16 v5, v26

    goto/16 :goto_bd

    .line 142
    :sswitch_data_1d0
    .sparse-switch
        0x1 -> :sswitch_15b
        0x2 -> :sswitch_197
        0x3 -> :sswitch_194
        0x3ec -> :sswitch_10e
    .end sparse-switch
.end method
