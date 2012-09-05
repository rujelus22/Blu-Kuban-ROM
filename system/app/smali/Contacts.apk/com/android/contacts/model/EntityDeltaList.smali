.class public Lcom/android/contacts/model/EntityDeltaList;
.super Ljava/util/ArrayList;
.source "EntityDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDeltaList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 395
    new-instance v0, Lcom/android/contacts/model/EntityDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDeltaList$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/EntityDeltaList$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;II[I)V
    .registers 14
    .parameter
    .parameter "index1"
    .parameter "index2"
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v7, 0x0

    .line 237
    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 239
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 241
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 242
    .local v3, rawContactId1:Ljava/lang/Long;
    aget v0, p4, p2

    .line 243
    .local v0, backRef1:I
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_5c

    .line 244
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 251
    :goto_33
    invoke-virtual {p0, p3}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 252
    .local v4, rawContactId2:Ljava/lang/Long;
    aget v1, p4, p3

    .line 253
    .local v1, backRef2:I
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_64

    .line 254
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 261
    :goto_54
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v1           #backRef2:I
    .end local v4           #rawContactId2:Ljava/lang/Long;
    :cond_5b
    return-void

    .line 245
    :cond_5c
    if-ltz v0, :cond_5b

    .line 246
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_33

    .line 255
    .restart local v1       #backRef2:I
    .restart local v4       #rawContactId2:Ljava/lang/Long;
    :cond_64
    if-ltz v1, :cond_5b

    .line 256
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_54
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .registers 6
    .parameter
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v0

    .line 223
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 224
    const/4 v2, 0x0

    .local v2, j:I
    :goto_8
    if-ge v2, v0, :cond_12

    .line 225
    if-eq v1, v2, :cond_f

    .line 226
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/contacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;II[I)V

    .line 224
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 223
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 230
    .end local v2           #j:I
    :cond_15
    return-void
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Entity;",
            ">;)",
            "Lcom/android/contacts/model/EntityDeltaList;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/Entity;>;"
    new-instance v2, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {v2}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 86
    .local v2, state:Lcom/android/contacts/model/EntityDeltaList;
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 89
    .local v0, before:Landroid/content/Entity;
    invoke-static {v0}, Lcom/android/contacts/model/EntityDelta;->fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    .line 90
    .local v1, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2, v1}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 92
    .end local v0           #before:Landroid/content/Entity;
    .end local v1           #entity:Lcom/android/contacts/model/EntityDelta;
    :cond_19
    return-object v2
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDeltaList;
    .registers 12
    .parameter "entityUri"
    .parameter "resolver"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 69
    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v6

    .line 73
    .local v6, iterator:Landroid/content/EntityIterator;
    :try_start_e
    invoke-static {v6}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    move-result-object v0

    .line 75
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    return-object v0

    :catchall_16
    move-exception v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method public static fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDeltaList;
    .registers 2
    .parameter "delta"

    .prologue
    .line 57
    new-instance v0, Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 58
    .local v0, state:Lcom/android/contacts/model/EntityDeltaList;
    invoke-virtual {v0, p0}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    .line 59
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/EntityDeltaList;)Lcom/android/contacts/model/EntityDeltaList;
    .registers 8
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 101
    if-nez p0, :cond_7

    new-instance p0, Lcom/android/contacts/model/EntityDeltaList;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDeltaList;-><init>()V

    .line 104
    .restart local p0
    :cond_7
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 105
    .local v4, remoteEntity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 108
    .local v3, rawContactId:Ljava/lang/Long;
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    .line 109
    .local v1, localEntity:Lcom/android/contacts/model/EntityDelta;
    invoke-static {v1, v4}, Lcom/android/contacts/model/EntityDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v2

    .line 111
    .local v2, merged:Lcom/android/contacts/model/EntityDelta;
    if-nez v1, :cond_b

    if-eqz v2, :cond_b

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 117
    .end local v1           #localEntity:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #merged:Lcom/android/contacts/model/EntityDelta;
    .end local v3           #rawContactId:Ljava/lang/Long;
    .end local v4           #remoteEntity:Lcom/android/contacts/model/EntityDelta;
    :cond_2f
    return-object p0
.end method


# virtual methods
.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    .prologue
    .line 210
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 212
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 213
    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 129
    .local v7, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v15

    .line 130
    .local v15, rawContactId:J
    const/4 v9, -0x1

    .line 133
    .local v9, firstInsertRow:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta;

    .line 134
    .local v6, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_d

    .line 137
    .end local v6           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 138
    .local v3, assertMark:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v4, v0, [I

    .line 140
    .local v4, backRefs:[I
    const/16 v17, 0x0

    .line 143
    .local v17, rawContactIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta;

    .line 144
    .restart local v6       #delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 145
    .local v8, firstBatch:I
    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v12

    .line 146
    .local v12, isInsert:Z
    add-int/lit8 v18, v17, 0x1

    .end local v17           #rawContactIndex:I
    .local v18, rawContactIndex:I
    if-eqz v12, :cond_8e

    move/from16 v19, v8

    :goto_49
    aput v19, v4, v17

    .line 148
    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta;->buildDiff(Ljava/util/ArrayList;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v19, v0

    if-eqz v19, :cond_99

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .local v2, arr$:[J
    array-length v14, v2

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_5c
    if-ge v11, v14, :cond_99

    aget-wide v19, v2, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 154
    .local v13, joinedRawContactId:Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 155
    .local v5, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 156
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_91

    .line 157
    const-string v19, "raw_contact_id2"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 162
    :goto_82
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v11, v11, 0x1

    goto :goto_5c

    .line 146
    .end local v2           #arr$:[J
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #i$:I
    .end local v13           #joinedRawContactId:Ljava/lang/Long;
    .end local v14           #len$:I
    :cond_8e
    const/16 v19, -0x1

    goto :goto_49

    .line 159
    .restart local v2       #arr$:[J
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #i$:I
    .restart local v13       #joinedRawContactId:Ljava/lang/Long;
    .restart local v14       #len$:I
    :cond_91
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_82

    .line 167
    .end local v2           #arr$:[J
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #i$:I
    .end local v13           #joinedRawContactId:Ljava/lang/Long;
    .end local v14           #len$:I
    :cond_99
    if-nez v12, :cond_9e

    move/from16 v17, v18

    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto :goto_2f

    .line 170
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_9e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a9

    move/from16 v17, v18

    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto :goto_2f

    .line 172
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_a9
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_d4

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 175
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 176
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 177
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_d0
    move/from16 v17, v18

    .line 191
    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto/16 :goto_2f

    .line 179
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_d4
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_dc

    .line 181
    move v9, v8

    goto :goto_d0

    .line 185
    :cond_dc
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 186
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 188
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 189
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    .line 193
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v6           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v8           #firstBatch:I
    .end local v12           #isInsert:Z
    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    :cond_f8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_105

    .line 194
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/contacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    .line 198
    :cond_105
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v3, :cond_110

    .line 199
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 202
    :cond_110
    return-object v7
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .registers 8

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 271
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 272
    .local v2, rawContactId:Ljava/lang/Long;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    .line 273
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 276
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #rawContactId:Ljava/lang/Long;
    :goto_2a
    return-wide v3

    :cond_2b
    const-wide/16 v3, -0x1

    goto :goto_2a
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;
    .registers 4
    .parameter "rawContactId"

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    .line 306
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    goto :goto_8
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .registers 5
    .parameter "index"

    .prologue
    .line 294
    if-ltz p1, :cond_1f

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1f

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 296
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 297
    .local v1, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 298
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 301
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v1           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .registers 7
    .parameter "rawContactId"

    .prologue
    const/4 v3, -0x1

    .line 313
    if-nez p1, :cond_5

    move v1, v3

    .line 321
    :cond_4
    :goto_4
    return v1

    .line 314
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    .line 315
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_19

    .line 316
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    .line 317
    .local v0, currentId:Ljava/lang/Long;
    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v0           #currentId:Ljava/lang/Long;
    :cond_19
    move v1, v3

    .line 321
    goto :goto_4
.end method

.method public isMarkedForJoining()Z
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isMarkedForSplitting()Z
    .registers 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .parameter "source"

    .prologue
    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 387
    .local v1, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v2, :cond_19

    .line 389
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 391
    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    :goto_26
    iput-boolean v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    .line 393
    return-void

    .line 392
    :cond_29
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public setJoinWithRawContacts([J)V
    .registers 2
    .parameter "rawContactIds"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .line 361
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    .line 376
    .local v2, size:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 378
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_b

    .line 380
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_1b
    iget-object v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 381
    iget-boolean v3, p0, Lcom/android/contacts/model/EntityDeltaList;->mSplitRawContacts:Z

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    :goto_25
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    return-void

    .line 381
    :cond_29
    const/4 v3, 0x0

    goto :goto_25
.end method
