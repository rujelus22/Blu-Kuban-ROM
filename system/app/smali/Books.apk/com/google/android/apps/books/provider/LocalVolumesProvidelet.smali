.class Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;
.super Lcom/google/android/apps/books/provider/NotifyingProvidelet;
.source "LocalVolumesProvidelet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/LocalVolumesProvidelet$Query;
    }
.end annotation


# static fields
.field private static sNativeVolumeColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStopWords:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUpdateCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

.field private final mProvider:Landroid/content/ContentProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->buildStopWords()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sStopWords:Ljava/util/HashSet;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sUpdateCounter:Ljava/util/Map;

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sNativeVolumeColumns:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;Landroid/content/ContentProvider;)V
    .registers 5
    .parameter "context"
    .parameter "database"
    .parameter
    .parameter "booksProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/books/provider/database/BooksDatabase;",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;",
            "Landroid/content/ContentProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, builderPool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<Lcom/google/android/apps/books/util/SelectionBuilder;>;"
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/util/pool/Pool;)V

    .line 90
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 91
    iput-object p4, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mProvider:Landroid/content/ContentProvider;

    .line 92
    return-void
.end method

.method private appendIfChanged(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "sb"
    .parameter "name"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 375
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 376
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .line 377
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_35
    return-void
.end method

.method private augmentSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)V
    .registers 9
    .parameter "builder"
    .parameter "match"
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 453
    sparse-switch p2, :sswitch_data_52

    .line 464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :sswitch_28
    const-string v0, "account_name=?"

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 466
    :goto_35
    :sswitch_35
    return-void

    .line 460
    :sswitch_36
    const-string v0, "account_name=?"

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 461
    const-string v0, "volume_id=?"

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_35

    .line 453
    nop

    :sswitch_data_52
    .sparse-switch
        0x64 -> :sswitch_35
        0x6e -> :sswitch_28
        0x78 -> :sswitch_36
    .end sparse-switch
.end method

.method private static buildStopWords()Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "an"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "the"

    aput-object v2, v0, v1

    .line 55
    .local v0, stopwords:[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private clearAnyInvalidContent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .registers 32
    .parameter "db"
    .parameter "values"
    .parameter "oldCursor"

    .prologue
    .line 316
    const-string v25, "viewability"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    .line 317
    .local v15, hasViewability:Z
    const-string v25, "buy_url"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 318
    .local v12, hasBuyUrl:Z
    const-string v25, "open_access"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    .line 319
    .local v13, hasOpenAccess:Z
    const-string v25, "content_version"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    .line 320
    .local v14, hasVersion:Z
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getValuesToClearContentColumns()Landroid/content/ContentValues;

    move-result-object v18

    .line 322
    .local v18, resetValues:Landroid/content/ContentValues;
    const/16 v25, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 323
    :cond_35
    :goto_35
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_199

    .line 324
    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, oldViewability:Ljava/lang/String;
    const/16 v25, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, oldBuyUrl:Ljava/lang/String;
    const/16 v25, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, oldOpenAccess:Ljava/lang/String;
    const/16 v25, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 330
    .local v17, oldVersion:Ljava/lang/String;
    if-eqz v15, :cond_188

    const-string v25, "viewability"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, newViewability:Ljava/lang/String;
    :goto_6f
    if-eqz v12, :cond_18b

    const-string v25, "buy_url"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, newBuyUrl:Ljava/lang/String;
    :goto_7b
    if-eqz v13, :cond_18e

    const-string v25, "open_access"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, newOpenAccess:Ljava/lang/String;
    :goto_87
    const-string v25, "content_version"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 339
    .local v16, newVersion:Ljava/lang/String;
    if-eqz v14, :cond_191

    if-eqz v16, :cond_a1

    if-eqz v17, :cond_191

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_191

    :cond_a1
    const/16 v23, 0x1

    .line 342
    .local v23, versionChanged:Z
    :goto_a3
    invoke-static/range {v5 .. v10}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isContentInvalid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_ab

    if-eqz v23, :cond_35

    .line 344
    :cond_ab
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 345
    .local v11, accountName:Ljava/lang/String;
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 348
    .local v24, volumeId:Ljava/lang/String;
    const-string v20, "account_name=? AND volume_id=?"

    .line 350
    .local v20, selection:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v25, 0x0

    aput-object v11, v21, v25

    const/16 v25, 0x1

    aput-object v24, v21, v25

    .line 351
    .local v21, selectionArgs:[Ljava/lang/String;
    const-string v25, "volumes"

    const-string v26, "account_name=? AND volume_id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 353
    .local v22, updateCount:I
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_195

    const/16 v25, 0x1

    :goto_ed
    const-string v26, "Bad update count"

    invoke-static/range {v25 .. v26}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 356
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v19, sb:Ljava/lang/StringBuilder;
    const-string v25, "viewability"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v5, v8}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->appendIfChanged(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v25, "buyUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v6, v9}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->appendIfChanged(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v25, "open access"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v7, v10}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->appendIfChanged(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-eqz v23, :cond_155

    .line 361
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-eqz v25, :cond_129

    .line 362
    const-string v25, ", "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_129
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "version: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " -> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_155
    const-string v25, "LocalVolumesProvidelet"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "update(): clearing content for volume "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " due to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v11, v1}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->clearContentTables(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .end local v8           #newViewability:Ljava/lang/String;
    .end local v9           #newBuyUrl:Ljava/lang/String;
    .end local v10           #newOpenAccess:Ljava/lang/String;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v16           #newVersion:Ljava/lang/String;
    .end local v19           #sb:Ljava/lang/StringBuilder;
    .end local v20           #selection:Ljava/lang/String;
    .end local v21           #selectionArgs:[Ljava/lang/String;
    .end local v22           #updateCount:I
    .end local v23           #versionChanged:Z
    .end local v24           #volumeId:Ljava/lang/String;
    :cond_188
    move-object v8, v5

    .line 330
    goto/16 :goto_6f

    .restart local v8       #newViewability:Ljava/lang/String;
    :cond_18b
    move-object v9, v6

    .line 332
    goto/16 :goto_7b

    .restart local v9       #newBuyUrl:Ljava/lang/String;
    :cond_18e
    move-object v10, v7

    .line 333
    goto/16 :goto_87

    .line 339
    .restart local v10       #newOpenAccess:Ljava/lang/String;
    .restart local v16       #newVersion:Ljava/lang/String;
    :cond_191
    const/16 v23, 0x0

    goto/16 :goto_a3

    .line 353
    .restart local v11       #accountName:Ljava/lang/String;
    .restart local v20       #selection:Ljava/lang/String;
    .restart local v21       #selectionArgs:[Ljava/lang/String;
    .restart local v22       #updateCount:I
    .restart local v23       #versionChanged:Z
    .restart local v24       #volumeId:Ljava/lang/String;
    :cond_195
    const/16 v25, 0x0

    goto/16 :goto_ed

    .line 372
    .end local v5           #oldViewability:Ljava/lang/String;
    .end local v6           #oldBuyUrl:Ljava/lang/String;
    .end local v7           #oldOpenAccess:Ljava/lang/String;
    .end local v8           #newViewability:Ljava/lang/String;
    .end local v9           #newBuyUrl:Ljava/lang/String;
    .end local v10           #newOpenAccess:Ljava/lang/String;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v16           #newVersion:Ljava/lang/String;
    .end local v17           #oldVersion:Ljava/lang/String;
    .end local v20           #selection:Ljava/lang/String;
    .end local v21           #selectionArgs:[Ljava/lang/String;
    .end local v22           #updateCount:I
    .end local v23           #versionChanged:Z
    .end local v24           #volumeId:Ljava/lang/String;
    :cond_199
    return-void
.end method

.method private clearContentTables(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getContentUris(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 385
    .local v1, contentUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 388
    .local v0, contentUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mProvider:Landroid/content/ContentProvider;

    invoke-virtual {v3, v0, v4, v4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9

    .line 390
    .end local v0           #contentUri:Landroid/net/Uri;
    :cond_1b
    return-void
.end method

.method private deleteVolumeAndContent(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 12
    .parameter "builder"
    .parameter "db"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 415
    const-string v6, "volumes"

    invoke-virtual {p1, v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet$Query;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, p2, v7, v8}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 418
    .local v2, oldCursor:Landroid/database/Cursor;
    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 421
    const-string v6, "volumes"

    invoke-virtual {p1, v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 422
    .local v1, count:I
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v6, v1, :cond_40

    :goto_22
    const-string v5, "Bad delete count"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 425
    :goto_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 426
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, accountName:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, volumeId:Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->clearContentTables(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_3b

    goto :goto_27

    .line 432
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #count:I
    .end local v3           #volumeId:Ljava/lang/String;
    :catchall_3b
    move-exception v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v1       #count:I
    :cond_40
    move v4, v5

    .line 422
    goto :goto_22

    .line 432
    :cond_42
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method private static declared-synchronized getNativeVolumeColumns()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const-class v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sNativeVolumeColumns:Ljava/util/Set;

    if-nez v1, :cond_21

    .line 102
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 103
    .local v0, nativeVolumeColumns:Lcom/google/common/collect/ImmutableSet$Builder;,"Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getVolumeColumnToClass()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 104
    const-string v1, "_count"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 105
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sNativeVolumeColumns:Ljava/util/Set;

    .line 107
    :cond_21
    sget-object v1, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sNativeVolumeColumns:Ljava/util/Set;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v2

    return-object v1

    .line 101
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static getUpdateCounter(Ljava/lang/String;)I
    .registers 3
    .parameter "volumeId"

    .prologue
    .line 472
    sget-object v1, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sUpdateCounter:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 473
    .local v0, count:Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b
.end method

.method private declared-synchronized incrementCounterForVolumesIn(Landroid/database/Cursor;)V
    .registers 6
    .parameter "oldCursor"

    .prologue
    .line 293
    monitor-enter p0

    const/4 v2, -0x1

    :try_start_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 294
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 295
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, volumeId:Ljava/lang/String;
    sget-object v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sUpdateCounter:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 297
    .local v0, currCount:Ljava/lang/Integer;
    if-nez v0, :cond_28

    .line 298
    sget-object v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sUpdateCounter:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_25

    goto :goto_5

    .line 293
    .end local v0           #currCount:Ljava/lang/Integer;
    .end local v1           #volumeId:Ljava/lang/String;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2

    .line 300
    .restart local v0       #currCount:Ljava/lang/Integer;
    .restart local v1       #volumeId:Ljava/lang/String;
    :cond_28
    :try_start_28
    sget-object v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sUpdateCounter:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_25

    goto :goto_5

    .line 303
    .end local v0           #currCount:Ljava/lang/Integer;
    .end local v1           #volumeId:Ljava/lang/String;
    :cond_38
    monitor-exit p0

    return-void
.end method

.method private normalizeAuthorForSort(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "author"

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 224
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    :cond_33
    return-object p1
.end method

.method private normalizeTitleForSort(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "title"

    .prologue
    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 203
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 204
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    sget-object v1, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sStopWords:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 205
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 207
    :cond_24
    return-object p1
.end method

.method private updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 9
    .parameter "db"
    .parameter "values"
    .parameter "builder"

    .prologue
    .line 265
    const-string v2, "volumes"

    invoke-virtual {p3, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet$Query;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 268
    .local v1, oldCursor:Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 270
    const-string v2, "LocalVolumesProvidelet"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 271
    const-string v2, "LocalVolumesProvidelet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_3b
    const-string v2, "volumes"

    invoke-virtual {p3, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v0

    .line 276
    .local v0, count:I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_5b

    const/4 v2, 0x1

    :goto_4c
    const-string v3, "Bad update count"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 278
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->clearAnyInvalidContent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 280
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->incrementCounterForVolumesIn(Landroid/database/Cursor;)V
    :try_end_57
    .catchall {:try_start_d .. :try_end_57} :catchall_5d

    .line 284
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    .line 276
    :cond_5b
    const/4 v2, 0x0

    goto :goto_4c

    .line 284
    .end local v0           #count:I
    :catchall_5d
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 7
    .parameter "match"
    .parameter "uri"
    .parameter "builder"

    .prologue
    .line 402
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 403
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->augmentSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)V

    .line 404
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 406
    :try_start_c
    invoke-direct {p0, p3, v1}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->deleteVolumeAndContent(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 407
    .local v0, count:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 410
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .end local v0           #count:I
    :catchall_17
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 153
    const/16 v8, 0x64

    if-eq p1, v8, :cond_27

    .line 154
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad match "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for URI "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 158
    :cond_27
    const-string v8, "price_amount"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 159
    const-string v8, "price_currency"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 160
    const-string v8, "suggested_price_amount"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 161
    const-string v8, "suggested_price_currency"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 163
    const-string v8, "title"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, title:Ljava/lang/String;
    if-eqz v6, :cond_4c

    .line 165
    invoke-direct {p0, v6}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->normalizeTitleForSort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, sortableTitle:Ljava/lang/String;
    const-string v8, "sortable_title"

    invoke-virtual {p3, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v5           #sortableTitle:Ljava/lang/String;
    :cond_4c
    const-string v8, "creator"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, author:Ljava/lang/String;
    if-eqz v1, :cond_5d

    .line 172
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->normalizeAuthorForSort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, sortableAuthor:Ljava/lang/String;
    const-string v8, "sortable_creator"

    invoke-virtual {p3, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v4           #sortableAuthor:Ljava/lang/String;
    :cond_5d
    iget-object v8, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v8}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 179
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "account_name"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, accountName:Ljava/lang/String;
    const-string v8, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, volumeId:Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 183
    .local v3, newUri:Landroid/net/Uri;
    const-string v8, "volumes"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 184
    return-object v3
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public queryWithoutNotify(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SelectionBuilder;)Landroid/database/Cursor;
    .registers 24
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "builder"

    .prologue
    .line 124
    const/16 v16, 0x0

    .line 125
    .local v16, projectionContainsJoinColumn:Z
    if-eqz p3, :cond_18

    .line 126
    invoke-static {}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->getNativeVolumeColumns()Ljava/util/Set;

    move-result-object v15

    .line 127
    .local v15, nativeVolumeColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v11, p3

    .local v11, arr$:[Ljava/lang/String;
    array-length v14, v11

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_c
    if-ge v13, v14, :cond_18

    aget-object v12, v11, v13

    .line 128
    .local v12, column:Ljava/lang/String;
    invoke-interface {v15, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 129
    const/16 v16, 0x1

    .line 134
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v12           #column:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #nativeVolumeColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_18
    if-eqz v16, :cond_4f

    const-string v17, "view_volumes"

    .line 137
    .local v17, table:Ljava/lang/String;
    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 138
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->augmentSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)V

    .line 140
    const-string v4, "_count"

    const-string v6, "COUNT(*)"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 142
    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4

    .line 127
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #table:Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v12       #column:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #nativeVolumeColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4c
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 134
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v12           #column:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #nativeVolumeColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4f
    const-string v17, "volumes"

    goto :goto_1c
.end method

.method public updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 8
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "builder"

    .prologue
    .line 243
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 244
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p4, p1, p2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->augmentSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)V

    .line 247
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 249
    :try_start_c
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I

    move-result v0

    .line 250
    .local v0, count:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 253
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .end local v0           #count:I
    :catchall_17
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
