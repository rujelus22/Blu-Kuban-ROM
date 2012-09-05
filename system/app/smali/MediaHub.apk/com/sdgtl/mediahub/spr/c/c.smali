.class public final Lcom/sdgtl/mediahub/spr/c/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "media_hub.db"

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE tb_mediahub_info (sim_card INTEGER, eula_version TEXT, did INTEGER, currency_symbol TEXT, currency_position INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO tb_mediahub_info VALUES (0, 0, 0, 0, 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE tb_mediahub_data (mediahub_dgta_key TEXT, mediahub_data_vaule TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE tb_mediahub_card (mediahub_card_key TEXT, mediahub_card_data TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE tb_mediahub_mymedia_list (order_id INTEGER, order_item_id INTEGER, license INTEGER, pricing_type_code TEXT, episode_title TEXT, product_id INTEGER, saffron_item_id INTEGER, saffron_user_license_id INTEGER, product_title TEXT, parent_product_id INTEGER, parent_product_title TEXT, release_date TEXT, thumbnail_url TEXT, large_poster_url TEXT, parent_thumbnail_url TEXT, running_time TEXT, actor TEXT, DIRECTOR TEXT, genre TEXT, purchase_date TEXT, due_date TEXT, rent_days INTEGER, hd_file_size LONG, sd_file_size LONG, file_status TEXT, availability TEXT, hdmi_yn TEXT, archive_yn TEXT, nesting_status TEXT, paused_position INTEGER,video_attr_type_code TEXT, synopsis TEXT, download_storage INTEGER, drm_license_status INTEGER, product_type_code TEXT, mpaa_rating TEXT, licensed_date TEXT, charge_dialog_display TEXT, wfd_yn TEXT, pricing_type_hd_buy_type_code TEXT, pricing_type_hd_buy_re_rental_yn TEXT, pricing_type_hd_buy_promotion_id INTEGER, pricing_type_hd_buy_price REAL, pricing_type_hd_buy_rent_days INTEGER, pricing_type_hd_buy_display_promotion TEXT, pricing_type_hd_rent_type_code TEXT, pricing_type_hd_rent_re_rental_yn TEXT, pricing_type_hd_rent_promotion_id INTEGER, pricing_type_hd_rent_price REAL, pricing_type_hd_rent_rent_days INTEGER, pricing_type_hd_rent_display_promotion TEXT, pricing_type_sd_buy_type_code TEXT, pricing_type_sd_buy_re_rental_yn TEXT, pricing_type_sd_buy_promotion_id INTEGER, pricing_type_sd_buy_price REAL, pricing_type_sd_buy_rent_days INTEGER, pricing_type_sd_buy_display_promotion TEXT, pricing_type_sd_rent_type_code TEXT, pricing_type_sd_rent_re_rental_yn TEXT, pricing_type_sd_rent_promotion_id INTEGER, pricing_type_sd_rent_price REAL, pricing_type_sd_rent_rent_days INTEGER, pricing_type_sd_rent_display_promotion TEXT, pricing_type_3d_buy_type_code TEXT, pricing_type_3d_buy_re_rental_yn TEXT, pricing_type_3d_buy_promotion_id INTEGER, pricing_type_3d_buy_price REAL, pricing_type_3d_buy_rent_days INTEGER, pricing_type_3d_buy_display_promotion TEXT, pricing_type_3d_rent_type_code TEXT, pricing_type_3d_rent_re_rental_yn TEXT, pricing_type_3d_rent_promotion_id INTEGER, pricing_type_3d_rent_price REAL, pricing_type_3d_rent_rent_days INTEGER, pricing_type_3d_rent_display_promotion TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    if-eq p2, p3, :cond_19

    const-string v0, "DROP TABLE IF EXISTS tb_mediahub_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tb_mediahub_data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tb_mediahub_card"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tb_mediahub_mymedia_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/c/c;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_19
    return-void
.end method
