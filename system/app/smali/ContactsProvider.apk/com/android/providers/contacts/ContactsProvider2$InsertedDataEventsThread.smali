.class Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;
.super Ljava/lang/Thread;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertedDataEventsThread"
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
    .line 3026
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 3027
    const-string v0, "InsertedDataEventsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3023
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->ids:Ljava/lang/String;

    .line 3024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3028
    iput-object p3, p0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->ids:Ljava/lang/String;

    .line 3029
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3030
    return-void
.end method


# virtual methods
.method public run()V
    .registers 34

    .prologue
    .line 3033
    const/4 v11, 0x0

    .line 3034
    .local v11, cursor:Landroid/database/Cursor;
    const-string v30, "UTC"

    .line 3035
    .local v30, timezone:Ljava/lang/String;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 3037
    .local v26, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->getDisplayOrder()I
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$000(Lcom/android/providers/contacts/ContactsProvider2;)I

    move-result v27

    .line 3040
    .local v27, orderOf:I
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->db:Landroid/database/sqlite/SQLiteDatabase;

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

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->ids:Ljava/lang/String;

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

    move-result-object v11

    .line 3043
    if-eqz v11, :cond_24a

    .line 3044
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 3045
    .local v20, indexId:I
    const-string v2, "data1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 3046
    .local v24, indexStartDate:I
    const-string v2, "data2"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 3048
    .local v25, indexType:I
    const-string v2, "data3"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 3049
    .local v21, indexLabel:I
    const-string v2, "raw_contact_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 3050
    .local v22, indexRawContactsId:I
    const-string v2, "account_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 3051
    .local v15, indexAccountName:I
    const-string v2, "account_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 3052
    .local v16, indexAccountType:I
    const-string v2, "display_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 3053
    .local v18, indexDisplayName:I
    const-string v2, "display_name_alt"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 3054
    .local v19, indexDisplayNameReverse:I
    const-string v2, "data15"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 3055
    .local v17, indexDateType:I
    const-string v2, "data14"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 3056
    .local v23, indexSolarDate:I
    const/16 v31, 0x0

    .line 3058
    .local v31, titleBuilder:Ljava/lang/StringBuilder;
    :goto_c0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_24a

    .line 3060
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 3062
    .local v13, dateType:I
    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3074
    .local v12, date:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->convertDate(Ljava/lang/String;)J
    invoke-static {v2, v12}, Lcom/android/providers/contacts/ContactsProvider2;->access$100(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)J

    move-result-wide v28

    .line 3075
    .local v28, startMillis:J
    new-instance v31, Ljava/lang/StringBuilder;

    .end local v31           #titleBuilder:Ljava/lang/StringBuilder;
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 3076
    .restart local v31       #titleBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_1f1

    .line 3077
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_fe

    .line 3078
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    const-string v2, ". "

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3089
    :cond_fe
    :goto_fe
    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_20d

    .line 3090
    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_119

    .line 3091
    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    :cond_119
    :goto_119
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 3101
    .local v32, values:Landroid/content/ContentValues;
    const-string v2, "contact_account_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3103
    const-string v2, "calendar_id"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3104
    const-string v2, "title"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    const-string v2, "allDay"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3107
    const-string v2, "dtstart"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3108
    const-string v2, "eventTimezone"

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    const-string v2, "duration"

    const-string v3, "P1D"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    const-string v2, "rrule"

    const-string v3, "FREQ=YEARLY;UNTIL=20371231T000000Z;WKST=SU"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    const-string v2, "description"

    const-string v3, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    const-string v2, "eventLocation"

    const-string v3, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
    const-string v2, "accessLevel"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3117
    const-string v2, "contact_data_id"

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    const-string v2, "contact_id"

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 3125
    .local v10, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e8
    .catchall {:try_start_10 .. :try_end_1e8} :catchall_1ea

    goto/16 :goto_c0

    .line 3129
    .end local v10           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #date:Ljava/lang/String;
    .end local v13           #dateType:I
    .end local v15           #indexAccountName:I
    .end local v16           #indexAccountType:I
    .end local v17           #indexDateType:I
    .end local v18           #indexDisplayName:I
    .end local v19           #indexDisplayNameReverse:I
    .end local v20           #indexId:I
    .end local v21           #indexLabel:I
    .end local v22           #indexRawContactsId:I
    .end local v23           #indexSolarDate:I
    .end local v24           #indexStartDate:I
    .end local v25           #indexType:I
    .end local v28           #startMillis:J
    .end local v31           #titleBuilder:Ljava/lang/StringBuilder;
    .end local v32           #values:Landroid/content/ContentValues;
    :catchall_1ea
    move-exception v2

    if-eqz v11, :cond_1f0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1f0
    throw v2

    .line 3082
    .restart local v12       #date:Ljava/lang/String;
    .restart local v13       #dateType:I
    .restart local v15       #indexAccountName:I
    .restart local v16       #indexAccountType:I
    .restart local v17       #indexDateType:I
    .restart local v18       #indexDisplayName:I
    .restart local v19       #indexDisplayNameReverse:I
    .restart local v20       #indexId:I
    .restart local v21       #indexLabel:I
    .restart local v22       #indexRawContactsId:I
    .restart local v23       #indexSolarDate:I
    .restart local v24       #indexStartDate:I
    .restart local v25       #indexType:I
    .restart local v28       #startMillis:J
    .restart local v31       #titleBuilder:Ljava/lang/StringBuilder;
    :cond_1f1
    :try_start_1f1
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_fe

    .line 3083
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    const-string v2, ". "

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_fe

    .line 3094
    :cond_20d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_119

    .line 3095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_248
    .catchall {:try_start_1f1 .. :try_end_248} :catchall_1ea

    goto/16 :goto_119

    .line 3129
    .end local v12           #date:Ljava/lang/String;
    .end local v13           #dateType:I
    .end local v15           #indexAccountName:I
    .end local v16           #indexAccountType:I
    .end local v17           #indexDateType:I
    .end local v18           #indexDisplayName:I
    .end local v19           #indexDisplayNameReverse:I
    .end local v20           #indexId:I
    .end local v21           #indexLabel:I
    .end local v22           #indexRawContactsId:I
    .end local v23           #indexSolarDate:I
    .end local v24           #indexStartDate:I
    .end local v25           #indexType:I
    .end local v28           #startMillis:J
    .end local v31           #titleBuilder:Ljava/lang/StringBuilder;
    :cond_24a
    if-eqz v11, :cond_24f

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3134
    :cond_24f
    :try_start_24f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$InsertedDataEventsThread;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.calendar"

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_262
    .catch Landroid/os/RemoteException; {:try_start_24f .. :try_end_262} :catch_263
    .catch Landroid/content/OperationApplicationException; {:try_start_24f .. :try_end_262} :catch_26c

    .line 3140
    :goto_262
    return-void

    .line 3135
    :catch_263
    move-exception v14

    .line 3136
    .local v14, e:Landroid/os/RemoteException;
    const-string v2, "ContactsProvider"

    const-string v3, "Ignoring unexpected remote exception"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_262

    .line 3137
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_26c
    move-exception v14

    .line 3138
    .local v14, e:Landroid/content/OperationApplicationException;
    const-string v2, "ContactsProvider"

    const-string v3, "Ignoring unexpected exception"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_262
.end method
