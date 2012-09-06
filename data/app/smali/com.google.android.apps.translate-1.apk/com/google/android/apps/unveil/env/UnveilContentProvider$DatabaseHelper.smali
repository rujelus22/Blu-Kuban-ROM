.class Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UnveilContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/UnveilContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final QUERIES_VERSION_ELEVEN_NEW_COLUMNS:[Ljava/lang/String;

.field private static final QUERIES_VERSION_FOUR_NEW_COLUMNS:[Ljava/lang/String;

.field private static final QUERIES_VERSION_NINE_NEW_COLUMNS:[Ljava/lang/String;

.field private static final QUERIES_VERSION_SEVEN_NEW_COLUMNS:[Ljava/lang/String;

.field private static final QUERIES_VERSION_SIX_NEW_COLUMNS:[Ljava/lang/String;

.field private static final QUERIES_VERSION_TEN_NEW_COLUMNS:[Ljava/lang/String;

.field private static final QUERIES_VERSION_THREE_NEW_COLUMNS:[Ljava/lang/String;

.field private static final QUERIES_VERSION_TWO_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 676
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v1, v0, v3

    const-string v1, "query_params BLOB"

    aput-object v1, v0, v4

    const-string v1, "thumbnail BLOB"

    aput-object v1, v0, v5

    const-string v1, "created INTEGER"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_TWO_COLUMNS:[Ljava/lang/String;

    .line 682
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "orientation_relative_to_device INTEGER"

    aput-object v1, v0, v3

    const-string v1, "orientation_relative_to_camera INTEGER"

    aput-object v1, v0, v4

    const-string v1, "crop_rect BLOB"

    aput-object v1, v0, v5

    const-string v1, "barcode BLOB"

    aput-object v1, v0, v6

    const-string v1, "sequence_number INTEGER"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "flash_mode TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "focus_state TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image_data BLOB"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "jpeg_quality INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "query_type INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "replay_id TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "image_size TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image_rotated INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ms_since_epoch INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "camera_config BLOB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_THREE_NEW_COLUMNS:[Ljava/lang/String;

    .line 699
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "source TEXT"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_FOUR_NEW_COLUMNS:[Ljava/lang/String;

    .line 703
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "text TEXT"

    aput-object v1, v0, v3

    const-string v1, "preview_size TEXT"

    aput-object v1, v0, v4

    const-string v1, "transmitted_rect BLOB"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_SIX_NEW_COLUMNS:[Ljava/lang/String;

    .line 709
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "crop_context_size TEXT"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_SEVEN_NEW_COLUMNS:[Ljava/lang/String;

    .line 713
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "restricts BLOB"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_NINE_NEW_COLUMNS:[Ljava/lang/String;

    .line 717
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "docid TEXT"

    aput-object v1, v0, v3

    const-string v1, "image_url TEXT"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_TEN_NEW_COLUMNS:[Ljava/lang/String;

    .line 722
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "source_language TEXT"

    aput-object v1, v0, v3

    const-string v1, "can_log_image INTEGER"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_ELEVEN_NEW_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 729
    const-string v0, "unveil.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 730
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 731
    return-void
.end method

.method private addColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .registers 11
    .parameter "db"
    .parameter "newColumns"

    .prologue
    .line 832
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_35

    aget-object v3, v0, v1

    .line 833
    .local v3, newColumn:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v4

    const-string v5, "Altering table to add new column %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE queries ADD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 837
    .end local v3           #newColumn:Ljava/lang/String;
    :cond_35
    return-void
.end method

.method private addLastTextRestrictsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter "db"

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->makeLastTextRestrictsCreateStatement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 841
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/unveil/R$array;->text_restrict_suggestions:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, suggestions:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v3, v1

    if-ge v0, v3, :cond_3b

    .line 844
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 845
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "text_restrict"

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v3, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 847
    const-string v3, "last_text_restrict"

    const-string v4, "text_restrict"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 843
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 849
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_3b
    return-void
.end method

.method private addSfCResultsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 755
    const-string v0, "CREATE TABLE sfc_results (_id INTEGER PRIMARY KEY AUTOINCREMENT,query_response BLOB,query_image TEXT,orientation INTEGER,moment_id TEXT,created INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method private appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 4
    .parameter "queryStatementBuilder"
    .parameter "columnSpecs"

    .prologue
    .line 789
    const-string v0, ", "

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    return-void
.end method

.method private makeLastTextRestrictsCreateStatement()Ljava/lang/String;
    .registers 4

    .prologue
    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .local v0, textRestrictStatementBuilder:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "last_text_restrict"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text_restrict"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeQueriesCreateStatement()Ljava/lang/String;
    .registers 4

    .prologue
    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .local v0, queryStatementBuilder:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "queries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    sget-object v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_TWO_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 769
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    sget-object v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_THREE_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 771
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    sget-object v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_FOUR_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 773
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    sget-object v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_SIX_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 775
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    sget-object v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_SEVEN_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 777
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    sget-object v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_NINE_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 779
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    sget-object v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_TEN_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 781
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    sget-object v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_ELEVEN_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->appendColumnSpecifications(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 783
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private upgradeTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "i"
    .parameter "db"

    .prologue
    .line 800
    packed-switch p1, :pswitch_data_36

    .line 829
    :goto_3
    return-void

    .line 802
    :pswitch_4
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_THREE_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_3

    .line 805
    :pswitch_a
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_FOUR_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_3

    .line 808
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addLastTextRestrictsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    .line 811
    :pswitch_14
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_SIX_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_3

    .line 814
    :pswitch_1a
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_SEVEN_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_3

    .line 817
    :pswitch_20
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addSfCResultsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    .line 820
    :pswitch_24
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_NINE_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_3

    .line 823
    :pswitch_2a
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_TEN_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_3

    .line 826
    :pswitch_30
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->QUERIES_VERSION_ELEVEN_NEW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addColumns(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_3

    .line 800
    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_4
        :pswitch_a
        :pswitch_10
        :pswitch_14
        :pswitch_1a
        :pswitch_20
        :pswitch_24
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public finalize()V
    .registers 1

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->close()V

    .line 864
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->makeQueriesCreateStatement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    const-string v0, "CREATE TABLE last_image (_id INTEGER PRIMARY KEY AUTOINCREMENT,data BLOB,created INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 743
    const-string v0, "CREATE TABLE thumbnail (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT NOT NULL UNIQUE,data BLOB,created INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 750
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addSfCResultsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 751
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->addLastTextRestrictsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 752
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 794
    move v0, p2

    .local v0, currentVersion:I
    :goto_1
    const/16 v1, 0xb

    if-ge v0, v1, :cond_d

    .line 795
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;->upgradeTo(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 797
    :cond_d
    return-void
.end method
