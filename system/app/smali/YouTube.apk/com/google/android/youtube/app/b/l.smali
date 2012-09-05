.class public final Lcom/google/android/youtube/app/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/c;

.field private final b:J

.field private final c:J

.field private final d:Landroid/content/SharedPreferences;


# virtual methods
.method public final a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/youtube/app/b/n;
    .registers 30
    .parameter
    .parameter

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/app/b/l;->d:Landroid/content/SharedPreferences;

    const-string v3, "prefetch_quota"

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    mul-long v7, v2, v4

    .line 78
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 79
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 80
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 81
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 83
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 84
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 86
    const-wide/16 v4, 0x0

    .line 87
    const-wide/16 v2, 0x0

    .line 88
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    move-wide/from16 v5, v25

    move-wide/from16 v3, v23

    :goto_4d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 89
    iget-wide v0, v2, Lcom/google/android/youtube/app/b/a;->c:J

    move-wide/from16 v16, v0

    add-long v5, v5, v16

    .line 90
    iget-wide v0, v2, Lcom/google/android/youtube/app/b/a;->d:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, v3

    if-lez v16, :cond_69

    .line 91
    iget-wide v3, v2, Lcom/google/android/youtube/app/b/a;->d:J

    .line 93
    :cond_69
    sget-object v16, Lcom/google/android/youtube/app/b/m;->a:[I

    iget-object v0, v2, Lcom/google/android/youtube/app/b/a;->f:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1d0

    .line 101
    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 95
    :pswitch_7c
    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 98
    :pswitch_80
    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 107
    :cond_84
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_88
    :goto_88
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 108
    iget-wide v0, v2, Lcom/google/android/youtube/app/b/a;->d:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, v3

    if-lez v16, :cond_88

    .line 109
    invoke-virtual {v12, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 114
    :cond_a0
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 117
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 118
    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-wide v15, v2, Lcom/google/android/youtube/app/b/a;->c:J

    sub-long/2addr v5, v15

    goto :goto_a7

    .line 124
    :cond_ba
    cmp-long v2, v5, v7

    if-lez v2, :cond_f6

    .line 125
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 126
    :goto_c1
    cmp-long v2, v5, v7

    if-lez v2, :cond_d8

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d8

    .line 127
    invoke-virtual {v9}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 128
    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-wide v2, v2, Lcom/google/android/youtube/app/b/a;->c:J

    sub-long/2addr v5, v2

    .line 130
    goto :goto_c1

    .line 132
    :cond_d8
    cmp-long v2, v5, v7

    if-lez v2, :cond_f6

    .line 133
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 134
    :goto_df
    cmp-long v2, v5, v7

    if-lez v2, :cond_f6

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f6

    .line 135
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 136
    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-wide v2, v2, Lcom/google/android/youtube/app/b/a;->c:J

    sub-long/2addr v5, v2

    .line 138
    goto :goto_df

    .line 142
    :cond_f6
    const-wide/16 v2, 0x0

    .line 143
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 146
    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v3, v2

    :goto_102
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_137

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/app/b/l;->a:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v15}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v15

    iget-wide v0, v2, Lcom/google/android/youtube/app/b/a;->g:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/app/b/l;->b:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0xe10

    mul-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    cmp-long v15, v15, v17

    if-lez v15, :cond_1cc

    .line 149
    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-wide v15, v2, Lcom/google/android/youtube/app/b/a;->c:J

    add-long v2, v3, v15

    :goto_135
    move-wide v3, v2

    goto :goto_102

    .line 155
    :cond_137
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_178

    .line 156
    invoke-virtual {v12}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    iget-wide v15, v2, Lcom/google/android/youtube/app/b/a;->d:J

    .line 157
    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_149
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_178

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 158
    iget-wide v0, v2, Lcom/google/android/youtube/app/b/a;->d:J

    move-wide/from16 v17, v0

    sub-long v17, v15, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/youtube/app/b/l;->c:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0xe10

    mul-long v19, v19, v21

    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    cmp-long v10, v17, v19

    if-ltz v10, :cond_1ca

    .line 159
    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-wide v0, v2, Lcom/google/android/youtube/app/b/a;->c:J

    move-wide/from16 v17, v0

    add-long v2, v3, v17

    :goto_176
    move-wide v3, v2

    goto :goto_149

    .line 166
    :cond_178
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_17c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19c

    .line 167
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 168
    sub-long v15, v5, v3

    iget-wide v0, v2, Lcom/google/android/youtube/app/b/a;->c:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    cmp-long v10, v15, v7

    if-gtz v10, :cond_198

    .line 169
    iget-wide v15, v2, Lcom/google/android/youtube/app/b/a;->c:J

    add-long/2addr v5, v15

    goto :goto_17c

    .line 171
    :cond_198
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_17c

    .line 176
    :cond_19c
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 177
    :goto_19f
    cmp-long v2, v5, v7

    if-lez v2, :cond_1b0

    .line 178
    invoke-virtual {v11}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 179
    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-wide v2, v2, Lcom/google/android/youtube/app/b/a;->c:J

    sub-long/2addr v5, v2

    .line 181
    goto :goto_19f

    .line 184
    :cond_1b0
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/b/a;

    .line 185
    invoke-virtual {v14, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1b4

    .line 188
    :cond_1c4
    new-instance v2, Lcom/google/android/youtube/app/b/n;

    invoke-direct {v2, v13, v14}, Lcom/google/android/youtube/app/b/n;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v2

    :cond_1ca
    move-wide v2, v3

    goto :goto_176

    :cond_1cc
    move-wide v2, v3

    goto/16 :goto_135

    .line 93
    nop

    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_80
    .end packed-switch
.end method
