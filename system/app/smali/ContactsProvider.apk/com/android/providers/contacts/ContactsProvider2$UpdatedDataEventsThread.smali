.class Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;
.super Ljava/lang/Thread;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatedDataEventsThread"
.end annotation


# instance fields
.field db:Landroid/database/sqlite/SQLiteDatabase;

.field private ids:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "activeDb"
    .parameter "ids"

    .prologue
    .line 3151
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 3152
    const-string v0, "UpdatedDataEventsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3148
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->ids:Ljava/lang/String;

    .line 3149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3153
    iput-object p3, p0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->ids:Ljava/lang/String;

    .line 3154
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3155
    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 3158
    const/4 v12, 0x0

    .line 3159
    .local v12, cursor:Landroid/database/Cursor;
    const-string v25, "UTC"

    .line 3160
    .local v25, timezone:Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3162
    .local v21, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->getDisplayOrder()I
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$000(Lcom/android/providers/contacts/ContactsProvider2;)I

    move-result v22

    .line 3165
    .local v22, orderOf:I
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "view_data"

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data3"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "raw_contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "account_name"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "display_name_alt"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "data14"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "data15"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype = ? AND _id in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->ids:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "vnd.android.cursor.item/contact_event"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3169
    if-eqz v12, :cond_1d8

    .line 3170
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 3171
    .local v17, indexId:I
    const-string v2, "data1"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 3172
    .local v19, indexStartDate:I
    const-string v2, "data2"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 3174
    .local v20, indexType:I
    const-string v2, "data3"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 3175
    .local v18, indexLabel:I
    const-string v2, "display_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 3176
    .local v15, indexDisplayName:I
    const-string v2, "display_name_alt"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 3177
    .local v16, indexDisplayNameReverse:I
    const/16 v26, 0x0

    .line 3178
    .local v26, titleBuilder:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 3180
    .local v14, idBuilder:Ljava/lang/StringBuilder;
    :goto_a3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 3182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->convertDate(Ljava/lang/String;)J
    invoke-static {v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->access$100(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)J

    move-result-wide v23

    .line 3183
    .local v23, startMillis:J
    new-instance v26, Ljava/lang/StringBuilder;

    .end local v26           #titleBuilder:Ljava/lang/StringBuilder;
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 3184
    .restart local v26       #titleBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_17f

    .line 3185
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 3186
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3188
    const-string v2, ". "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3198
    :cond_d7
    :goto_d7
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_19b

    .line 3199
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f2

    .line 3200
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3208
    :cond_f2
    :goto_f2
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 3209
    .local v27, values:Landroid/content/ContentValues;
    const-string v2, "calendar_id"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3210
    const-string v2, "title"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const-string v2, "dtstart"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3212
    const-string v2, "eventTimezone"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    const-string v2, "duration"

    const-string v3, "P1D"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    const-string v2, "rrule"

    const-string v3, "FREQ=YEARLY;UNTIL=20371231T000000Z;WKST=SU"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    const-string v2, "accessLevel"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3220
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14           #idBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3221
    .restart local v14       #idBuilder:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3224
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 3226
    .local v11, b:Landroid/content/ContentProviderOperation$Builder;
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    .line 3227
    .local v10, args:[Ljava/lang/String;
    const-string v2, "contact_data_id=?"

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3229
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_176
    .catchall {:try_start_10 .. :try_end_176} :catchall_178

    goto/16 :goto_a3

    .line 3233
    .end local v10           #args:[Ljava/lang/String;
    .end local v11           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #idBuilder:Ljava/lang/StringBuilder;
    .end local v15           #indexDisplayName:I
    .end local v16           #indexDisplayNameReverse:I
    .end local v17           #indexId:I
    .end local v18           #indexLabel:I
    .end local v19           #indexStartDate:I
    .end local v20           #indexType:I
    .end local v23           #startMillis:J
    .end local v26           #titleBuilder:Ljava/lang/StringBuilder;
    .end local v27           #values:Landroid/content/ContentValues;
    :catchall_178
    move-exception v2

    if-eqz v12, :cond_17e

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_17e
    throw v2

    .line 3191
    .restart local v14       #idBuilder:Ljava/lang/StringBuilder;
    .restart local v15       #indexDisplayName:I
    .restart local v16       #indexDisplayNameReverse:I
    .restart local v17       #indexId:I
    .restart local v18       #indexLabel:I
    .restart local v19       #indexStartDate:I
    .restart local v20       #indexType:I
    .restart local v23       #startMillis:J
    .restart local v26       #titleBuilder:Ljava/lang/StringBuilder;
    :cond_17f
    :try_start_17f
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 3192
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3193
    const-string v2, ". "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d7

    .line 3203
    :cond_19b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f2

    .line 3204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d6
    .catchall {:try_start_17f .. :try_end_1d6} :catchall_178

    goto/16 :goto_f2

    .line 3233
    .end local v14           #idBuilder:Ljava/lang/StringBuilder;
    .end local v15           #indexDisplayName:I
    .end local v16           #indexDisplayNameReverse:I
    .end local v17           #indexId:I
    .end local v18           #indexLabel:I
    .end local v19           #indexStartDate:I
    .end local v20           #indexType:I
    .end local v23           #startMillis:J
    .end local v26           #titleBuilder:Ljava/lang/StringBuilder;
    :cond_1d8
    if-eqz v12, :cond_1dd

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3238
    :cond_1dd
    :try_start_1dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$UpdatedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.calendar"

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1dd .. :try_end_1f0} :catch_1f1
    .catch Landroid/content/OperationApplicationException; {:try_start_1dd .. :try_end_1f0} :catch_1fa

    .line 3244
    :goto_1f0
    return-void

    .line 3239
    :catch_1f1
    move-exception v13

    .line 3240
    .local v13, e:Landroid/os/RemoteException;
    const-string v2, "ContactsProvider"

    const-string v3, "Ignoring unexpected remote exception"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f0

    .line 3241
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1fa
    move-exception v13

    .line 3242
    .local v13, e:Landroid/content/OperationApplicationException;
    const-string v2, "ContactsProvider"

    const-string v3, "Ignoring unexpected exception"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f0
.end method
