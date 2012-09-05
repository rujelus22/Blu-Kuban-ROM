.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field hasFilter:Z

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field mylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/content/res/Resources;

.field tempUint:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

.field private top_item_index:I


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;I)V
    .registers 7
    .parameter
    .parameter
    .parameter "tempUint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    .line 1429
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->items:Ljava/util/ArrayList;

    .line 1245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->mylist:Ljava/util/ArrayList;

    .line 1247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->hasFilter:Z

    .line 1249
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->top_item_index:I

    .line 1431
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->mylist:Ljava/util/ArrayList;

    .line 1432
    iput p3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->tempUint:I

    .line 1433
    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->UpdateText:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090034

    invoke-virtual {p1, v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDateTimeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->init()V

    .line 1435
    return-void
.end method

.method private init()V
    .registers 28

    .prologue
    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->r:Landroid/content/res/Resources;

    .line 1264
    const/4 v14, 0x0

    .line 1265
    .local v14, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v8

    .line 1266
    .local v8, currentScale:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v23, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_139

    const v22, 0x7f02001e

    :goto_2e
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempimg:I

    .line 1267
    :goto_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->mylist:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v14, :cond_56a

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->mylist:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1271
    .local v15, item:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_86

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_86

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_86

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_86

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_86

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16e

    .line 1274
    :cond_86
    const/4 v6, 0x0

    .line 1275
    .local v6, EncryptLongitude:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1278
    .local v5, EncryptLatitude:Ljava/lang/String;
    :try_start_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mDecryptKey:Ljava/security/Key;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->Encrypt(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mDecryptKey:Ljava/security/Key;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->Encrypt(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->toHexString([B)Ljava/lang/String;
    :try_end_bf
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_88 .. :try_end_bf} :catch_13e

    move-result-object v5

    .line 1284
    :goto_c0
    const/4 v12, 0x0

    .line 1288
    .local v12, file:Z
    :try_start_c1
    new-instance v13, Ljava/io/FileInputStream;

    const-string v22, "/mnt/sdcard/widgetgetlog.txt"

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v13, fis:Ljava/io/FileInputStream;
    const-string v22, ""

    const-string v23, "LF_success!!!"

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/4 v12, 0x1

    .line 1291
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d5} :catch_148

    .line 1299
    .end local v13           #fis:Ljava/io/FileInputStream;
    :goto_d5
    const-string v22, ""

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    if-eqz v12, :cond_166

    .line 1303
    const-string v22, ""

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Err Itm:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string v22, ""

    const-string v23, "!!file is exisist"

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :goto_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->mylist:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_34

    .line 1266
    .end local v5           #EncryptLatitude:Ljava/lang/String;
    .end local v6           #EncryptLongitude:Ljava/lang/String;
    .end local v12           #file:Z
    .end local v15           #item:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :cond_139
    const v22, 0x7f020026

    goto/16 :goto_2e

    .line 1280
    .restart local v5       #EncryptLatitude:Ljava/lang/String;
    .restart local v6       #EncryptLongitude:Ljava/lang/String;
    .restart local v15       #item:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :catch_13e
    move-exception v11

    .line 1281
    .local v11, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v22, ""

    const-string v23, "InvalidAlgorithmParameterException"

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0

    .line 1293
    .end local v11           #e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v12       #file:Z
    :catch_148
    move-exception v11

    .line 1295
    .local v11, e:Ljava/lang/Exception;
    const-string v22, ""

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const/4 v12, 0x0

    goto/16 :goto_d5

    .line 1308
    .end local v11           #e:Ljava/lang/Exception;
    :cond_166
    const-string v22, ""

    const-string v23, "file is not found!!"

    invoke-static/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 1315
    .end local v5           #EncryptLatitude:Ljava/lang/String;
    .end local v6           #EncryptLongitude:Ljava/lang/String;
    .end local v12           #file:Z
    :cond_16e
    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_loc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_188

    .line 1317
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->top_item_index:I

    .line 1320
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f030003

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 1321
    .local v20, v:Landroid/view/View;
    const v22, 0x7f0c000c

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 1322
    .local v21, weather:Landroid/widget/ImageView;
    const v22, 0x7f0c000b

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1323
    .local v7, cityname:Landroid/widget/TextView;
    const v22, 0x7f0c000d

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1324
    .local v19, tempview:Landroid/widget/TextView;
    const v22, 0x7f0c000e

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1326
    .local v18, tempscaleImage:Landroid/widget/ImageView;
    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getIcon()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_34f

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getIcon()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_34f

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getIcon()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1331
    :goto_1fc
    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getTemp()Ljava/lang/String;

    move-result-object v9

    .line 1334
    .local v9, currentTemp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->tempUint:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v8, v0, :cond_22d

    .line 1335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->tempUint:I

    move/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v8, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v9

    .line 1337
    :cond_22d
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempimg:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0xf0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_269

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x140

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_28d

    :cond_269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x140

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_366

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0xf0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_366

    .line 1342
    :cond_28d
    const/16 v22, 0x5f

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x40

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1343
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x5f

    const/16 v25, 0x40

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1367
    :cond_2bb
    :goto_2bb
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->koids:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getZoomLevel()I

    move-result v22

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_546

    .line 1372
    :cond_2f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v25

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getPoint(DD)Lcom/google/android/maps/GeoPoint;
    invoke-static/range {v22 .. v26}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v17

    .line 1379
    .local v17, point:Lcom/google/android/maps/GeoPoint;
    :goto_310
    new-instance v16, Lcom/google/android/maps/OverlayItem;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    .local v16, itm:Lcom/google/android/maps/OverlayItem;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->r:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1381
    .local v10, d:Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1382
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->items:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    add-int/lit8 v14, v14, 0x1

    .line 1387
    goto/16 :goto_34

    .line 1329
    .end local v9           #currentTemp:Ljava/lang/String;
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    .end local v16           #itm:Lcom/google/android/maps/OverlayItem;
    .end local v17           #point:Lcom/google/android/maps/GeoPoint;
    :cond_34f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1fc

    .line 1345
    .restart local v9       #currentTemp:Ljava/lang/String;
    :cond_366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x140

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_38a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x1e0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3ae

    :cond_38a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x1e0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_3de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x140

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_3de

    .line 1347
    :cond_3ae
    const/16 v22, 0x66

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x41

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1348
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x66

    const/16 v25, 0x41

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2bb

    .line 1350
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x1e0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_402

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x320

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_426

    :cond_402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x320

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_456

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x1e0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_456

    .line 1352
    :cond_426
    const/16 v22, 0x98

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x5a

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1353
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x98

    const/16 v25, 0x5a

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2bb

    .line 1355
    :cond_456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x320

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_47a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x500

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_49e

    :cond_47a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x500

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x320

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4ce

    .line 1357
    :cond_49e
    const/16 v22, 0xee

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x86

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1358
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xee

    const/16 v25, 0x86

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2bb

    .line 1361
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x2d0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x500

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_516

    :cond_4f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x500

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I

    move-result v22

    const/16 v23, 0x2d0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2bb

    .line 1363
    :cond_516
    const/16 v22, 0xee

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x86

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1364
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xee

    const/16 v25, 0x86

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2bb

    .line 1376
    :cond_546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->kolocation:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->koids:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual {v15}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    aget-object v17, v22, v23

    .restart local v17       #point:Lcom/google/android/maps/GeoPoint;
    goto/16 :goto_310

    .line 1388
    .end local v7           #cityname:Landroid/widget/TextView;
    .end local v9           #currentTemp:Ljava/lang/String;
    .end local v15           #item:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .end local v17           #point:Lcom/google/android/maps/GeoPoint;
    .end local v18           #tempscaleImage:Landroid/widget/ImageView;
    .end local v19           #tempview:Landroid/widget/TextView;
    .end local v20           #v:Landroid/view/View;
    .end local v21           #weather:Landroid/widget/ImageView;
    :cond_56a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->populate()V

    .line 1389
    return-void
.end method


# virtual methods
.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .registers 12
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v3, 0x0

    .line 1253
    if-eqz p3, :cond_b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 1254
    invoke-super/range {v0 .. v5}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z

    move-result v3

    .line 1256
    :cond_b
    return v3
.end method

.method public getCurrentUint()I
    .registers 2

    .prologue
    .line 1441
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->tempUint:I

    return v0
.end method

.method protected getIndexToDraw(I)I
    .registers 5
    .parameter "pos"

    .prologue
    .line 1394
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    .line 1396
    .local v0, position:I
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->top_item_index:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_19

    .line 1398
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->top_item_index:I

    if-ne v0, v1, :cond_1a

    .line 1400
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-super {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    .line 1410
    .end local v0           #position:I
    :cond_19
    :goto_19
    return v0

    .line 1402
    .restart local v0       #position:I
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_19

    .line 1404
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->top_item_index:I

    goto :goto_19
.end method

.method public getInfoList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->mylist:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onTap(I)Z
    .registers 10
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/16 v7, -0x3e7

    const/4 v6, 0x0

    .line 1447
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getEnterOnTap()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1505
    :goto_a
    return v2

    .line 1451
    :cond_b
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onTap] position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TapPos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1456
    .local v0, info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    if-nez v0, :cond_74

    .line 1457
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1458
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1459
    .restart local v0       #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TapInfoCt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_74
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "flags"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const v4, -0xcb84

    if-ne v3, v4, :cond_d5

    .line 1465
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1467
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->playSoundEffect(I)V

    .line 1468
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1469
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1471
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iput-boolean v2, v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->backpressed:Z

    .line 1472
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    .line 1505
    :goto_c0
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v2

    goto/16 :goto_a

    .line 1476
    :cond_c6
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->playSoundEffect(I)V

    .line 1477
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->makeDetail(Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;)V

    goto :goto_c0

    .line 1480
    :cond_d5
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "flags"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x3070

    if-ne v2, v3, :cond_f5

    .line 1482
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->playSoundEffect(I)V

    .line 1486
    move-object v1, v0

    .line 1487
    .local v1, tempMapCityInfo:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->makeDetail(Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;)V

    goto :goto_c0

    .line 1489
    .end local v1           #tempMapCityInfo:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    :cond_f5
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "flags"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const v3, -0xcf6c

    if-ne v2, v3, :cond_115

    .line 1491
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->playSoundEffect(I)V

    .line 1492
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->makeDetail(Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;)V

    goto :goto_c0

    .line 1496
    :cond_115
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->playSoundEffect(I)V

    .line 1499
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cityinfo"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1501
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "allcity"

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1502
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/16 v3, 0x12c

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1503
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto/16 :goto_c0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
