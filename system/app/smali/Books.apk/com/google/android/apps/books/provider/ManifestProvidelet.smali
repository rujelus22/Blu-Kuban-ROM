.class Lcom/google/android/apps/books/provider/ManifestProvidelet;
.super Lcom/google/android/apps/books/provider/NotifyingProvidelet;
.source "ManifestProvidelet.java"


# instance fields
.field private final mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V
    .registers 4
    .parameter "context"
    .parameter "dbHelper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/books/provider/database/BooksDatabase;",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, builderPool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<Lcom/google/android/apps/books/util/SelectionBuilder;>;"
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/util/pool/Pool;)V

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 41
    return-void
.end method

.method private augmentBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "builder"
    .parameter "match"
    .parameter "uri"
    .parameter "sectionsTable"
    .parameter "chaptersTable"
    .parameter "resourcesTable"
    .parameter "pagesTable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    sparse-switch p2, :sswitch_data_1aa

    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 143
    :sswitch_b
    invoke-virtual {p1, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 218
    :goto_2a
    return-void

    .line 149
    :sswitch_2b
    invoke-virtual {p1, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "segment_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_2a

    .line 156
    :sswitch_59
    invoke-virtual {p1, p5}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_2a

    .line 162
    :sswitch_79
    invoke-virtual {p1, p5}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "chapter_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getChapterId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_2a

    .line 169
    :sswitch_a7
    invoke-virtual {p1, p6}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto/16 :goto_2a

    .line 175
    :sswitch_c8
    const-string v0, "segment_resources"

    invoke-virtual {p1, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto/16 :goto_2a

    .line 183
    :sswitch_eb
    invoke-virtual {p1, p6}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "resource_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto/16 :goto_2a

    .line 190
    :sswitch_11a
    const-string v0, "segment_resources"

    invoke-virtual {p1, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "resource_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "segment_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->getSegmentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto/16 :goto_2a

    .line 202
    :sswitch_159
    invoke-virtual {p1, p7}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto/16 :goto_2a

    .line 208
    :sswitch_17a
    invoke-virtual {p1, p7}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v1, "page_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto/16 :goto_2a

    .line 141
    nop

    :sswitch_data_1aa
    .sparse-switch
        0xc8 -> :sswitch_b
        0xc9 -> :sswitch_2b
        0xcd -> :sswitch_59
        0xce -> :sswitch_79
        0x12c -> :sswitch_a7
        0x12d -> :sswitch_eb
        0x15e -> :sswitch_c8
        0x15f -> :sswitch_11a
        0x190 -> :sswitch_159
        0x191 -> :sswitch_17a
    .end sparse-switch
.end method


# virtual methods
.method protected deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 13
    .parameter "match"
    .parameter "uri"
    .parameter "builder"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 117
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "segments"

    const-string v5, "chapters"

    const-string v6, "resources"

    const-string v7, "pages"

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->augmentBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p3, v8}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method protected insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    .line 45
    iget-object v8, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v8}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 46
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sparse-switch p1, :sswitch_data_a2

    .line 91
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v8}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v8

    .line 49
    :sswitch_10
    const-string v8, "account_name"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, accountName:Ljava/lang/String;
    const-string v8, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, volumeId:Ljava/lang/String;
    const-string v8, "segment_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, sectionId:Ljava/lang/String;
    invoke-static {v0, v7, v6}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 53
    .local v3, newUri:Landroid/net/Uri;
    const-string v8, "segments"

    invoke-virtual {v2, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 88
    .end local v6           #sectionId:Ljava/lang/String;
    :goto_2b
    return-object v3

    .line 57
    .end local v0           #accountName:Ljava/lang/String;
    .end local v3           #newUri:Landroid/net/Uri;
    .end local v7           #volumeId:Ljava/lang/String;
    :sswitch_2c
    const-string v8, "account_name"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0       #accountName:Ljava/lang/String;
    const-string v8, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .restart local v7       #volumeId:Ljava/lang/String;
    const-string v8, "chapter_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, chapterId:Ljava/lang/String;
    invoke-static {v0, v7, v1}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 61
    .restart local v3       #newUri:Landroid/net/Uri;
    const-string v8, "chapters"

    invoke-virtual {v2, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2b

    .line 65
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #chapterId:Ljava/lang/String;
    .end local v3           #newUri:Landroid/net/Uri;
    .end local v7           #volumeId:Ljava/lang/String;
    :sswitch_48
    const-string v8, "account_name"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0       #accountName:Ljava/lang/String;
    const-string v8, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 67
    .restart local v7       #volumeId:Ljava/lang/String;
    const-string v8, "resource_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, resId:Ljava/lang/String;
    invoke-static {v0, v7, v5}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 69
    .restart local v3       #newUri:Landroid/net/Uri;
    const-string v8, "resources"

    invoke-virtual {v2, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2b

    .line 73
    .end local v0           #accountName:Ljava/lang/String;
    .end local v3           #newUri:Landroid/net/Uri;
    .end local v5           #resId:Ljava/lang/String;
    .end local v7           #volumeId:Ljava/lang/String;
    :sswitch_64
    const-string v8, "account_name"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0       #accountName:Ljava/lang/String;
    const-string v8, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .restart local v7       #volumeId:Ljava/lang/String;
    const-string v8, "resource_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .restart local v5       #resId:Ljava/lang/String;
    const-string v8, "segment_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .restart local v6       #sectionId:Ljava/lang/String;
    invoke-static {v0, v7, v5, v6}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->buildUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 79
    .restart local v3       #newUri:Landroid/net/Uri;
    const-string v8, "segment_resources"

    invoke-virtual {v2, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2b

    .line 83
    .end local v0           #accountName:Ljava/lang/String;
    .end local v3           #newUri:Landroid/net/Uri;
    .end local v5           #resId:Ljava/lang/String;
    .end local v6           #sectionId:Ljava/lang/String;
    .end local v7           #volumeId:Ljava/lang/String;
    :sswitch_86
    const-string v8, "account_name"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0       #accountName:Ljava/lang/String;
    const-string v8, "volume_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .restart local v7       #volumeId:Ljava/lang/String;
    const-string v8, "page_id"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, pageId:Ljava/lang/String;
    invoke-static {v0, v7, v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 87
    .restart local v3       #newUri:Landroid/net/Uri;
    const-string v8, "pages"

    invoke-virtual {v2, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2b

    .line 46
    :sswitch_data_a2
    .sparse-switch
        0xc8 -> :sswitch_10
        0xcd -> :sswitch_2c
        0x12c -> :sswitch_48
        0x15e -> :sswitch_64
        0x190 -> :sswitch_86
    .end sparse-switch
.end method

.method protected queryWithoutNotify(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SelectionBuilder;)Landroid/database/Cursor;
    .registers 16
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "builder"

    .prologue
    const/4 v9, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 100
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "view_segments"

    const-string v5, "view_chapters"

    const-string v6, "view_resources"

    const-string v7, "view_pages"

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->augmentBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p5

    move-object v1, v8

    move-object v2, p3

    move-object v3, v9

    move-object v4, v9

    move-object v5, p4

    move-object v6, v9

    .line 102
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 14
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "builder"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ManifestProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 109
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "segments"

    const-string v5, "chapters"

    const-string v6, "resources"

    const-string v7, "pages"

    move-object v0, p0

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->augmentBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p4, v8, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
