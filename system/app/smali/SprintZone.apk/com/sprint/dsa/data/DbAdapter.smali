.class public Lcom/sprint/dsa/data/DbAdapter;
.super Ljava/lang/Object;
.source "DbAdapter.java"


# static fields
.field public static final DB_COL_ACTION:Ljava/lang/String; = "action"

.field public static final DB_COL_ACTIVE:Ljava/lang/String; = "active"

.field public static final DB_COL_ALERT_ICON:Ljava/lang/String; = "alertIcon"

.field public static final DB_COL_ALERT_VER:Ljava/lang/String; = "alert_ver"

.field public static final DB_COL_BACKGROUND_IMAGE:Ljava/lang/String; = "backgroundImage"

.field public static final DB_COL_DATA:Ljava/lang/String; = "data"

.field public static final DB_COL_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DB_COL_GROUP_KEY:Ljava/lang/String; = "group_key"

.field public static final DB_COL_ID:Ljava/lang/String; = "id"

.field public static final DB_COL_KEY:Ljava/lang/String; = "key"

.field public static final DB_COL_KEY_ID:Ljava/lang/String; = "_id"

.field public static final DB_COL_LASTUPDATE:Ljava/lang/String; = "last_update"

.field public static final DB_COL_NAME:Ljava/lang/String; = "name"

.field public static final DB_COL_PAGES_VER:Ljava/lang/String; = "pages_ver"

.field public static final DB_COL_PROMO_VER:Ljava/lang/String; = "promo_ver"

.field public static final DB_COL_RANK:Ljava/lang/String; = "rank"

.field public static final DB_COL_SETTING_VER:Ljava/lang/String; = "setting_ver"

.field public static final DB_COL_SLOT:Ljava/lang/String; = "slot"

.field public static final DB_COL_SUB_KEYS:Ljava/lang/String; = "sub_keys"

.field public static final DB_COL_TAG:Ljava/lang/String; = "tag"

.field public static final DB_COL_TIME:Ljava/lang/String; = "time"

.field public static final DB_COL_TITLE:Ljava/lang/String; = "title"

.field public static final DB_COL_TYPE:Ljava/lang/String; = "type"

.field public static final DB_COL_URI:Ljava/lang/String; = "uri"

.field public static final DB_COL_VALUE:Ljava/lang/String; = "value"

.field public static final DB_COL_VERSION:Ljava/lang/String; = "version"

.field public static final DB_NAME:Ljava/lang/String; = "zone.db"

.field public static final DB_TABLE_DIAGNOSTICS:Ljava/lang/String; = "diagnostics_tbl"

.field public static final DB_TABLE_DIAGNOSTIC_GROUPS:Ljava/lang/String; = "diagnostic_groups_tbl"

.field public static final DB_TABLE_INFO:Ljava/lang/String; = "info_tbl"

.field public static final DB_TABLE_PACKS:Ljava/lang/String; = "packs_tbl"

.field public static final DB_TABLE_PACKS_STRINGS:Ljava/lang/String; = "packs_strings_tbl"

.field public static final DB_TABLE_PACKS_STYLES:Ljava/lang/String; = "packs_styles_tbl"

.field public static final DB_TABLE_PAGES:Ljava/lang/String; = "pages_tbl"

.field public static final DB_TABLE_REPORTS:Ljava/lang/String; = "report_tbl"

.field public static final DB_TABLE_STRINGS:Ljava/lang/String; = "strings_tbl"

.field public static final DB_TABLE_VERSIONS:Ljava/lang/String; = "versions_tbl"

.field public static final DB_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SprintZone_DbAdapter"


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v1, "zone.db"

    invoke-direct {v0, p1, v1}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;

    .line 78
    return-void
.end method

.method public static safeClose(Landroid/database/Cursor;)V
    .registers 1
    .parameter "c"

    .prologue
    .line 790
    if-eqz p0, :cond_5

    .line 791
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_5
    return-void
.end method


# virtual methods
.method public cleanPageContent(Ljava/lang/String;)V
    .registers 6
    .parameter "scheme"

    .prologue
    const/4 v3, 0x0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app_scheme = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "categories_tbl"

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 741
    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "features_tbl"

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    return-void
.end method

.method public cleanPagesContent(Ljava/lang/String;)V
    .registers 6
    .parameter "scheme"

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, where:Ljava/lang/String;
    const-string v1, "promo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 747
    const-string v0, "pid = \'0\'"

    .line 751
    :goto_b
    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pages_tbl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 752
    return-void

    .line 749
    :cond_14
    const-string v0, "pid <> \'0\'"

    goto :goto_b
.end method

.method public cleanup()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    :cond_c
    return-void
.end method

.method protected cursorToFeature(Landroid/database/Cursor;Lcom/sprint/dsa/data/FeatureItem;)V
    .registers 10
    .parameter "cFeatures"
    .parameter "promo"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 707
    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/sprint/dsa/data/FeatureItem;->mId:J

    .line 708
    const-string v2, "sid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/sprint/dsa/data/FeatureItem;->mSid:J

    .line 710
    const-string v2, "campaign"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 709
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mCampaign:Ljava/lang/String;

    .line 711
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mTitle:Ljava/lang/String;

    .line 712
    const-string v2, "desc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mDescription:Ljava/lang/String;

    .line 713
    const-string v2, "expiration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/sprint/dsa/data/FeatureItem;->mExpiration:J

    .line 714
    const-string v2, "cost"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mCost:Ljava/lang/String;

    .line 715
    const-string v2, "rating"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/sprint/dsa/data/FeatureItem;->mRating:J

    .line 717
    const-string v2, "action"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 716
    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    .line 718
    const-string v2, "uri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mUri:Ljava/lang/String;

    .line 719
    const-string v2, "extra"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mExtra:Ljava/lang/String;

    .line 721
    const-string v2, "imgurl"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 720
    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mImageUrl:Ljava/lang/String;

    .line 722
    const-string v2, "icon"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 724
    .local v1, iconByte:[B
    const-string v2, "enabled"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 723
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 724
    if-ne v2, v3, :cond_d0

    move v2, v3

    .line 723
    :goto_a9
    iput-boolean v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mEnabled:Z

    .line 726
    const-string v2, "visible"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 725
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 726
    if-ne v2, v3, :cond_d2

    .line 725
    :goto_b7
    iput-boolean v3, p2, Lcom/sprint/dsa/data/FeatureItem;->mVisible:Z

    .line 727
    if-eqz v1, :cond_c3

    .line 729
    const/4 v2, 0x0

    :try_start_bc
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mIcon:Landroid/graphics/Bitmap;
    :try_end_c3
    .catch Ljava/lang/RuntimeException; {:try_start_bc .. :try_end_c3} :catch_d4

    .line 734
    :cond_c3
    :goto_c3
    const-string v2, "pack_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sprint/dsa/data/FeatureItem;->mPackId:Ljava/lang/String;

    .line 735
    return-void

    :cond_d0
    move v2, v4

    .line 724
    goto :goto_a9

    :cond_d2
    move v3, v4

    .line 726
    goto :goto_b7

    .line 730
    :catch_d4
    move-exception v0

    .line 731
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "SprintZone_DbAdapter"

    const-string v3, "Exception decoding icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c3
.end method

.method public deleteAlert(J)V
    .registers 7
    .parameter "id"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_alert"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public deletePage(J)V
    .registers 7
    .parameter "id"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pages_tbl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public deleteTableAlert()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_alert"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public deleteTableAll()V
    .registers 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTablePages()V

    .line 332
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableAlert()V

    .line 333
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableFeatures()V

    .line 334
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableCategories()V

    .line 335
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableSettings()V

    .line 336
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableVersions()V

    .line 337
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableReports()V

    .line 338
    return-void
.end method

.method public deleteTableCategories()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "categories_tbl"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method public deleteTableFeatures()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "features_tbl"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method public deleteTablePages()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pages_tbl"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public deleteTableReports()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "report_tbl"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method public deleteTableSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_settings"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public deleteTableVersions()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "versions_tbl"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public dropAll()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;

    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 342
    return-void
.end method

.method public getAlerts()Lcom/sprint/dsa/data/Alerts;
    .registers 19

    .prologue
    .line 457
    new-instance v10, Lcom/sprint/dsa/data/Alerts;

    const-string v1, "0"

    invoke-direct {v10, v1}, Lcom/sprint/dsa/data/Alerts;-><init>(Ljava/lang/String;)V

    .line 458
    .local v10, alerts:Lcom/sprint/dsa/data/Alerts;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_e

    .line 516
    :goto_d
    return-object v10

    .line 459
    :cond_e
    const/4 v11, 0x0

    .line 460
    .local v11, cs:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 463
    .local v12, cv:Landroid/database/Cursor;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "versions_tbl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 464
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_49

    .line 474
    :cond_26
    :goto_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_alert"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 475
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 476
    .local v16, numRows:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_123
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3d} :catch_5f

    .line 477
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3e
    move/from16 v0, v16

    if-lt v14, v0, :cond_67

    .line 512
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 513
    invoke-static {v12}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto :goto_d

    .line 466
    .end local v14           #i:I
    .end local v16           #numRows:I
    :cond_49
    :try_start_49
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 467
    const-string v1, "alert_ver"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 468
    .local v17, version:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sprint/dsa/data/Alerts;->setVersion(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_123
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5e} :catch_5f

    goto :goto_26

    .line 509
    .end local v17           #version:Ljava/lang/String;
    :catch_5f
    move-exception v1

    .line 512
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 513
    invoke-static {v12}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto :goto_d

    .line 478
    .restart local v14       #i:I
    .restart local v16       #numRows:I
    :cond_67
    :try_start_67
    new-instance v9, Lcom/sprint/dsa/data/Alert;

    invoke-direct {v9}, Lcom/sprint/dsa/data/Alert;-><init>()V

    .line 479
    .local v9, alert:Lcom/sprint/dsa/data/Alert;
    const-string v1, "id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/sprint/dsa/data/Alert;->m_id:J

    .line 480
    const-string v1, "sid"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/sprint/dsa/data/Alert;->m_sid:J

    .line 481
    const-string v1, "campaign"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_campaign:Ljava/lang/String;

    .line 482
    const-string v1, "header"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_header:Ljava/lang/String;

    .line 483
    const-string v1, "title"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_title:Ljava/lang/String;

    .line 484
    const-string v1, "desc"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_description:Ljava/lang/String;

    .line 485
    const-string v1, "expiration"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/sprint/dsa/data/Alert;->m_expiration:J

    .line 486
    const-string v1, "action"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_action:Ljava/lang/String;

    .line 487
    const-string v1, "uri"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_uri:Ljava/lang/String;

    .line 488
    const-string v1, "extra"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_extra:Ljava/lang/String;

    .line 489
    const-string v1, "imgurl"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_imageUrl:Ljava/lang/String;

    .line 490
    const-string v1, "pack_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_packId:Ljava/lang/String;

    .line 492
    const-string v1, "icon"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_105
    .catchall {:try_start_67 .. :try_end_105} :catchall_123
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_105} :catch_5f

    move-result-object v15

    .line 493
    .local v15, iconByte:[B
    if-eqz v15, :cond_110

    .line 495
    const/4 v1, 0x0

    :try_start_109
    array-length v2, v15

    invoke-static {v15, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v9, Lcom/sprint/dsa/data/Alert;->m_icon:Landroid/graphics/Bitmap;
    :try_end_110
    .catchall {:try_start_109 .. :try_end_110} :catchall_123
    .catch Ljava/lang/RuntimeException; {:try_start_109 .. :try_end_110} :catch_11a
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_110} :catch_5f

    .line 503
    :cond_110
    :goto_110
    :try_start_110
    invoke-virtual {v10, v9}, Lcom/sprint/dsa/data/Alerts;->addAlert(Lcom/sprint/dsa/data/Alert;)V

    .line 504
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 477
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3e

    .line 496
    :catch_11a
    move-exception v13

    .line 497
    .local v13, e:Ljava/lang/RuntimeException;
    const-string v1, "SprintZone_DbAdapter"

    const-string v2, "Exception decoding icon"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_122
    .catchall {:try_start_110 .. :try_end_122} :catchall_123
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_122} :catch_5f

    goto :goto_110

    .line 511
    .end local v9           #alert:Lcom/sprint/dsa/data/Alert;
    .end local v13           #e:Ljava/lang/RuntimeException;
    .end local v14           #i:I
    .end local v15           #iconByte:[B
    .end local v16           #numRows:I
    :catchall_123
    move-exception v1

    .line 512
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 513
    invoke-static {v12}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 514
    throw v1
.end method

.method public getAllItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .parameter "appMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/data/FeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v9, features:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/dsa/data/FeatureItem;>;"
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_a

    .line 589
    :goto_9
    return-object v9

    .line 567
    :cond_a
    const/4 v8, 0x0

    .line 569
    .local v8, cFeatures:Landroid/database/Cursor;
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app_scheme = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "features_tbl"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 571
    const/4 v7, 0x0

    .line 570
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 572
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 574
    .local v11, numRows:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_4e

    .line 575
    const/4 v10, 0x0

    .local v10, i:I
    :goto_35
    if-lt v10, v11, :cond_3b

    .line 586
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto :goto_9

    .line 576
    :cond_3b
    :try_start_3b
    new-instance v12, Lcom/sprint/dsa/data/FeatureItem;

    invoke-direct {v12}, Lcom/sprint/dsa/data/FeatureItem;-><init>()V

    .line 577
    .local v12, promo:Lcom/sprint/dsa/data/FeatureItem;
    iput-object p1, v12, Lcom/sprint/dsa/data/FeatureItem;->mScheme:Ljava/lang/String;

    .line 578
    invoke-virtual {p0, v8, v12}, Lcom/sprint/dsa/data/DbAdapter;->cursorToFeature(Landroid/database/Cursor;Lcom/sprint/dsa/data/FeatureItem;)V

    .line 581
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_4e

    .line 575
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    .line 585
    .end local v3           #where:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #numRows:I
    .end local v12           #promo:Lcom/sprint/dsa/data/FeatureItem;
    :catchall_4e
    move-exception v0

    .line 586
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 587
    throw v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 94
    invoke-virtual {p0}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 96
    :cond_9
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getPageContent(ILjava/lang/String;)Lcom/sprint/dsa/data/PageContent;
    .registers 25
    .parameter "pageId"
    .parameter "packId"

    .prologue
    .line 595
    new-instance v18, Lcom/sprint/dsa/data/PageContent;

    const-string v2, "0"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/sprint/dsa/data/PageContent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v18, promos:Lcom/sprint/dsa/data/PageContent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_10

    .line 703
    :goto_f
    return-object v18

    .line 598
    :cond_10
    const/4 v10, 0x0

    .line 599
    .local v10, cCategories:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 600
    .local v12, cVersions:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 605
    .local v11, cFeatures:Landroid/database/Cursor;
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "versions_tbl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 606
    const/4 v9, 0x0

    .line 605
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 607
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_c9

    .line 617
    :cond_29
    :goto_29
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 619
    .local v19, sqlArgs:[Ljava/lang/String;
    const-string v20, "SELECT categories_tbl.*, pages_tbl.page_order  FROM categories_tbl, pages_tbl  WHERE pages_tbl.pid = ? \tAND categories_tbl.sid = pages_tbl.sid "

    .line 623
    .local v20, sqlCategories:Ljava/lang/String;
    if-eqz p2, :cond_ee

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "   AND categories_tbl.pack_id = ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 626
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19           #sqlArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    const/4 v2, 0x1

    aput-object p2, v19, v2

    .line 630
    .restart local v19       #sqlArgs:[Ljava/lang/String;
    :goto_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ORDER BY pages_tbl.page_order"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 635
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/dsa/data/DbAdapter;->getPages(I)Lcom/sprint/dsa/data/Pages;

    move-result-object v16

    .line 638
    .local v16, pages:Lcom/sprint/dsa/data/Pages;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 640
    .local v15, numRows:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 641
    const/4 v14, 0x0

    .local v14, i:I
    :goto_86
    if-lt v14, v15, :cond_103

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sid IN ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/data/Pages;->getCategoryIds(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "features_tbl"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 677
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 676
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 678
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 681
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_bb
    .catchall {:try_start_13 .. :try_end_bb} :catchall_17b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_bb} :catch_e2

    .line 682
    const/4 v14, 0x0

    :goto_bc
    if-lt v14, v15, :cond_156

    .line 698
    invoke-static {v10}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 699
    invoke-static {v12}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 700
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_f

    .line 609
    .end local v5           #where:Ljava/lang/String;
    .end local v14           #i:I
    .end local v15           #numRows:I
    .end local v16           #pages:Lcom/sprint/dsa/data/Pages;
    .end local v19           #sqlArgs:[Ljava/lang/String;
    .end local v20           #sqlCategories:Ljava/lang/String;
    :cond_c9
    :try_start_c9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 611
    const-string v2, "promo_ver"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 610
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 612
    .local v21, version:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/data/PageContent;->setVersion(Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_c9 .. :try_end_e0} :catchall_17b
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e0} :catch_e2

    goto/16 :goto_29

    .line 694
    .end local v21           #version:Ljava/lang/String;
    :catch_e2
    move-exception v2

    .line 698
    invoke-static {v10}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 699
    invoke-static {v12}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 700
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_f

    .line 628
    .restart local v19       #sqlArgs:[Ljava/lang/String;
    .restart local v20       #sqlCategories:Ljava/lang/String;
    :cond_ee
    :try_start_ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "   AND categories_tbl.pack_id IS NULL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5b

    .line 642
    .restart local v14       #i:I
    .restart local v15       #numRows:I
    .restart local v16       #pages:Lcom/sprint/dsa/data/Pages;
    :cond_103
    new-instance v13, Lcom/sprint/dsa/data/CategoryItem;

    invoke-direct {v13}, Lcom/sprint/dsa/data/CategoryItem;-><init>()V

    .line 644
    .local v13, category:Lcom/sprint/dsa/data/CategoryItem;
    const-string v2, "sid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 643
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v13, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    .line 646
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 645
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    .line 656
    const-string v2, "app_scheme"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 655
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/sprint/dsa/data/CategoryItem;->mAppScheme:Ljava/lang/String;

    .line 658
    const-string v2, "expanded"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 657
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 658
    const/4 v3, 0x1

    if-ne v2, v3, :cond_154

    const/4 v2, 0x1

    .line 657
    :goto_13a
    iput-boolean v2, v13, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    .line 660
    const-string v2, "pack_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 659
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/sprint/dsa/data/CategoryItem;->mPackId:Ljava/lang/String;

    .line 665
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/sprint/dsa/data/PageContent;->addCategory(Lcom/sprint/dsa/data/CategoryItem;)V

    .line 667
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 641
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_86

    .line 658
    :cond_154
    const/4 v2, 0x0

    goto :goto_13a

    .line 683
    .end local v13           #category:Lcom/sprint/dsa/data/CategoryItem;
    .restart local v5       #where:Ljava/lang/String;
    :cond_156
    new-instance v17, Lcom/sprint/dsa/data/FeatureItem;

    invoke-direct/range {v17 .. v17}, Lcom/sprint/dsa/data/FeatureItem;-><init>()V

    .line 684
    .local v17, promo:Lcom/sprint/dsa/data/FeatureItem;
    if-nez p1, :cond_178

    const-string v2, "promo"

    :goto_15f
    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/sprint/dsa/data/FeatureItem;->mScheme:Ljava/lang/String;

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/sprint/dsa/data/DbAdapter;->cursorToFeature(Landroid/database/Cursor;Lcom/sprint/dsa/data/FeatureItem;)V

    .line 688
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/data/PageContent;->addFeature(Lcom/sprint/dsa/data/FeatureItem;)V

    .line 689
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 682
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_bc

    .line 684
    :cond_178
    const-string v2, "custom"
    :try_end_17a
    .catchall {:try_start_ee .. :try_end_17a} :catchall_17b
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_17a} :catch_e2

    goto :goto_15f

    .line 697
    .end local v5           #where:Ljava/lang/String;
    .end local v14           #i:I
    .end local v15           #numRows:I
    .end local v16           #pages:Lcom/sprint/dsa/data/Pages;
    .end local v17           #promo:Lcom/sprint/dsa/data/FeatureItem;
    .end local v19           #sqlArgs:[Ljava/lang/String;
    .end local v20           #sqlCategories:Ljava/lang/String;
    :catchall_17b
    move-exception v2

    .line 698
    invoke-static {v10}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 699
    invoke-static {v12}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 700
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 701
    throw v2
.end method

.method public getPages(I)Lcom/sprint/dsa/data/Pages;
    .registers 18
    .parameter "pageId"

    .prologue
    .line 431
    new-instance v13, Lcom/sprint/dsa/data/Pages;

    invoke-direct {v13}, Lcom/sprint/dsa/data/Pages;-><init>()V

    .line 432
    .local v13, pages:Lcom/sprint/dsa/data/Pages;
    const/4 v14, 0x0

    .line 433
    .local v14, pagesCursor:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pid = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_24

    .line 453
    :goto_23
    return-object v13

    .line 436
    :cond_24
    :try_start_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pages_tbl"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 437
    const/4 v8, 0x0

    .line 436
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 438
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 439
    .local v11, numRows:I
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3a} :catch_68

    .line 440
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3b
    if-lt v9, v11, :cond_41

    .line 450
    invoke-static {v14}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto :goto_23

    .line 441
    :cond_41
    :try_start_41
    const-string v1, "pid"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 442
    .local v10, id:I
    const-string v1, "sid"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 443
    .local v15, sid:I
    const-string v1, "page_order"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 444
    .local v12, order:I
    invoke-virtual {v13, v10, v15, v12}, Lcom/sprint/dsa/data/Pages;->addContent(III)V

    .line 445
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_65
    .catchall {:try_start_41 .. :try_end_65} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_65} :catch_68

    .line 440
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 447
    .end local v9           #i:I
    .end local v10           #id:I
    .end local v11           #numRows:I
    .end local v12           #order:I
    .end local v15           #sid:I
    :catch_68
    move-exception v1

    .line 450
    invoke-static {v14}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto :goto_23

    .line 449
    :catchall_6d
    move-exception v1

    .line 450
    invoke-static {v14}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 451
    throw v1
.end method

.method public getReports()Ljava/lang/String;
    .registers 21

    .prologue
    .line 345
    const/4 v11, 0x0

    .line 346
    .local v11, cs:Landroid/database/Cursor;
    const-string v16, ""

    .line 347
    .local v16, retXml:Ljava/lang/String;
    const-string v10, ""

    .line 348
    .local v10, bodyXml:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 427
    :goto_c
    return-object v1

    .line 351
    :cond_d
    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "report_tbl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 352
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 353
    .local v15, numRows:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_2b3

    .line 354
    const/4 v13, 0x0

    .local v13, i:I
    :goto_25
    if-lt v13, v15, :cond_48

    .line 420
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 423
    .end local v13           #i:I
    .end local v15           #numRows:I
    :goto_2a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<report>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</report>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_45
    move-object/from16 v1, v16

    .line 427
    goto :goto_c

    .line 355
    .restart local v13       #i:I
    .restart local v15       #numRows:I
    :cond_48
    :try_start_48
    const-string v1, "id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 356
    .local v14, id:Ljava/lang/String;
    const-string v1, "type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 357
    .local v19, type:I
    const-string v1, "action"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, action:Ljava/lang/String;
    const-string v1, "time"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 359
    .local v18, time:Ljava/lang/String;
    const-string v1, "slot"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 360
    .local v17, slot:I
    const-string v1, "data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 362
    .local v12, data:Ljava/lang/String;
    sparse-switch v19, :sswitch_data_2be

    .line 414
    :goto_87
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 354
    add-int/lit8 v13, v13, 0x1

    goto :goto_25

    .line 364
    :sswitch_8d
    if-nez v12, :cond_91

    const-string v12, ""

    .line 365
    :cond_91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<app action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</app>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 366
    goto :goto_87

    .line 369
    :sswitch_c5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<alert id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 371
    goto :goto_87

    .line 374
    :sswitch_f9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<poll interval=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 376
    goto/16 :goto_87

    .line 379
    :sswitch_124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<promo id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" slot=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 381
    goto/16 :goto_87

    .line 384
    :sswitch_165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<setting id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 386
    goto/16 :goto_87

    .line 389
    :sswitch_19a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<Airplane_Mode id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 391
    goto/16 :goto_87

    .line 394
    :sswitch_1cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<No_Data id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 396
    goto/16 :goto_87

    .line 399
    :sswitch_204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<No_Voice id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 401
    goto/16 :goto_87

    .line 404
    :sswitch_239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<Device_activation id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    const-string v2, "\" time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 406
    goto/16 :goto_87

    .line 409
    :sswitch_26e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<packs id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" action=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 410
    const-string v2, " time=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</packs>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b0
    .catchall {:try_start_48 .. :try_end_2b0} :catchall_2b9
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_2b0} :catch_2b3

    move-result-object v10

    goto/16 :goto_87

    .line 417
    .end local v9           #action:Ljava/lang/String;
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #id:Ljava/lang/String;
    .end local v15           #numRows:I
    .end local v17           #slot:I
    .end local v18           #time:Ljava/lang/String;
    .end local v19           #type:I
    :catch_2b3
    move-exception v1

    .line 420
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_2a

    .line 419
    :catchall_2b9
    move-exception v1

    .line 420
    invoke-static {v11}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 421
    throw v1

    .line 362
    :sswitch_data_2be
    .sparse-switch
        0x0 -> :sswitch_8d
        0x1 -> :sswitch_165
        0x2 -> :sswitch_124
        0x3 -> :sswitch_c5
        0x4 -> :sswitch_f9
        0x5 -> :sswitch_19a
        0x6 -> :sswitch_1cf
        0x7 -> :sswitch_204
        0x8 -> :sswitch_239
        0x443 -> :sswitch_26e
    .end sparse-switch
.end method

.method public getSettings()Lcom/sprint/dsa/SzSettings;
    .registers 16

    .prologue
    .line 520
    new-instance v13, Lcom/sprint/dsa/SzSettings;

    const-string v0, "0"

    invoke-direct {v13, v0}, Lcom/sprint/dsa/SzSettings;-><init>(Ljava/lang/String;)V

    .line 521
    .local v13, settings:Lcom/sprint/dsa/SzSettings;
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_c

    .line 561
    :goto_b
    return-object v13

    .line 522
    :cond_c
    const/4 v9, 0x0

    .line 523
    .local v9, cs:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 526
    .local v10, cv:Landroid/database/Cursor;
    :try_start_e
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "versions_tbl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 527
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_41

    .line 537
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 538
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 539
    .local v12, numRows:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_37} :catch_55

    .line 540
    const/4 v11, 0x0

    .local v11, i:I
    :goto_38
    if-lt v11, v12, :cond_5d

    .line 557
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 558
    invoke-static {v10}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto :goto_b

    .line 529
    .end local v11           #i:I
    .end local v12           #numRows:I
    :cond_41
    :try_start_41
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 530
    const-string v0, "setting_ver"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 531
    .local v14, version:Ljava/lang/String;
    invoke-virtual {v13, v14}, Lcom/sprint/dsa/SzSettings;->setVersion(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_54} :catch_55

    goto :goto_22

    .line 554
    .end local v14           #version:Ljava/lang/String;
    :catch_55
    move-exception v0

    .line 557
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 558
    invoke-static {v10}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto :goto_b

    .line 541
    .restart local v11       #i:I
    .restart local v12       #numRows:I
    :cond_5d
    :try_start_5d
    const-string v0, "id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 542
    .local v1, id:J
    const-string v0, "show"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 543
    .local v3, show:J
    const-string v0, "tag"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, tag:Ljava/lang/String;
    const-string v0, "title"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, title:Ljava/lang/String;
    const-string v0, "desc"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 546
    .local v7, desc:Ljava/lang/String;
    const-string v0, "pack_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, pkgId:Ljava/lang/String;
    move-object v0, v13

    .line 548
    invoke-virtual/range {v0 .. v8}, Lcom/sprint/dsa/SzSettings;->addSetting(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a0
    .catchall {:try_start_5d .. :try_end_a0} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_a0} :catch_55

    .line 540
    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    .line 556
    .end local v1           #id:J
    .end local v3           #show:J
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #desc:Ljava/lang/String;
    .end local v8           #pkgId:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #numRows:I
    :catchall_a3
    move-exception v0

    .line 557
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 558
    invoke-static {v10}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 559
    throw v0
.end method

.method public getVersions()Lcom/sprint/dsa/data/ContentVersion;
    .registers 16

    .prologue
    .line 755
    const/4 v9, 0x0

    .line 756
    .local v9, cv:Landroid/database/Cursor;
    const-string v14, "0"

    .line 757
    .local v14, settingsVer:Ljava/lang/String;
    const-string v8, "0"

    .line 758
    .local v8, alertsVer:Ljava/lang/String;
    const-string v13, "0"

    .line 759
    .local v13, promosVer:Ljava/lang/String;
    const-string v12, "0"

    .line 760
    .local v12, pagesVer:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 761
    .local v10, lastUpdate:J
    const/4 v0, 0x0

    .line 765
    .local v0, version:Lcom/sprint/dsa/data/ContentVersion;
    :try_start_c
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .end local v0           #version:Lcom/sprint/dsa/data/ContentVersion;
    const-string v1, "versions_tbl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 766
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_38

    .line 768
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, v14

    move-object v2, v13

    move-object v3, v8

    move-object v4, v12

    invoke-virtual/range {v0 .. v6}, Lcom/sprint/dsa/data/DbAdapter;->insertVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_71

    move-wide v5, v10

    .end local v10           #lastUpdate:J
    .local v5, lastUpdate:J
    move-object v4, v12

    .end local v12           #pagesVer:Ljava/lang/String;
    .local v4, pagesVer:Ljava/lang/String;
    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .local v3, promosVer:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #alertsVer:Ljava/lang/String;
    .local v2, alertsVer:Ljava/lang/String;
    move-object v1, v14

    .line 780
    .end local v14           #settingsVer:Ljava/lang/String;
    .local v1, settingsVer:Ljava/lang/String;
    :goto_2f
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 783
    :goto_32
    new-instance v0, Lcom/sprint/dsa/data/ContentVersion;

    invoke-direct/range {v0 .. v6}, Lcom/sprint/dsa/data/ContentVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 785
    .restart local v0       #version:Lcom/sprint/dsa/data/ContentVersion;
    return-object v0

    .line 769
    .end local v0           #version:Lcom/sprint/dsa/data/ContentVersion;
    .end local v1           #settingsVer:Ljava/lang/String;
    .end local v2           #alertsVer:Ljava/lang/String;
    .end local v3           #promosVer:Ljava/lang/String;
    .end local v4           #pagesVer:Ljava/lang/String;
    .end local v5           #lastUpdate:J
    .restart local v8       #alertsVer:Ljava/lang/String;
    .restart local v10       #lastUpdate:J
    .restart local v12       #pagesVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    .restart local v14       #settingsVer:Ljava/lang/String;
    :cond_38
    :try_start_38
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 770
    const-string v7, "setting_ver"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_71

    move-result-object v1

    .line 771
    .end local v14           #settingsVer:Ljava/lang/String;
    .restart local v1       #settingsVer:Ljava/lang/String;
    :try_start_48
    const-string v7, "pages_ver"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_84
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_92

    move-result-object v4

    .line 772
    .end local v12           #pagesVer:Ljava/lang/String;
    .restart local v4       #pagesVer:Ljava/lang/String;
    :try_start_52
    const-string v7, "alert_ver"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_89
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5b} :catch_97

    move-result-object v2

    .line 773
    .end local v8           #alertsVer:Ljava/lang/String;
    .restart local v2       #alertsVer:Ljava/lang/String;
    :try_start_5c
    const-string v7, "promo_ver"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_8d
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_65} :catch_9b

    move-result-object v3

    .line 774
    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    :try_start_66
    const-string v7, "last_update"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_9e

    move-result-wide v5

    .end local v10           #lastUpdate:J
    .restart local v5       #lastUpdate:J
    goto :goto_2f

    .line 777
    .end local v1           #settingsVer:Ljava/lang/String;
    .end local v2           #alertsVer:Ljava/lang/String;
    .end local v3           #promosVer:Ljava/lang/String;
    .end local v4           #pagesVer:Ljava/lang/String;
    .end local v5           #lastUpdate:J
    .restart local v8       #alertsVer:Ljava/lang/String;
    .restart local v10       #lastUpdate:J
    .restart local v12       #pagesVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    .restart local v14       #settingsVer:Ljava/lang/String;
    :catch_71
    move-exception v7

    move-object v4, v12

    .end local v12           #pagesVer:Ljava/lang/String;
    .restart local v4       #pagesVer:Ljava/lang/String;
    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #alertsVer:Ljava/lang/String;
    .restart local v2       #alertsVer:Ljava/lang/String;
    move-object v1, v14

    .line 780
    .end local v14           #settingsVer:Ljava/lang/String;
    .restart local v1       #settingsVer:Ljava/lang/String;
    :goto_76
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    move-wide v5, v10

    .end local v10           #lastUpdate:J
    .restart local v5       #lastUpdate:J
    goto :goto_32

    .line 779
    .end local v1           #settingsVer:Ljava/lang/String;
    .end local v2           #alertsVer:Ljava/lang/String;
    .end local v3           #promosVer:Ljava/lang/String;
    .end local v4           #pagesVer:Ljava/lang/String;
    .end local v5           #lastUpdate:J
    .restart local v8       #alertsVer:Ljava/lang/String;
    .restart local v10       #lastUpdate:J
    .restart local v12       #pagesVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    .restart local v14       #settingsVer:Ljava/lang/String;
    :catchall_7b
    move-exception v7

    move-object v4, v12

    .end local v12           #pagesVer:Ljava/lang/String;
    .restart local v4       #pagesVer:Ljava/lang/String;
    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #alertsVer:Ljava/lang/String;
    .restart local v2       #alertsVer:Ljava/lang/String;
    move-object v1, v14

    .line 780
    .end local v14           #settingsVer:Ljava/lang/String;
    .restart local v1       #settingsVer:Ljava/lang/String;
    :goto_80
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 781
    throw v7

    .line 779
    .end local v2           #alertsVer:Ljava/lang/String;
    .end local v3           #promosVer:Ljava/lang/String;
    .end local v4           #pagesVer:Ljava/lang/String;
    .restart local v8       #alertsVer:Ljava/lang/String;
    .restart local v12       #pagesVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    :catchall_84
    move-exception v7

    move-object v4, v12

    .end local v12           #pagesVer:Ljava/lang/String;
    .restart local v4       #pagesVer:Ljava/lang/String;
    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #alertsVer:Ljava/lang/String;
    .restart local v2       #alertsVer:Ljava/lang/String;
    goto :goto_80

    .end local v2           #alertsVer:Ljava/lang/String;
    .end local v3           #promosVer:Ljava/lang/String;
    .restart local v8       #alertsVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    :catchall_89
    move-exception v7

    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #alertsVer:Ljava/lang/String;
    .restart local v2       #alertsVer:Ljava/lang/String;
    goto :goto_80

    .end local v3           #promosVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    :catchall_8d
    move-exception v7

    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    goto :goto_80

    :catchall_90
    move-exception v7

    goto :goto_80

    .line 777
    .end local v2           #alertsVer:Ljava/lang/String;
    .end local v3           #promosVer:Ljava/lang/String;
    .end local v4           #pagesVer:Ljava/lang/String;
    .restart local v8       #alertsVer:Ljava/lang/String;
    .restart local v12       #pagesVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    :catch_92
    move-exception v7

    move-object v4, v12

    .end local v12           #pagesVer:Ljava/lang/String;
    .restart local v4       #pagesVer:Ljava/lang/String;
    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #alertsVer:Ljava/lang/String;
    .restart local v2       #alertsVer:Ljava/lang/String;
    goto :goto_76

    .end local v2           #alertsVer:Ljava/lang/String;
    .end local v3           #promosVer:Ljava/lang/String;
    .restart local v8       #alertsVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    :catch_97
    move-exception v7

    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #alertsVer:Ljava/lang/String;
    .restart local v2       #alertsVer:Ljava/lang/String;
    goto :goto_76

    .end local v3           #promosVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    :catch_9b
    move-exception v7

    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    goto :goto_76

    :catch_9e
    move-exception v7

    goto :goto_76

    .end local v1           #settingsVer:Ljava/lang/String;
    .end local v2           #alertsVer:Ljava/lang/String;
    .end local v3           #promosVer:Ljava/lang/String;
    .end local v4           #pagesVer:Ljava/lang/String;
    .restart local v8       #alertsVer:Ljava/lang/String;
    .restart local v12       #pagesVer:Ljava/lang/String;
    .restart local v13       #promosVer:Ljava/lang/String;
    .restart local v14       #settingsVer:Ljava/lang/String;
    :cond_a0
    move-wide v5, v10

    .end local v10           #lastUpdate:J
    .restart local v5       #lastUpdate:J
    move-object v4, v12

    .end local v12           #pagesVer:Ljava/lang/String;
    .restart local v4       #pagesVer:Ljava/lang/String;
    move-object v3, v13

    .end local v13           #promosVer:Ljava/lang/String;
    .restart local v3       #promosVer:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #alertsVer:Ljava/lang/String;
    .restart local v2       #alertsVer:Ljava/lang/String;
    move-object v1, v14

    .end local v14           #settingsVer:Ljava/lang/String;
    .restart local v1       #settingsVer:Ljava/lang/String;
    goto :goto_2f
.end method

.method public insertAlert(Landroid/content/ContentValues;)J
    .registers 5
    .parameter "values"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_alert"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertCategoryItem(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "categories_tbl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 195
    return-void
.end method

.method public insertFeatureItem(Landroid/content/ContentValues;)J
    .registers 5
    .parameter "values"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "features_tbl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrUpdateAlert(Landroid/content/ContentValues;)J
    .registers 11
    .parameter "values"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    .line 228
    const-string v6, "_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 233
    .local v1, id:Ljava/lang/Long;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_3e

    .line 235
    :cond_13
    const-string v6, "campaign"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, campaign:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "campaign=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, whereClause:Ljava/lang/String;
    iget-object v6, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "table_alert"

    invoke-virtual {v6, v7, p1, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 240
    .local v2, updated:I
    if-lez v2, :cond_39

    .line 253
    .end local v0           #campaign:Ljava/lang/String;
    .end local v2           #updated:I
    :goto_38
    return-wide v4

    .line 246
    .restart local v0       #campaign:Ljava/lang/String;
    .restart local v2       #updated:I
    :cond_39
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/data/DbAdapter;->insertAlert(Landroid/content/ContentValues;)J

    move-result-wide v4

    goto :goto_38

    .line 251
    .end local v0           #campaign:Ljava/lang/String;
    .end local v2           #updated:I
    .end local v3           #whereClause:Ljava/lang/String;
    :cond_3e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .restart local v3       #whereClause:Ljava/lang/String;
    iget-object v6, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "table_alert"

    invoke-virtual {v6, v7, p1, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_38
.end method

.method public insertPage(Landroid/content/ContentValues;)J
    .registers 5
    .parameter "values"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pages_tbl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertReport(Landroid/content/ContentValues;)J
    .registers 6
    .parameter "values"

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "report_tbl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-wide v1

    .line 160
    :goto_9
    return-wide v1

    .line 158
    :catch_a
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DbAdapter"

    const-string v2, "Fail to insert reports"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const-wide/16 v1, 0x0

    goto :goto_9
.end method

.method public insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .registers 12
    .parameter "id"
    .parameter "type"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 127
    invoke-static {}, Lcom/sprint/dsa/Util;->currentTime()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
    .registers 14
    .parameter "id"
    .parameter "type"
    .parameter "action"
    .parameter "date"
    .parameter "slot"
    .parameter "data"

    .prologue
    const-wide/16 v2, 0x0

    .line 132
    if-nez p4, :cond_8

    invoke-static {}, Lcom/sprint/dsa/Util;->currentTime()Ljava/lang/String;

    move-result-object p4

    .line 134
    :cond_8
    :try_start_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "id"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v4, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v4, "action"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v4, "time"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "slot"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v4, "data"

    invoke-virtual {v1, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "report_tbl"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_3b} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3b} :catch_46

    move-result-wide v2

    .line 150
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_3c
    return-wide v2

    .line 144
    :catch_3d
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "SprintZone_DbAdapter"

    const-string v5, "m_db has already been released"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 148
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_46
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_DbAdapter"

    const-string v5, "Fail to insert reports"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method public insertSetting(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "id"
    .parameter "show"
    .parameter "tag"
    .parameter "title"
    .parameter "desc"

    .prologue
    .line 178
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    const-string v1, "show"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-string v1, "tag"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "title"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "desc"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 186
    return-void
.end method

.method public insertSetting(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 190
    return-void
.end method

.method public insertVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .parameter "settingsVer"
    .parameter "promosVer"
    .parameter "alertsVer"
    .parameter "pagesVer"
    .parameter "lastUpdate"

    .prologue
    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "setting_ver"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "promo_ver"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "alert_ver"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "pages_ver"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "last_update"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "versions_tbl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 174
    return-void
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 101
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    goto :goto_5
.end method

.method public open()Lcom/sprint/dsa/data/DbAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 89
    .end local p0
    :cond_c
    :goto_c
    return-object p0

    .line 84
    .restart local p0
    :catch_d
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DbAdapter"

    const-string v2, "DB failed to open"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 p0, 0x0

    goto :goto_c
.end method

.method public updateAlertIcon(Lcom/sprint/dsa/data/Alert;)V
    .registers 8
    .parameter "alert"

    .prologue
    .line 258
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v1, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/sprint/dsa/data/Alert;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 261
    const-string v2, "icon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 263
    iget-object v2, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_alert"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sprint/dsa/data/Alert;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public updateCategoryState(Lcom/sprint/dsa/data/CategoryItem;)V
    .registers 6
    .parameter "category"

    .prologue
    .line 198
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sid"

    iget-wide v2, p1, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    const-string v1, "title"

    iget-object v2, p1, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "app_scheme"

    iget-object v2, p1, Lcom/sprint/dsa/data/CategoryItem;->mAppScheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "expanded"

    iget-boolean v2, p1, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    const-string v1, "pack_id"

    iget-object v2, p1, Lcom/sprint/dsa/data/CategoryItem;->mPackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "categories_tbl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 206
    return-void
.end method

.method public updateFeatureIcon(Lcom/sprint/dsa/data/FeatureItem;)V
    .registers 9
    .parameter "item"

    .prologue
    .line 214
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v1, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 217
    const-string v2, "icon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 219
    iget-object v2, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "features_tbl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sprint/dsa/data/FeatureItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public updateLastUpdate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 295
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v1, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 297
    .local v0, now:Ljava/util/Date;
    const-string v2, "last_update"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    iget-object v2, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "versions_tbl"

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public updatePages(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pages_tbl"

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public updateSetting(JLandroid/content/ContentValues;)V
    .registers 9
    .parameter "id"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_settings"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 272
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_settings"

    invoke-virtual {v0, v1, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 274
    :cond_21
    return-void
.end method

.method public updateVersions(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "versions_tbl"

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method public updateVersions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "colName"
    .parameter "newVersion"

    .prologue
    .line 283
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/sprint/dsa/data/DbAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "versions_tbl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_11} :catch_12

    .line 292
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_11
    return-void

    .line 288
    :catch_12
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "SprintZone_DbAdapter"

    const-string v3, "mDB has already been released"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method
