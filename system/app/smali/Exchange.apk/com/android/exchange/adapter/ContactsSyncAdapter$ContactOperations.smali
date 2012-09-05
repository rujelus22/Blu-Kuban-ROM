.class Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
.super Ljava/util/ArrayList;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContactBackValue:I

.field private mContactIndexArray:[I

.field private mContactIndexCount:I

.field private mCount:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1113
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    iput v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    .line 1118
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 1121
    const-string v0, "5"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    .line 1124
    iput v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    .line 1126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1113
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    return-object v0
.end method

.method private cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "cv"
    .parameter "column"
    .parameter "oldValue"

    .prologue
    const/4 v0, 0x1

    .line 1349
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1351
    if-eqz p3, :cond_1c

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1358
    :cond_13
    :goto_13
    return v0

    .line 1355
    :cond_14
    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    .line 1358
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;
    .registers 12
    .parameter
    .parameter "contentItemType"
    .parameter "type"
    .parameter "stringType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Entity$NamedContentValues;"
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/4 v4, 0x0

    .line 1187
    .local v4, result:Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 1188
    .local v3, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1189
    .local v5, uri:Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1190
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1191
    const-string v6, "mimetype"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1193
    if-eqz p4, :cond_39

    .line 1194
    const-string v6, "data1"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1195
    move-object v4, v3

    goto :goto_5

    .line 1204
    :cond_39
    if-ltz p3, :cond_4f

    const-string v6, "data2"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    const-string v6, "data2"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p3, :cond_5

    .line 1206
    :cond_4f
    move-object v4, v3

    goto :goto_5

    .line 1215
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_51
    if-eqz v4, :cond_56

    .line 1216
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1220
    :cond_56
    return-object v4
.end method

.method private findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .parameter
    .parameter "type"
    .parameter "contentItemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 1238
    .local v3, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1239
    .local v6, uri:Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1240
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1241
    const-string v8, "mimetype"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1243
    const/4 v8, -0x1

    if-eq p2, v8, :cond_3c

    .line 1244
    const-string v8, "data2"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1245
    .local v5, subtype:I
    if-ne p2, v5, :cond_9

    .line 1249
    .end local v5           #subtype:I
    :cond_3c
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1257
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_40
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 1258
    .local v7, values:Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1262
    .end local v7           #values:Landroid/content/Entity$NamedContentValues;
    :cond_54
    return-object v4
.end method

.method private newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .registers 7
    .parameter "entity"
    .parameter "mimeType"

    .prologue
    .line 1318
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 1319
    .local v1, contactId:I
    if-eqz p1, :cond_12

    .line 1320
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1324
    :cond_12
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;)V

    .line 1326
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    if-nez p1, :cond_30

    .line 1327
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValueBackReference(Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1333
    :goto_2a
    const-string v2, "mimetype"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1334
    return-object v0

    .line 1329
    :cond_30
    const-string v2, "raw_contact_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    goto :goto_2a
.end method

.method private typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .registers 5
    .parameter "entity"
    .parameter "mimeType"
    .parameter "type"

    .prologue
    .line 1307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method private untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .registers 5
    .parameter "entity"
    .parameter "mimeType"

    .prologue
    .line 1311
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .registers 3
    .parameter "op"

    .prologue
    .line 1130
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    .line 1132
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 1113
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public addBirthday(Landroid/content/Entity;Ljava/lang/String;)V
    .registers 7
    .parameter "entity"
    .parameter "birthday"

    .prologue
    const/4 v3, 0x3

    .line 1377
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1379
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1380
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_14

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1386
    :goto_13
    return-void

    .line 1383
    :cond_14
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1384
    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1385
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_13
.end method

.method public addBusiness(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;)V
    .registers 7
    .parameter "entity"
    .parameter "business"

    .prologue
    .line 1431
    const-string v2, "vnd.android.cursor.item/eas_business"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1432
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1433
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_29

    const-string v2, "data8"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "data6"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "data7"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1445
    :cond_28
    :goto_28
    return-void

    .line 1438
    :cond_29
    invoke-virtual {p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->hasData()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1441
    const-string v2, "data8"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1442
    const-string v2, "data6"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1443
    const-string v2, "data7"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1444
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_28
.end method

.method public addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V
    .registers 9
    .parameter "entity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1362
    .local p2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "vnd.android.cursor.item/eas_children"

    invoke-direct {p0, p1, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1363
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const/4 v2, 0x0

    .line 1364
    .local v2, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1365
    .local v1, child:Ljava/lang/String;
    sget-object v5, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-object v5, v5, v2

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_b

    .line 1367
    .end local v1           #child:Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1368
    return-void
.end method

.method public addGroup(Landroid/content/Entity;Ljava/lang/String;)V
    .registers 6
    .parameter "entity"
    .parameter "group"

    .prologue
    .line 1371
    const-string v1, "vnd.android.cursor.item/group_membership"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1372
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1373
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1374
    return-void
.end method

.method public addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "entity"
    .parameter "prefix"
    .parameter "givenName"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "suffix"
    .parameter "displayName"
    .parameter "yomiFirstName"
    .parameter "yomiLastName"
    .parameter "fileAs"

    .prologue
    .line 1391
    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1392
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1393
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_43

    const-string v2, "data2"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "data3"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "data5"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "data7"

    invoke-direct {p0, v1, v2, p8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "data6"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1413
    :goto_42
    return-void

    .line 1404
    :cond_43
    const-string v2, "data2"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1405
    const-string v2, "data3"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1406
    const-string v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1407
    const-string v2, "data6"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1408
    const-string v2, "data7"

    invoke-virtual {v0, v2, p8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1409
    const-string v2, "data9"

    invoke-virtual {v0, v2, p9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1410
    const-string v2, "data4"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1412
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_42
.end method

.method public addNickname(Landroid/content/Entity;Ljava/lang/String;)V
    .registers 7
    .parameter "entity"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    .line 1491
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1493
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1494
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_14

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1500
    :goto_13
    return-void

    .line 1497
    :cond_14
    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1498
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1499
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_13
.end method

.method public addNote(Landroid/content/Entity;Ljava/lang/String;)V
    .registers 10
    .parameter "entity"
    .parameter "note"

    .prologue
    .line 1617
    const-string v5, "vnd.android.cursor.item/note"

    const/4 v6, -0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1618
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v2, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1620
    .local v2, cv:Landroid/content/ContentValues;
    if-nez p2, :cond_18

    .line 1621
    const-string v5, "data1"

    invoke-virtual {v0, v5, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1622
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1647
    :cond_17
    :goto_17
    return-void

    .line 1624
    :cond_18
    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1625
    if-eqz v2, :cond_2a

    const-string v5, "data1"

    invoke-direct {p0, v2, v5, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1632
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1633
    .local v4, len:I
    const/4 v3, 0x0

    .line 1634
    .local v3, i:I
    :goto_2f
    if-ge v3, v4, :cond_3b

    .line 1635
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1636
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 1640
    .end local v1           #c:C
    :cond_3b
    if-eq v3, v4, :cond_17

    .line 1643
    const-string v5, "data1"

    invoke-virtual {v0, v5, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1644
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_17

    .line 1634
    .restart local v1       #c:C
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f
.end method

.method public addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "entity"
    .parameter "type"
    .parameter "company"
    .parameter "title"
    .parameter "department"
    .parameter "yomiCompanyName"
    .parameter "officeLocation"

    .prologue
    .line 1598
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1599
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1600
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_33

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data8"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data5"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1614
    :goto_32
    return-void

    .line 1607
    :cond_33
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1608
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1609
    const-string v2, "data4"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1610
    const-string v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1611
    const-string v2, "data8"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1612
    const-string v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1613
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_32
.end method

.method public addPersonal(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;)V
    .registers 7
    .parameter "entity"
    .parameter "personal"

    .prologue
    .line 1416
    const-string v2, "vnd.android.cursor.item/eas_personal"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1417
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1418
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_1f

    const-string v2, "data2"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "data4"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1428
    :cond_1e
    :goto_1e
    return-void

    .line 1422
    :cond_1f
    invoke-virtual {p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->hasData()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1425
    const-string v2, "data4"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1426
    const-string v2, "data2"

    iget-object v3, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1427
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1e
.end method

.method public addPhone(Landroid/content/Entity;ILjava/lang/String;)V
    .registers 8
    .parameter "entity"
    .parameter "type"
    .parameter "phone"

    .prologue
    .line 1458
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1459
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1460
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_13

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1466
    :goto_12
    return-void

    .line 1463
    :cond_13
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1464
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1465
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_12
.end method

.method public addPhoto(Landroid/content/Entity;Ljava/lang/String;)V
    .registers 6
    .parameter "entity"
    .parameter "photo"

    .prologue
    .line 1448
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1452
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1453
    .local v1, pic:[B
    const-string v2, "data15"

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1454
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1455
    return-void
.end method

.method public addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "entity"
    .parameter "type"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "country"
    .parameter "code"

    .prologue
    .line 1504
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1505
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1506
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_33

    const-string v2, "data7"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data10"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data8"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1520
    :goto_32
    return-void

    .line 1513
    :cond_33
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1514
    const-string v2, "data7"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1515
    const-string v2, "data4"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1516
    const-string v2, "data10"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1517
    const-string v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1518
    const-string v2, "data8"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1519
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_32
.end method

.method public addRelation(Landroid/content/Entity;ILjava/lang/String;)V
    .registers 8
    .parameter "entity"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1480
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1481
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1482
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_13

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1488
    :goto_12
    return-void

    .line 1485
    :cond_13
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1486
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1487
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_12
.end method

.method public addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .registers 24
    .parameter "entity"
    .parameter
    .parameter "mimeType"
    .parameter "type"
    .parameter "maxRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1532
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$800()Ljava/util/ArrayList;

    move-result-object v12

    .line 1533
    .local v12, oldValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$800()Ljava/util/ArrayList;

    move-result-object v6

    .line 1534
    .local v6, entityValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz p1, :cond_18

    .line 1535
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1536
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 1540
    :cond_18
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .local v15, rowsToReplace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1544
    .local v11, numRows:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_25
    :goto_25
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;

    .line 1545
    .local v13, row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    const/4 v7, 0x0

    .line 1547
    .local v7, found:Z
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_36
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity$NamedContentValues;

    .line 1548
    .local v10, ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v10, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1549
    .local v4, cv:Landroid/content/ContentValues;
    const-string v16, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1550
    .local v5, data:Ljava/lang/String;
    const/4 v14, -0x1

    .line 1551
    .local v14, rowType:I
    const-string v16, "data2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_63

    .line 1552
    const-string v16, "data2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1554
    :cond_63
    invoke-interface {v13, v14, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->isSameAs(ILjava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_36

    .line 1555
    const-string v16, "com.android.exchange.FOUND_ROW"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1557
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1558
    const/4 v7, 0x1

    .line 1562
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v5           #data:Ljava/lang/String;
    .end local v10           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v14           #rowType:I
    :cond_7c
    if-nez v7, :cond_25

    .line 1564
    move/from16 v0, p5

    if-ge v11, v0, :cond_9d

    .line 1566
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v3

    .line 1567
    .local v3, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    invoke-interface {v13, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V

    .line 1568
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1569
    add-int/lit8 v11, v11, 0x1

    .line 1570
    goto :goto_25

    .line 1572
    .end local v3           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    :cond_9d
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 1578
    .end local v7           #found:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    :cond_a1
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_ff

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;

    .line 1579
    .restart local v13       #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_b5
    :goto_b5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity$NamedContentValues;

    .line 1580
    .restart local v10       #ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v10, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1583
    .restart local v4       #cv:Landroid/content/ContentValues;
    const-string v16, "com.android.exchange.FOUND_ROW"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_b5

    .line 1585
    new-instance v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v10}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1589
    .restart local v3       #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    invoke-interface {v13, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V

    .line 1590
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_b5

    .line 1594
    .end local v3           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v13           #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    :cond_ff
    return-void
.end method

.method public addWebpage(Landroid/content/Entity;Ljava/lang/String;)V
    .registers 7
    .parameter "entity"
    .parameter "url"

    .prologue
    .line 1469
    const-string v2, "vnd.android.cursor.item/website"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1470
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1471
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_13

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1477
    :goto_12
    return-void

    .line 1474
    :cond_13
    const-string v2, "data2"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1475
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1476
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_12
.end method

.method public createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .registers 9
    .parameter "entity"
    .parameter "mimeType"
    .parameter "type"
    .parameter "stringType"

    .prologue
    .line 1283
    const/4 v0, 0x0

    .line 1285
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    if-eqz p1, :cond_22

    .line 1286
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;

    move-result-object v1

    .line 1288
    .local v1, ncv:Landroid/content/Entity$NamedContentValues;
    if-eqz v1, :cond_22

    .line 1289
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .end local v0           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v3, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1296
    .end local v1           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v0       #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    :cond_22
    if-nez v0, :cond_28

    .line 1297
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1303
    :cond_28
    return-object v0
.end method

.method public delete(J)V
    .registers 6
    .parameter "id"

    .prologue
    .line 1147
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1151
    return-void
.end method

.method public execute()V
    .registers 7

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1155
    :try_start_9
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_43

    move-result v1

    if-nez v1, :cond_38

    .line 1157
    :try_start_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    .line 1158
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1159
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "com.android.contacts"

    invoke-virtual {v1, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_38} :catch_3a
    .catch Landroid/content/OperationApplicationException; {:try_start_13 .. :try_end_38} :catch_46

    .line 1170
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v2

    .line 1171
    return-void

    .line 1162
    :catch_3a
    move-exception v0

    .line 1164
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EasContactsSyncAdapter"

    const-string v3, "problem inserting contact during server update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1170
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_43
    move-exception v1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    throw v1

    .line 1165
    :catch_46
    move-exception v0

    .line 1167
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_47
    const-string v1, "EasContactsSyncAdapter"

    const-string v3, "problem inserting contact during server update"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_43

    goto :goto_38
.end method

.method public newContact(Ljava/lang/String;)V
    .registers 7
    .parameter "serverId"

    .prologue
    .line 1136
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$700(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1138
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1139
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sourceid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1141
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    iput v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 1142
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    iget v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    iget v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    aput v4, v2, v3

    .line 1143
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1144
    return-void
.end method
