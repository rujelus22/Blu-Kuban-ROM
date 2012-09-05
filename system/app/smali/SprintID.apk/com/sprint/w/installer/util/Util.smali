.class public Lcom/sprint/w/installer/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field public static final BOOST_CARRIER_DISPLAY_NAME:Ljava/lang/String; = "Boost"

.field public static final CONNECTION_READ_TIMEOUT:I = 0x7530

.field public static final CONNECTION_TIMEOUT:I = 0x7530

.field public static final DEFAULT_CARRIER_DISPLAY_NAME:Ljava/lang/String; = "Mobile"

.field public static final HOST_VM_SPRINTPCS:Ljava/lang/String; = "vm.sprintpcs.com"

.field public static final MAX_CONNECTIONS:I = 0x5

.field public static final MVNO_CARRIER_DISPLAY_NAME:Ljava/lang/String; = "MVNO"

.field static final RANDOM:Ljava/util/Random; = null

.field public static final SOP_NAMESPACE_URI:Ljava/lang/String; = "http://developer.sprint.com/dtds/sop-1.0.dtd"

.field public static final SPRINT_CARRIER_DISPLAY_NAME:Ljava/lang/String; = "Sprint"

.field public static final SYSPROPS_MDN:I = 0x1

.field public static final SYSPROPS_MEID:I = 0x1e

.field public static final SYSPROPS_NAI:I = 0x2

.field public static final SYSPROPS_UAPROF:I = 0xe

.field public static final VIRGINMOBILE_CARRIER_DISPLAY_NAME:Ljava/lang/String; = "Virgin Mobile"

.field public static final ZONE_EXTRA:Ljava/lang/String; = "com.sprint.zone.source"

.field public static final ZONE_INTENT:Ljava/lang/String; = "com.sprint.zone.ACTION_CUSTOMER_CARE"

.field private static final log:Lcom/sprint/id/logger/Logger; = null

.field private static sApp:Landroid/app/Application; = null

.field private static sCarrier:Ljava/lang/String; = null

.field private static sContentBaseUrl:Ljava/lang/String; = null

.field static sDisplayMertics:Landroid/util/DisplayMetrics; = null

.field private static sFolderId:Ljava/lang/String; = null

.field private static sMdn:Ljava/lang/String; = null

.field private static sMeid:Ljava/lang/String; = null

.field private static sMetaBaseUrl:Ljava/lang/String; = null

.field private static sNai:Ljava/lang/String; = null

.field private static sUaProfile:Ljava/lang/String; = null

.field static final zone_package_new:Ljava/lang/String; = "com.sprint.zone"

.field static final zone_package_old:Ljava/lang/String; = "com.sprint.dsa"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const-class v0, Lcom/sprint/w/installer/util/Util;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    .line 88
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sApp:Landroid/app/Application;

    .line 89
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sUaProfile:Ljava/lang/String;

    .line 90
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sNai:Ljava/lang/String;

    .line 91
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sMeid:Ljava/lang/String;

    .line 92
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sMdn:Ljava/lang/String;

    .line 93
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sContentBaseUrl:Ljava/lang/String;

    .line 94
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sMetaBaseUrl:Ljava/lang/String;

    .line 95
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sFolderId:Ljava/lang/String;

    .line 96
    sput-object v1, Lcom/sprint/w/installer/util/Util;->sCarrier:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/util/Util;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appHasMultipleParents(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .parameter "c"
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 798
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "package=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 804
    .local v6, cur:Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    move-result v0

    if-le v0, v7, :cond_24

    move v0, v7

    .line 806
    :goto_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_24
    move v0, v8

    .line 804
    goto :goto_20

    .line 806
    :catchall_26
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static fileNameToLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "fileName"
    .parameter "namespacePrefix"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findBestResourceMatch(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 9
    .parameter "f"
    .parameter "entry"

    .prologue
    const/4 v5, 0x2

    .line 548
    sget-object v4, Lcom/sprint/w/installer/util/Util;->sDisplayMertics:Landroid/util/DisplayMetrics;

    if-nez v4, :cond_13

    .line 549
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    sput-object v4, Lcom/sprint/w/installer/util/Util;->sDisplayMertics:Landroid/util/DisplayMetrics;

    .line 551
    :cond_13
    const-string v1, ""

    .line 552
    .local v1, qualifier:Ljava/lang/String;
    sget-object v4, Lcom/sprint/w/installer/util/Util;->sDisplayMertics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v4, :sswitch_data_74

    .line 563
    :goto_1c
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, src:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, tokens:[Ljava/lang/String;
    array-length v4, v3

    if-ne v4, v5, :cond_69

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 567
    .local v0, qualEntry:Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_69

    .line 568
    sget-object v4, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Better match found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 569
    move-object p1, v0

    .line 572
    .end local v0           #qualEntry:Ljava/util/jar/JarEntry;
    :cond_69
    return-object p1

    .line 554
    .end local v2           #src:Ljava/lang/String;
    .end local v3           #tokens:[Ljava/lang/String;
    :sswitch_6a
    const-string v1, "-hdpi"

    .line 555
    goto :goto_1c

    .line 557
    :sswitch_6d
    const-string v1, "-ldpi"

    .line 558
    goto :goto_1c

    .line 560
    :sswitch_70
    const-string v1, "-mdpi"

    goto :goto_1c

    .line 552
    nop

    :sswitch_data_74
    .sparse-switch
        0x78 -> :sswitch_6d
        0xa0 -> :sswitch_70
        0xf0 -> :sswitch_6a
    .end sparse-switch
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    .prologue
    .line 382
    sget-object v0, Lcom/sprint/w/installer/util/Util;->sApp:Landroid/app/Application;

    return-object v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .registers 12

    .prologue
    .line 934
    sget-object v8, Lcom/sprint/w/installer/util/Util;->sCarrier:Ljava/lang/String;

    if-eqz v8, :cond_e

    sget-object v8, Lcom/sprint/w/installer/util/Util;->sCarrier:Ljava/lang/String;

    const-string v9, "Mobile"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 935
    :cond_e
    const/4 v0, 0x0

    .line 937
    .local v0, carrierDisplayName:Ljava/lang/String;
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v6

    .line 939
    .local v6, sNAI:Ljava/lang/String;
    if-eqz v6, :cond_6f

    .line 940
    const/4 v7, 0x0

    .line 942
    .local v7, sRealm:Ljava/lang/String;
    :try_start_16
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 943
    .local v5, res:Landroid/content/res/Resources;
    const-string v8, "@"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 944
    const v8, 0x7f080004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 945
    .local v4, realms_array:[Ljava/lang/String;
    array-length v3, v4

    .line 946
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_37
    if-ge v2, v3, :cond_45

    .line 947
    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 948
    add-int/lit8 v8, v2, 0x1

    aget-object v0, v4, v8

    .line 953
    :cond_45
    if-nez v0, :cond_55

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sprintpcs.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 954
    const-string v0, "MVNO"
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_55} :catch_95

    .line 960
    :cond_55
    if-nez v0, :cond_6f

    .line 961
    sget-object v8, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Carrier not found by using Realm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 966
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #realms_array:[Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v7           #sRealm:Ljava/lang/String;
    :cond_6f
    :goto_6f
    if-nez v0, :cond_d4

    .line 968
    const-string v8, "Mobile"

    sput-object v8, Lcom/sprint/w/installer/util/Util;->sCarrier:Ljava/lang/String;

    .line 974
    :cond_75
    :goto_75
    sget-object v8, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Carrier:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sprint/w/installer/util/Util;->sCarrier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 976
    sget-object v8, Lcom/sprint/w/installer/util/Util;->sCarrier:Ljava/lang/String;

    return-object v8

    .line 946
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v4       #realms_array:[Ljava/lang/String;
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v7       #sRealm:Ljava/lang/String;
    :cond_92
    add-int/lit8 v2, v2, 0x2

    goto :goto_37

    .line 957
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #realms_array:[Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    :catch_95
    move-exception v1

    .line 958
    .local v1, e:Ljava/lang/Exception;
    :try_start_96
    sget-object v8, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Error retrieving Carrier Info from the Realm Array"

    invoke-virtual {v8, v9, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_b8

    .line 960
    if-nez v0, :cond_6f

    .line 961
    sget-object v8, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Carrier not found by using Realm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_6f

    .line 960
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_b8
    move-exception v8

    if-nez v0, :cond_d3

    .line 961
    sget-object v9, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Carrier not found by using Realm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    :cond_d3
    throw v8

    .line 971
    .end local v7           #sRealm:Ljava/lang/String;
    :cond_d4
    sput-object v0, Lcom/sprint/w/installer/util/Util;->sCarrier:Ljava/lang/String;

    goto :goto_75
.end method

.method public static getCarrierFolderId()Ljava/lang/String;
    .registers 11

    .prologue
    const v9, 0x7f06010d

    .line 1128
    const/4 v1, 0x0

    .line 1130
    .local v1, carrierFolderId:Ljava/lang/String;
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, carrier:Ljava/lang/String;
    :try_start_8
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1134
    .local v6, res:Landroid/content/res/Resources;
    const v7, 0x7f06010d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 1135
    const v7, 0x7f080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1136
    .local v2, carrier_folder_id_array:[Ljava/lang/String;
    array-length v5, v2

    .line 1137
    .local v5, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2c
    if-ge v4, v5, :cond_3a

    .line 1138
    aget-object v7, v2, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 1139
    add-int/lit8 v7, v4, 0x1

    aget-object v1, v2, v7
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3a} :catch_6c

    .line 1150
    .end local v2           #carrier_folder_id_array:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #len:I
    :cond_3a
    :goto_3a
    if-nez v1, :cond_60

    .line 1151
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1152
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1161
    sget-object v7, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Carrier PSI Folder ID not found by using the Carrier: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1164
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_60
    :goto_60
    return-object v1

    .line 1137
    .restart local v2       #carrier_folder_id_array:[Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #len:I
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_61
    add-int/lit8 v4, v4, 0x2

    goto :goto_2c

    .line 1144
    .end local v2           #carrier_folder_id_array:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #len:I
    :cond_64
    const v7, 0x7f06010d

    :try_start_67
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6c

    move-result-object v1

    goto :goto_3a

    .line 1147
    .end local v6           #res:Landroid/content/res/Resources;
    :catch_6c
    move-exception v3

    .line 1148
    .local v3, e:Ljava/lang/Exception;
    :try_start_6d
    sget-object v7, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error retrieving Carrier Folder ID from the Carrier Folder ID Array"

    invoke-virtual {v7, v8, v3}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_9b

    .line 1150
    if-nez v1, :cond_60

    .line 1151
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1152
    .restart local v6       #res:Landroid/content/res/Resources;
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1161
    sget-object v7, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Carrier PSI Folder ID not found by using the Carrier: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_60

    .line 1150
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #res:Landroid/content/res/Resources;
    :catchall_9b
    move-exception v7

    if-nez v1, :cond_c2

    .line 1151
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1152
    .restart local v6       #res:Landroid/content/res/Resources;
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1161
    sget-object v8, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Carrier PSI Folder ID not found by using the Carrier: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1162
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_c2
    throw v7
.end method

.method public static getCdmaBaseStationLatitude(Landroid/telephony/CellLocation;)D
    .registers 8
    .parameter "cellLocation"

    .prologue
    const-wide/high16 v0, 0x7ff8

    .line 846
    instance-of v3, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_2d

    move-object v2, p0

    .line 847
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 849
    .local v2, cdmaLocation:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    const v4, -0x13c680

    if-le v3, v4, :cond_2d

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    const v4, 0x13c680

    if-ge v3, v4, :cond_2d

    .line 850
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    int-to-double v0, v3

    .line 851
    .local v0, bsLat:D
    const-wide v3, 0x4056800000000000L

    mul-double/2addr v3, v0

    const-wide v5, 0x4133c68000000000L

    div-double v0, v3, v5

    .line 857
    .end local v0           #bsLat:D
    .end local v2           #cdmaLocation:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2d
    return-wide v0
.end method

.method public static getCdmaBaseStationLocation()Landroid/location/Location;
    .registers 11

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v9, 0x7ff8

    .line 892
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 893
    .local v6, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 894
    .local v0, cellLocation:Landroid/telephony/CellLocation;
    if-eqz v0, :cond_32

    .line 895
    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->getCdmaBaseStationLatitude(Landroid/telephony/CellLocation;)D

    move-result-wide v1

    .line 896
    .local v1, lat:D
    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->getCdmaBaseStationLongitude(Landroid/telephony/CellLocation;)D

    move-result-wide v3

    .line 898
    .local v3, lng:D
    cmpl-double v7, v1, v9

    if-eqz v7, :cond_32

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_32

    .line 899
    new-instance v5, Landroid/location/Location;

    const-string v7, "CDMA_BS"

    invoke-direct {v5, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 900
    .local v5, location:Landroid/location/Location;
    invoke-virtual {v5, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 901
    invoke-virtual {v5, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 907
    .end local v1           #lat:D
    .end local v3           #lng:D
    .end local v5           #location:Landroid/location/Location;
    :cond_32
    return-object v5
.end method

.method public static getCdmaBaseStationLongitude(Landroid/telephony/CellLocation;)D
    .registers 8
    .parameter "cellLocation"

    .prologue
    const-wide/high16 v0, 0x7ff8

    .line 870
    instance-of v3, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_2d

    move-object v2, p0

    .line 871
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 873
    .local v2, cdmaLocation:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v3

    const v4, -0x278d00

    if-le v3, v4, :cond_2d

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v3

    const v4, 0x278d00

    if-ge v3, v4, :cond_2d

    .line 874
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v3

    int-to-double v0, v3

    .line 875
    .local v0, bsLng:D
    const-wide v3, 0x4066800000000000L

    mul-double/2addr v3, v0

    const-wide v5, 0x4143c68000000000L

    div-double v0, v3, v5

    .line 881
    .end local v0           #bsLng:D
    .end local v2           #cdmaLocation:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2d
    return-wide v0
.end method

.method public static getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "elem"
    .parameter "namespace"
    .parameter "childName"
    .parameter "childAttrName"

    .prologue
    const/4 v3, 0x0

    .line 349
    :try_start_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 350
    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    :cond_f
    :goto_f
    return-object v3

    .line 352
    :cond_10
    if-nez p1, :cond_28

    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 353
    .local v2, nl:Lorg/w3c/dom/NodeList;
    :goto_16
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eqz v4, :cond_f

    .line 356
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 357
    .local v0, child:Lorg/w3c/dom/Element;
    invoke-interface {v0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    .line 352
    .end local v0           #child:Lorg/w3c/dom/Element;
    .end local v2           #nl:Lorg/w3c/dom/NodeList;
    :cond_28
    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result-object v2

    goto :goto_16

    .line 360
    :catch_2d
    move-exception v1

    .line 361
    .local v1, e:Ljava/lang/Exception;
    goto :goto_f
.end method

.method public static getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "elem"
    .parameter "namespace"
    .parameter "childName"

    .prologue
    const/4 v8, 0x0

    .line 324
    if-nez p1, :cond_f

    :try_start_3
    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 325
    .local v5, nl:Lorg/w3c/dom/NodeList;
    :goto_7
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-nez v9, :cond_14

    move-object v7, v8

    .line 343
    .end local v5           #nl:Lorg/w3c/dom/NodeList;
    :cond_e
    :goto_e
    return-object v7

    .line 324
    :cond_f
    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_7

    .line 328
    .restart local v5       #nl:Lorg/w3c/dom/NodeList;
    :cond_14
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 329
    .local v1, child:Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 330
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 331
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_24
    if-ge v3, v0, :cond_45

    .line 332
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 333
    .local v4, n:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    .line 334
    .local v6, type:I
    const/4 v9, 0x3

    if-eq v6, v9, :cond_34

    const/4 v9, 0x4

    if-ne v6, v9, :cond_42

    .line 335
    :cond_34
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3f} :catch_47

    move-result v9

    if-gtz v9, :cond_e

    .line 331
    .end local v7           #value:Ljava/lang/String;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .end local v4           #n:Lorg/w3c/dom/Node;
    .end local v6           #type:I
    :cond_45
    move-object v7, v8

    .line 341
    goto :goto_e

    .line 342
    .end local v0           #N:I
    .end local v1           #child:Lorg/w3c/dom/Element;
    .end local v3           #i:I
    .end local v5           #nl:Lorg/w3c/dom/NodeList;
    :catch_47
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move-object v7, v8

    .line 343
    goto :goto_e
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .registers 4
    .parameter "c"

    .prologue
    .line 762
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 763
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 764
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    :goto_12
    return v2

    :cond_13
    const/4 v2, -0x1

    goto :goto_12
.end method

.method public static getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "url"

    .prologue
    .line 524
    const/4 v2, 0x0

    .line 526
    .local v2, bm:Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, aURL:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 528
    .local v3, conn:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 529
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 530
    .local v5, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 531
    .local v1, bis:Ljava/io/BufferedInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 532
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 533
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_22

    move-object v6, v2

    .line 538
    .end local v0           #aURL:Ljava/net/URL;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v5           #is:Ljava/io/InputStream;
    :goto_21
    return-object v6

    .line 534
    :catch_22
    move-exception v4

    .line 535
    .local v4, e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_21
.end method

.method public static getLastUpdateCheckTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 229
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_update_check"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMEID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 405
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sMeid:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 407
    :try_start_4
    new-instance v0, Lcom/sprint/internal/SystemProperties;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, sysprops:Lcom/sprint/internal/SystemProperties;
    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sprint/w/installer/util/Util;->sMeid:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_37
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_15} :catch_23

    .line 412
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sMeid:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 413
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "M Device is not activated"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 418
    :cond_20
    :goto_20
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sMeid:Ljava/lang/String;

    return-object v2

    .line 409
    :catch_23
    move-exception v1

    .line 410
    .local v1, t:Ljava/lang/Throwable;
    :try_start_24
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "M Error getting SystemProperties"

    invoke-virtual {v2, v3, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_37

    .line 412
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sMeid:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 413
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "M Device is not activated"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_20

    .line 412
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_37
    move-exception v2

    sget-object v3, Lcom/sprint/w/installer/util/Util;->sMeid:Ljava/lang/String;

    if-nez v3, :cond_43

    .line 413
    sget-object v3, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "M Device is not activated"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    :cond_43
    throw v2
.end method

.method public static getMdn()Ljava/lang/String;
    .registers 5

    .prologue
    .line 450
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sMdn:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 452
    :try_start_4
    new-instance v0, Lcom/sprint/internal/SystemProperties;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, sysprops:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sprint/w/installer/util/Util;->sMdn:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_36
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_22

    .line 457
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sMdn:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 458
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "P Device is not activated"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 462
    :cond_1f
    :goto_1f
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sMdn:Ljava/lang/String;

    return-object v2

    .line 454
    :catch_22
    move-exception v1

    .line 455
    .local v1, t:Ljava/lang/Throwable;
    :try_start_23
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "P Error getting SystemProperties"

    invoke-virtual {v2, v3, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_36

    .line 457
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sMdn:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 458
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "P Device is not activated"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_1f

    .line 457
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_36
    move-exception v2

    sget-object v3, Lcom/sprint/w/installer/util/Util;->sMdn:Ljava/lang/String;

    if-nez v3, :cond_42

    .line 458
    sget-object v3, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "P Device is not activated"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    :cond_42
    throw v2
.end method

.method public static getNai()Ljava/lang/String;
    .registers 5

    .prologue
    .line 427
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sNai:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 429
    :try_start_4
    new-instance v0, Lcom/sprint/internal/SystemProperties;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 430
    .local v0, sysprops:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sprint/w/installer/util/Util;->sNai:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_36
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_22

    .line 436
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sNai:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 437
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "N Device is not activated"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 442
    :cond_1f
    :goto_1f
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sNai:Ljava/lang/String;

    return-object v2

    .line 431
    :catch_22
    move-exception v1

    .line 432
    .local v1, t:Ljava/lang/Throwable;
    :try_start_23
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "N Error getting SystemProperties"

    invoke-virtual {v2, v3, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_36

    .line 436
    sget-object v2, Lcom/sprint/w/installer/util/Util;->sNai:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 437
    sget-object v2, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "N Device is not activated"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_1f

    .line 436
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_36
    move-exception v2

    sget-object v3, Lcom/sprint/w/installer/util/Util;->sNai:Ljava/lang/String;

    if-nez v3, :cond_42

    .line 437
    sget-object v3, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "N Device is not activated"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    :cond_42
    throw v2
.end method

.method public static getOemPack()Lcom/sprint/w/installer/PackInfo;
    .registers 3

    .prologue
    .line 777
    const/4 v1, 0x0

    .line 779
    .local v1, pi:Lcom/sprint/w/installer/PackInfo;
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->getOEMLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v0

    .line 780
    .local v0, ls:Lcom/sprint/w/installer/env/LauncherStrategy;
    if-eqz v0, :cond_21

    .line 781
    new-instance v1, Lcom/sprint/w/installer/PackInfo;

    .end local v1           #pi:Lcom/sprint/w/installer/PackInfo;
    invoke-direct {v1}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 782
    .restart local v1       #pi:Lcom/sprint/w/installer/PackInfo;
    const-string v2, "OEM"

    iput-object v2, v1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 783
    invoke-interface {v0}, Lcom/sprint/w/installer/env/LauncherStrategy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackInfo;->setOemLauncher(Landroid/content/ComponentName;)V

    .line 784
    invoke-interface {v0}, Lcom/sprint/w/installer/env/LauncherStrategy;->getIconResource()I

    move-result v2

    iput v2, v1, Lcom/sprint/w/installer/PackInfo;->oemIconResource:I

    .line 785
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v1, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 787
    :cond_21
    return-object v1
.end method

.method public static getParentPacksForApp(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .parameter "c"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "packName"

    aput-object v3, v2, v5

    const-string v3, "package=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "packName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 824
    .local v6, cur:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 825
    .local v10, names:[Ljava/lang/String;
    const-string v0, "packName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 826
    .local v9, index:I
    const/4 v7, 0x0

    .line 827
    .local v7, i:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_2d
    move v8, v7

    .line 829
    .end local v7           #i:I
    .local v8, i:I
    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 830
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_40

    move-result v0

    if-nez v0, :cond_2d

    .line 834
    :cond_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v10

    .end local v7           #i:I
    .end local v9           #index:I
    .end local v10           #names:[Ljava/lang/String;
    :catchall_40
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 148
    sget-object v1, Lcom/sprint/w/installer/util/Util;->sContentBaseUrl:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 149
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "contentBaseUrl"

    const v2, 0x7f060107

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprint/w/installer/util/Util;->sContentBaseUrl:Ljava/lang/String;

    .line 152
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_17
    sget-object v1, Lcom/sprint/w/installer/util/Util;->sContentBaseUrl:Ljava/lang/String;

    return-object v1
.end method

.method public static getStoredDownloadBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 140
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "downloadBaseUrl"

    const v2, 0x7f060109

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStoredFolderId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 576
    sget-object v1, Lcom/sprint/w/installer/util/Util;->sFolderId:Ljava/lang/String;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/sprint/w/installer/util/Util;->sFolderId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 577
    :cond_12
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 578
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "folderId"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrierFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprint/w/installer/util/Util;->sFolderId:Ljava/lang/String;

    .line 580
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_22
    sget-object v1, Lcom/sprint/w/installer/util/Util;->sFolderId:Ljava/lang/String;

    return-object v1
.end method

.method public static getStoredMetaBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 165
    sget-object v1, Lcom/sprint/w/installer/util/Util;->sMetaBaseUrl:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 166
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "metaBaseUrl"

    const v2, 0x7f060108

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprint/w/installer/util/Util;->sMetaBaseUrl:Ljava/lang/String;

    .line 169
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_17
    sget-object v1, Lcom/sprint/w/installer/util/Util;->sMetaBaseUrl:Ljava/lang/String;

    return-object v1
.end method

.method public static getStoredUaProf(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    .line 239
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v4, "uaProfUrl"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, uaProf:Ljava/lang/String;
    if-nez v3, :cond_34

    .line 243
    :try_start_d
    new-instance v1, Lcom/sprint/internal/SystemProperties;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, sysprops:Lcom/sprint/internal/SystemProperties;
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    sget-object v4, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UAPROF From Properties:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_34} :catch_5c

    .line 251
    .end local v1           #sysprops:Lcom/sprint/internal/SystemProperties;
    :cond_34
    :goto_34
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_43

    .line 252
    :cond_3c
    const v4, 0x7f060106

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 254
    :cond_43
    sget-object v4, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uaProf:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 256
    return-object v3

    .line 247
    :catch_5c
    move-exception v2

    .line 248
    .local v2, t:Ljava/lang/Throwable;
    sget-object v4, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Can\'t read UAProf URL from SystemProperties"

    invoke-virtual {v4, v5, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34
.end method

.method public static getUaProfile()Ljava/lang/String;
    .registers 3

    .prologue
    .line 391
    sget-object v0, Lcom/sprint/w/installer/util/Util;->sUaProfile:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sprint/w/installer/util/Util;->sUaProfile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 392
    :cond_c
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->getStoredUaProf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/util/Util;->sUaProfile:Ljava/lang/String;

    .line 394
    :cond_16
    sget-object v0, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPROF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sprint/w/installer/util/Util;->sUaProfile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/sprint/w/installer/util/Util;->sUaProfile:Ljava/lang/String;

    return-object v0
.end method

.method public static getUniquePackCount(Landroid/content/Context;)I
    .registers 9
    .parameter "c"

    .prologue
    .line 662
    const/4 v6, 0x0

    .line 663
    .local v6, count:I
    const/4 v7, 0x0

    .line 664
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 666
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "srcUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 669
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v6, v1

    .line 670
    if-eqz v7, :cond_2c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 671
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 675
    :cond_2c
    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "packId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "installIntent"

    aput-object v4, v2, v3

    const-string v3, "installIntent NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 679
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v6, v1

    .line 680
    if-eqz v7, :cond_58

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_58

    .line 681
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_58
    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_DOWNLOADS:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "packId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "percentComplete"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "filepath"

    aput-object v4, v2, v3

    const-string v3, "percentComplete < 100"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 688
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v6, v1

    .line 689
    if-eqz v7, :cond_89

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_89

    .line 690
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_89
    add-int/lit8 v1, v6, 0x1

    return v1
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f06012c

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZoneIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "context"

    .prologue
    .line 1105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 1107
    .local v5, scale:F
    const/high16 v7, 0x4240

    mul-float/2addr v7, v5

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 1108
    .local v6, scaleHeightAndWidth:I
    const/4 v1, 0x0

    .line 1109
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1110
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/sprint/w/installer/util/Util;->getZoneInfo(Landroid/content/pm/PackageManager;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1111
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_46

    .line 1113
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_46

    move-object v7, v1

    .line 1115
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1116
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v6, :cond_46

    .line 1117
    const/4 v7, 0x1

    invoke-static {v0, v6, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1118
    .local v4, resizedBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1119
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1123
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #resizedBitmap:Landroid/graphics/Bitmap;
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    :cond_46
    return-object v1
.end method

.method private static getZoneInfo(Landroid/content/pm/PackageManager;)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .parameter "packageManager"

    .prologue
    const/4 v9, 0x2

    .line 983
    sget-object v6, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Get Zone Info"

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 985
    const/4 v2, 0x0

    .line 986
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sprint.zone.ACTION_CUSTOMER_CARE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    .local v3, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 988
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_4b

    .line 989
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 990
    .local v5, zone_package:Ljava/lang/String;
    sget-object v6, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Try to find Zone resources for package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 992
    const/16 v6, 0x80

    :try_start_37
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 993
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_3e} :catch_43

    move-result v6

    if-eq v6, v9, :cond_4b

    move-object v6, v2

    .line 1018
    .end local v5           #zone_package:Ljava/lang/String;
    :goto_42
    return-object v6

    .line 996
    .restart local v5       #zone_package:Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 997
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Zone Care Intent not found"

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1001
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #zone_package:Ljava/lang/String;
    :cond_4b
    sget-object v6, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Get Zone Info - Intent resolve failed."

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1003
    :try_start_52
    const-string v6, "com.sprint.zone"

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1004
    const-string v6, "com.sprint.zone"

    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_5f} :catch_64

    move-result v6

    if-eq v6, v9, :cond_7f

    move-object v6, v2

    .line 1005
    goto :goto_42

    .line 1007
    :catch_64
    move-exception v0

    .line 1009
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_65
    const-string v6, "com.sprint.dsa"

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1010
    const-string v6, "com.sprint.dsa"

    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_72} :catch_77

    move-result v6

    if-eq v6, v9, :cond_7f

    move-object v6, v2

    .line 1011
    goto :goto_42

    .line 1013
    :catch_77
    move-exception v1

    .line 1014
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Zone application is not found - defaulting to Call Care"

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1018
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7f
    const/4 v6, 0x0

    goto :goto_42
.end method

.method public static getZoneLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .parameter "context"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 1048
    sget-object v9, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Get Zone Label"

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1051
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 1052
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sprint.zone.ACTION_CUSTOMER_CARE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v6, v5, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1054
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_6f

    .line 1055
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1056
    .local v8, zone_package:Ljava/lang/String;
    sget-object v9, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Try to find Zone resources for package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1058
    const/16 v9, 0x80

    :try_start_3b
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1059
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_6f

    .line 1060
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_55

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_5e

    .line 1061
    :cond_55
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1101
    .end local v8           #zone_package:Ljava/lang/String;
    :goto_5d
    return-object v9

    .line 1063
    .restart local v8       #zone_package:Ljava/lang/String;
    :cond_5e
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_65} :catch_67

    move-result-object v9

    goto :goto_5d

    .line 1066
    :catch_67
    move-exception v1

    .line 1067
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Zone Care Intent not found"

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1071
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #zone_package:Ljava/lang/String;
    :cond_6f
    sget-object v9, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Get Zone Info - Intent resolve failed."

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1073
    :try_start_76
    const-string v9, "com.sprint.zone"

    const/16 v10, 0x80

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1074
    const-string v9, "com.sprint.zone"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_f7

    .line 1075
    const-string v9, "com.sprint.zone"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1076
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1077
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_a1

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_aa

    .line 1078
    :cond_a1
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5d

    .line 1080
    :cond_aa
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_af
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_76 .. :try_end_af} :catch_b1

    move-result-object v9

    goto :goto_5d

    .line 1083
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #i:Landroid/content/Intent;
    :catch_b1
    move-exception v1

    .line 1085
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_b2
    const-string v9, "com.sprint.dsa"

    const/16 v10, 0x80

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1086
    const-string v9, "com.sprint.dsa"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_f7

    .line 1088
    const-string v9, "com.sprint.dsa"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1089
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1090
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_dd

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_e7

    .line 1091
    :cond_dd
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5d

    .line 1093
    :cond_e7
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_ec
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b2 .. :try_end_ec} :catch_ef

    move-result-object v9

    goto/16 :goto_5d

    .line 1096
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #i:Landroid/content/Intent;
    :catch_ef
    move-exception v2

    .line 1097
    .local v2, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Zone application is not found - defaulting to Call Care"

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1101
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_f7
    const/4 v9, 0x0

    goto/16 :goto_5d
.end method

.method public static initAndLoadDefaultHome(Landroid/content/Context;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 590
    new-instance v0, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v0}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 591
    .local v0, info:Lcom/sprint/w/installer/PackInfo;
    const-string v1, "HOME"

    iput-object v1, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 592
    const v1, 0x7f06007d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 593
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sprint/w/installer/PackInfo;->saveActivePackInfo(Landroid/content/Context;Lcom/sprint/w/installer/PackInfo;Z)V

    .line 595
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->startHomeScreen(Landroid/content/Context;)V

    .line 597
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sprint/w/installer/WallpaperCaptureService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 598
    return-void
.end method

.method public static isAnyDataNetworkAvailable(Landroid/content/Context;)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 792
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 793
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 794
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 770
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 771
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 772
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isFirstLaunch()Z
    .registers 3

    .prologue
    .line 211
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "firstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isMeidEmpty()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 500
    :try_start_2
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 501
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, meid:Ljava/lang/String;
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_42

    const-string v5, "00000000000000"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    const-string v5, "B0000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_42

    const-string v5, "17600000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_42

    const-string v5, "B0000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_42

    const-string v5, "17600000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 503
    :cond_42
    sget-object v5, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v6, "Skip HFA by default."

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 504
    sget-object v5, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "M: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 514
    .end local v1           #meid:Ljava/lang/String;
    :cond_61
    :goto_61
    return v3

    .line 507
    .restart local v1       #meid:Ljava/lang/String;
    :cond_62
    sget-object v5, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "M length is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_81} :catch_86

    move-result v5

    if-eqz v5, :cond_61

    move v3, v4

    goto :goto_61

    .line 511
    .end local v1           #meid:Ljava/lang/String;
    :catch_86
    move-exception v2

    .line 512
    .local v2, t:Ljava/lang/Throwable;
    sget-object v3, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "iM Error getting SystemProperties"

    invoke-virtual {v3, v5, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 514
    goto :goto_61
.end method

.method public static isMobileNetworkAvailable(Landroid/content/Context;)Z
    .registers 5
    .parameter "c"

    .prologue
    .line 755
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 756
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 757
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1d

    :cond_1b
    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static isMotoMB855()Z
    .registers 2

    .prologue
    .line 1168
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MB855"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .parameter "c"
    .parameter "packId"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v8

    const-string v3, "id=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 637
    .local v6, cur:Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    move-result v0

    if-lez v0, :cond_24

    move v0, v7

    .line 639
    :goto_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_24
    move v0, v8

    .line 637
    goto :goto_20

    .line 639
    :catchall_26
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isPrepaid()Z
    .registers 2

    .prologue
    .line 925
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Virgin Mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isProvisioningComplete()Z
    .registers 10

    .prologue
    const/4 v9, 0x6

    const/4 v5, 0x0

    .line 466
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, nai:Ljava/lang/String;
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_47

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "@hcm.sprintpcs.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    const/4 v1, 0x1

    .line 478
    .local v1, isProvisioned:Z
    :goto_1b
    const/4 v2, 0x0

    .line 480
    .local v2, isVirgin:Z
    :try_start_1c
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.telespree.android.client"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_2a} :catch_49

    .line 481
    const/4 v2, 0x1

    .line 487
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_46

    .line 488
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getMdn()Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, sMdn:Ljava/lang/String;
    if-eqz v4, :cond_45

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_45

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "000000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 490
    :cond_45
    const/4 v1, 0x0

    .line 495
    .end local v4           #sMdn:Ljava/lang/String;
    :cond_46
    :goto_46
    return v1

    .end local v1           #isProvisioned:Z
    .end local v2           #isVirgin:Z
    :cond_47
    move v1, v5

    .line 473
    goto :goto_1b

    .line 482
    .restart local v1       #isProvisioned:Z
    .restart local v2       #isVirgin:Z
    :catch_49
    move-exception v0

    .line 483
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Virgin Mobile"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 484
    const/4 v2, 0x1

    goto :goto_2b

    .line 492
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #sMdn:Ljava/lang/String;
    :cond_58
    const/4 v1, 0x1

    goto :goto_46
.end method

.method public static isPsiPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .parameter "c"
    .parameter "psiId"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v8

    const-string v3, "srcUrl=?"

    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "psi://content/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 650
    .local v6, cur:Landroid/database/Cursor;
    :try_start_2c
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_39

    move-result v0

    if-lez v0, :cond_37

    move v0, v7

    .line 652
    :goto_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_37
    move v0, v8

    .line 650
    goto :goto_33

    .line 652
    :catchall_39
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isSprintCarrier()Z
    .registers 2

    .prologue
    .line 912
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUseMagForUri(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 184
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Virgin Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 187
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vm.sprintpcs.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 189
    :goto_1e
    return v1

    :cond_1f
    const-string v1, "useMag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1e
.end method

.method public static isUsingMag()Z
    .registers 3

    .prologue
    .line 179
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "useMag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isVoicemailInstalled()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "newVoicemailInstalled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public static launchZoneApp(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 1023
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.zone.ACTION_CUSTOMER_CARE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.sprint.zone.source"

    const-string v5, "com.sprint.w.installer"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    .line 1045
    .end local v3           #intent:Landroid/content/Intent;
    :goto_11
    return-void

    .line 1026
    :catch_12
    move-exception v1

    .line 1028
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1029
    .local v0, ActIntent:Landroid/content/Intent;
    const-string v4, "com.sprint.zone.DSA_ACTIVITY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const-string v4, "com.sprint.zone"

    const-string v5, "com.sprint.zone.PageMain"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const-string v4, "vnd.sprint.zone/vnd.sprint.zone.main"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string v4, "com.sprint.zone.source"

    const-string v5, "com.sprint.w.installer"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_33} :catch_34

    goto :goto_11

    .line 1034
    .end local v0           #ActIntent:Landroid/content/Intent;
    :catch_34
    move-exception v2

    .line 1035
    .local v2, ex1:Landroid/content/ActivityNotFoundException;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1036
    .restart local v0       #ActIntent:Landroid/content/Intent;
    const-string v4, "com.sprint.dsa"

    const-string v5, "com.sprint.dsa.PageMain"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const-string v4, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    const-string v4, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const-string v4, "com.sprint.zone.source"

    const-string v5, "com.sprint.w.installer"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method public static loadUaProfSuggestions()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 267
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 268
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v10, "uaProfSuggestions"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, suggst:Ljava/lang/String;
    if-nez v7, :cond_18

    .line 270
    const v10, 0x7f060106

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 272
    :cond_18
    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, urls:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_26
    if-ge v3, v4, :cond_58

    aget-object v8, v0, v3

    .line 275
    .local v8, url:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 277
    :try_start_32
    const-string v10, "UTF-8"

    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_3b} :catch_3e

    .line 274
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 278
    :catch_3e
    move-exception v2

    .line 279
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    sget-object v10, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed decode url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_3b

    .line 283
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .end local v8           #url:Ljava/lang/String;
    :cond_58
    return-object v5
.end method

.method public static old_getUniquePackCount(Landroid/content/Context;)I
    .registers 20
    .parameter "c"

    .prologue
    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 704
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "srcUrl"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 707
    .local v8, cur:Landroid/database/Cursor;
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 708
    .local v17, uniqueIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 709
    const-string v2, "id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 710
    .local v12, idxId:I
    const-string v2, "srcUrl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 712
    .local v13, idxSrcUrl:I
    :cond_31
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 713
    .local v11, id:Ljava/lang/String;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 714
    .local v18, url:Ljava/lang/String;
    if-eqz v18, :cond_76

    const-string v2, "psi://content/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 715
    const-string v2, "psi://content/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 719
    :goto_56
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_31

    .line 721
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #idxId:I
    .end local v13           #idxSrcUrl:I
    .end local v18           #url:Ljava/lang/String;
    :cond_5c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 722
    invoke-static/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v15

    .line 723
    .local v15, rtiPacks:[Lcom/sprint/w/installer/psi/ServicePack;
    move-object v7, v15

    .local v7, arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    array-length v14, v7

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_66
    if-ge v10, v14, :cond_7c

    aget-object v16, v7, v10

    .line 724
    .local v16, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/lit8 v10, v10, 0x1

    goto :goto_66

    .line 717
    .end local v7           #arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v15           #rtiPacks:[Lcom/sprint/w/installer/psi/ServicePack;
    .end local v16           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v11       #id:Ljava/lang/String;
    .restart local v12       #idxId:I
    .restart local v13       #idxSrcUrl:I
    .restart local v18       #url:Ljava/lang/String;
    :cond_76
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 727
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #idxId:I
    .end local v13           #idxSrcUrl:I
    .end local v18           #url:Ljava/lang/String;
    .restart local v7       #arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v10       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #rtiPacks:[Lcom/sprint/w/installer/psi/ServicePack;
    :cond_7c
    invoke-static/range {p0 .. p0}, Lcom/sprint/w/installer/DownloadService;->getDownloadingPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v9

    .line 728
    .local v9, dlPacks:[Lcom/sprint/w/installer/psi/ServicePack;
    move-object v7, v9

    array-length v14, v7

    const/4 v10, 0x0

    :goto_83
    if-ge v10, v14, :cond_93

    aget-object v16, v7, v10

    .line 729
    .restart local v16       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-virtual/range {v16 .. v16}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 728
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    .line 731
    .end local v16           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_93
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static pathToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "spUrl"
    .parameter "path"

    .prologue
    .line 105
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 111
    .end local p1
    :cond_10
    :goto_10
    return-object p1

    .line 108
    .restart local p1
    :cond_11
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 109
    .local v2, spUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 110
    .local v1, lastLen:I
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, baseUri:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_10
.end method

.method public static readBytesFromJar(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[B
    .registers 11
    .parameter "f"
    .parameter "entry"

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 303
    .local v0, bytes:[B
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 305
    .local v3, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 306
    .local v5, offset:I
    array-length v4, v0

    .line 307
    .local v4, length:I
    :goto_d
    if-eqz v4, :cond_16

    .line 308
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_1a

    move-result v1

    .line 309
    .local v1, c:I
    const/4 v6, -0x1

    if-ne v6, v1, :cond_17

    .line 319
    .end local v0           #bytes:[B
    .end local v1           #c:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #length:I
    .end local v5           #offset:I
    :cond_16
    :goto_16
    return-object v0

    .line 312
    .restart local v0       #bytes:[B
    .restart local v1       #c:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #length:I
    .restart local v5       #offset:I
    :cond_17
    add-int/2addr v5, v1

    .line 313
    sub-int/2addr v4, v1

    goto :goto_d

    .line 316
    .end local v0           #bytes:[B
    .end local v1           #c:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #length:I
    .end local v5           #offset:I
    :catch_1a
    move-exception v2

    .line 317
    .local v2, e:Ljava/lang/Exception;
    sget-object v6, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading file from zip: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static ringtonePathToLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "srcPath"
    .parameter "namespacePrefix"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveUaProfSuggestions(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 288
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 289
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, ""

    .line 290
    .local v4, suggst:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 292
    .local v5, url:Ljava/lang/String;
    :try_start_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_36} :catch_38

    move-result-object v4

    goto :goto_e

    .line 293
    :catch_38
    move-exception v1

    .line 294
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed encode url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_e

    .line 297
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v5           #url:Ljava/lang/String;
    :cond_52
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "uaProfSuggestions"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    return-void
.end method

.method public static setApplication(Landroid/app/Application;)V
    .registers 1
    .parameter "app"

    .prologue
    .line 372
    sput-object p0, Lcom/sprint/w/installer/util/Util;->sApp:Landroid/app/Application;

    .line 373
    return-void
.end method

.method public static setFirstLaunch(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 216
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstLaunch"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    return-void
.end method

.method public static setPackNamespacePrefix(Lcom/sprint/w/installer/PackInfo;)V
    .registers 3
    .parameter "pack"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, hash:I
    iget-object v1, p0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 127
    iget-object v1, p0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 133
    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/PackInfo;->namespacePrefix:Ljava/lang/String;

    .line 134
    return-void

    .line 128
    :cond_12
    iget-object v1, p0, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 129
    iget-object v1, p0, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    .line 131
    :cond_1d
    sget-object v1, Lcom/sprint/w/installer/util/Util;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_b
.end method

.method public static setStoredContentBaseUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "url"

    .prologue
    .line 156
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "contentBaseUrl"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    sput-object p1, Lcom/sprint/w/installer/util/Util;->sContentBaseUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public static setStoredFolderId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "folderId"

    .prologue
    .line 584
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 585
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "folderId"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 586
    sput-object p1, Lcom/sprint/w/installer/util/Util;->sFolderId:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public static setStoredMetaBaseUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "url"

    .prologue
    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "metaBaseUrl"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    sput-object p1, Lcom/sprint/w/installer/util/Util;->sMetaBaseUrl:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public static setStoredUaProf(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "url"

    .prologue
    .line 260
    sput-object p1, Lcom/sprint/w/installer/util/Util;->sUaProfile:Ljava/lang/String;

    .line 261
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 262
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "uaProfUrl"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method public static setUsingMag(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 194
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useMag"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method

.method public static setVoicemailInstalled(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 203
    if-eqz p0, :cond_1a

    .line 204
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "newVoicemailInstalled"

    const/16 v2, 0x66

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    :goto_19
    return-void

    .line 206
    :cond_1a
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "newVoicemailInstalled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_19
.end method

.method public static startHomeScreen(Landroid/content/Context;)V
    .registers 10
    .parameter "c"

    .prologue
    .line 606
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sprint.w.prefact"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_22

    .line 607
    const/4 v8, 0x0

    .line 611
    .local v8, prefActNotInstalled:Z
    :goto_b
    if-eqz v8, :cond_25

    .line 613
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const/high16 v0, 0x1040

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 616
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 628
    .end local v7           #intent:Landroid/content/Intent;
    :goto_21
    return-void

    .line 608
    .end local v8           #prefActNotInstalled:Z
    :catch_22
    move-exception v6

    .line 609
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x1

    .restart local v8       #prefActNotInstalled:Z
    goto :goto_b

    .line 619
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 620
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 621
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 622
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 623
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v3, sampleIntent:Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->getLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sprint/w/installer/env/LauncherStrategy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sprint/w/installer/PackInstaller;->setAsPreferred(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;Z)V

    goto :goto_21
.end method

.method public static updateLastUpdateCheckTime(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 233
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    return-void
.end method

.method public static waitForNetwork(Landroid/content/Context;J)Z
    .registers 11
    .parameter "c"
    .parameter "delayMs"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 736
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 737
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v1, v4, p1

    .line 739
    .local v1, end:J
    :cond_10
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_1f

    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 751
    :goto_1d
    const/4 v4, 0x0

    :goto_1e
    return v4

    .line 742
    :cond_1f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 743
    .local v3, ni:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 744
    const/4 v4, 0x1

    goto :goto_1e

    .line 746
    :cond_2d
    cmp-long v4, p1, v6

    if-lez v4, :cond_3b

    .line 747
    sget-object v4, Lcom/sprint/w/installer/util/Util;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Network not available -- waiting..."

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 748
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 750
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gtz v4, :cond_10

    goto :goto_1d
.end method
