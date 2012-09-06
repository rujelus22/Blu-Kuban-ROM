.class public final Lcom/google/android/youtube/core/utils/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/core/utils/Util;->a:Ljava/lang/String;

    .line 96
    :try_start_9
    const-class v1, Landroid/content/SharedPreferences$Editor;

    const-string v2, "apply"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_11} :catch_fa

    move-result-object v1

    .line 97
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_15} :catch_fd

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v5, :cond_101

    .line 103
    :goto_1a
    sput-object v0, Lcom/google/android/youtube/core/utils/Util;->b:Ljava/lang/reflect/Method;

    .line 439
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "mariannefaithfull"

    aput-object v2, v1, v4

    const-string v2, "sylver"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "ingrooves"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "davidbisbal"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "barryip"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "avantgarde"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TAPBackFromTheDead"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "mirandaMurphy"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "scarsonbroadway"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "staracademy6"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Metalblade1982"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "portishead"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "EdubbOnline"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "fabiano"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Nordman"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "UniversalTest"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "taiji"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "NIKP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "oranjuicejones"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "universalmusicmexico"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "hayleywestenra"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ryanbingham"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "SylviaMcNair"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "melissaetheridge"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "monacibuddisti"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "NolwennLeroy"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "paolobrera"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TAPUNWIGGED"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "TheDissociatives"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "emimusic"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "parlophone"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "capitolmusic"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "capitolrecords"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "virginrecords"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "mutechannel"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "muteusa"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/utils/Util;->c:Ljava/util/HashSet;

    return-void

    :catch_fa
    move-exception v1

    goto/16 :goto_1a

    :catch_fd
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1a

    :cond_101
    move-object v0, v1

    goto/16 :goto_1a
.end method

.method public static a(Ljava/lang/String;F)F
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 290
    if-eqz p0, :cond_b

    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_a} :catch_c

    move-result v0

    .line 292
    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 268
    if-eqz p0, :cond_a

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_b

    move-result p1

    .line 270
    :cond_a
    :goto_a
    return p1

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 251
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/utils/Util$StartupType;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 211
    const-string v0, "AnalyticsYouTubeApplicationVersion"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "AnalyticsYouTubeApplicationVersion"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 216
    if-nez v0, :cond_19

    .line 217
    sget-object v0, Lcom/google/android/youtube/core/utils/Util$StartupType;->FIRST_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    .line 221
    :goto_18
    return-object v0

    .line 218
    :cond_19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 219
    sget-object v0, Lcom/google/android/youtube/core/utils/Util$StartupType;->NORMAL_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    goto :goto_18

    .line 221
    :cond_22
    sget-object v0, Lcom/google/android/youtube/core/utils/Util$StartupType;->UPGRADE_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    goto :goto_18
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 116
    div-int/lit8 v0, p0, 0x3c

    .line 117
    div-int/lit8 v2, v0, 0x3c

    .line 118
    if-lez v2, :cond_9

    .line 119
    rem-int/lit8 v0, v0, 0x3c

    .line 121
    :cond_9
    rem-int/lit8 v1, p0, 0x3c

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_24

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3d

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_3d
    if-lez v2, :cond_61

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_60
    return-object v0

    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_60
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 260
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 614
    if-ltz p1, :cond_29

    const/4 v0, 0x1

    :goto_4
    const-string v2, "maxLength must be non-negative"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 615
    const-string v0, "defaultValue may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_2b

    :goto_10
    const-string v0, "[<>]"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_24

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    move v0, v1

    .line 614
    goto :goto_4

    :cond_2b
    move-object p2, p0

    goto :goto_10
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 587
    invoke-static {p0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 594
    :cond_a
    return-object v0

    .line 590
    :cond_b
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 591
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    .line 592
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 3
    .parameter

    .prologue
    .line 788
    sget-object v0, Lcom/google/android/youtube/core/utils/Util;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    .line 790
    :try_start_4
    sget-object v0, Lcom/google/android/youtube/core/utils/Util;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_c} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_d

    .line 800
    :goto_c
    return-void

    :catch_d
    move-exception v0

    .line 799
    :cond_e
    :goto_e
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    .line 796
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 707
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v1

    const-string v0, "name"

    aput-object v0, v2, v4

    .line 708
    const-string v1, "sqlite_master"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 710
    :cond_19
    :goto_19
    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 711
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 713
    const-string v3, "sqlite_sequence"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DROP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " IF EXISTS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_19 .. :try_end_49} :catchall_62

    move-result-object v0

    .line 717
    :try_start_4a
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_62
    .catch Landroid/database/SQLException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_19

    .line 718
    :catch_4e
    move-exception v2

    .line 719
    :try_start_4f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error executing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_4f .. :try_end_61} :catchall_62

    goto :goto_19

    .line 724
    :catchall_62
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 725
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 500
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_42

    const/4 v0, 0x1

    :goto_8
    const-string v2, "limit may not be <= 0"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 501
    const-string v0, "dirPath may not be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 502
    const-string v0, "suffix may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 505
    new-instance v2, Lcom/google/android/youtube/core/utils/af;

    invoke-direct {v2, p1}, Lcom/google/android/youtube/core/utils/af;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 512
    if-nez v4, :cond_44

    .line 553
    :cond_41
    :goto_41
    return-void

    :cond_42
    move v0, v1

    .line 500
    goto :goto_8

    .line 517
    :cond_44
    array-length v3, v4

    move v0, v1

    move v2, v1

    :goto_47
    if-ge v0, v3, :cond_56

    aget-object v5, v4, v0

    .line 518
    int-to-long v6, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long v5, v6, v8

    long-to-int v2, v5

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 520
    :cond_56
    int-to-long v5, v2

    cmp-long v0, v5, p2

    if-gez v0, :cond_7d

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dir is below limit, no need to shrink: [size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    goto :goto_41

    .line 524
    :cond_7d
    new-instance v0, Lcom/google/android/youtube/core/utils/ag;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/ag;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 540
    array-length v5, v4

    move v0, v1

    move v3, v1

    move v1, v2

    :goto_89
    if-ge v3, v5, :cond_41

    aget-object v6, v4, v3

    .line 541
    int-to-long v7, v1

    cmp-long v7, v7, p2

    if-ltz v7, :cond_a5

    .line 542
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 543
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 544
    int-to-long v9, v1

    sub-long v6, v9, v7

    long-to-int v1, v6

    .line 545
    add-int/lit8 v0, v0, 0x1

    .line 540
    :cond_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 548
    :cond_a5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dir shrunk: [deleted="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", newSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    goto/16 :goto_41
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "youtube:device_lowend"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 598
    if-eqz p0, :cond_7

    .line 599
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 601
    :goto_6
    return v0

    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Ljava/util/Date;)Z
    .registers 7
    .parameter

    .prologue
    .line 606
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static a(Landroid/graphics/Bitmap;)[B
    .registers 3
    .parameter

    .prologue
    .line 780
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 771
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 772
    const/16 v1, 0x50

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 773
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b()I
    .registers 3

    .prologue
    const/16 v0, 0x10

    .line 811
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 812
    if-ge v1, v0, :cond_11

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 815
    :goto_10
    return v0

    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_10
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 735
    if-nez p0, :cond_5

    move-object v0, v1

    .line 745
    :goto_4
    return-object v0

    .line 738
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 739
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 740
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 741
    const-string v3, "videos"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 742
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_2e
    move-object v0, v1

    goto :goto_4

    :cond_30
    move-object v0, v1

    .line 745
    goto :goto_4
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x1f4

    .line 640
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[<>]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ",;"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_28
    :goto_28
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 645
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 647
    const/4 v4, 0x2

    if-gt v4, v3, :cond_28

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_28

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v5, :cond_28

    .line 649
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 652
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_56
    return-object v0

    :cond_57
    const/4 v0, 0x0

    invoke-static {v0, v5, p2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_56
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter

    .prologue
    .line 315
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :try_start_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 329
    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    .line 324
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ltz v0, :cond_47

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 325
    :cond_47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_53
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_53} :catch_55

    move-result-object v0

    goto :goto_19

    .line 327
    :catch_55
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid RFC3339 date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 329
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-static {p0, p1, p2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 243
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "youtube:device_lowend"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 168
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 170
    if-nez v0, :cond_24

    move v0, v1

    .line 174
    :goto_1f
    return v0

    :pswitch_20
    move v0, v1

    .line 162
    goto :goto_1f

    :pswitch_22
    move v0, v2

    .line 164
    goto :goto_1f

    .line 173
    :cond_24
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 174
    const/16 v3, 0x167

    if-gt v0, v3, :cond_36

    move v0, v2

    goto :goto_1f

    :cond_36
    move v0, v1

    goto :goto_1f

    .line 160
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 194
    if-eqz v0, :cond_25

    .line 195
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    :goto_15
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_25
    move-object v0, v1

    goto :goto_f
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 357
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->i(Ljava/lang/String;)Landroid/net/Uri;

    .line 359
    return-object v0
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 829
    const-string v0, "nbx02"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 749
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 558
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 559
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    .line 562
    :goto_10
    return v0

    .line 560
    :catch_11
    move-exception v1

    .line 561
    const-string v2, "could not retrieve application version name"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static d(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 363
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->i(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 572
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 573
    const/4 v1, 0x2

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 479
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vevo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 484
    :cond_f
    :goto_f
    return v0

    .line 481
    :cond_10
    sget-object v1, Lcom/google/android/youtube/core/utils/Util;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 484
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 666
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 582
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 583
    const/4 v1, 0x4

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 673
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 759
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 761
    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 762
    if-eq v1, v0, :cond_19

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static h(Ljava/lang/String;)[B
    .registers 3
    .parameter

    .prologue
    .line 681
    :try_start_0
    const-string v0, "utf8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 682
    :catch_7
    move-exception v0

    .line 684
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static i(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 368
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_12

    .line 370
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Uri must have an absolute scheme"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_12
    return-object v0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 376
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 378
    :try_start_4
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_9} :catch_a

    .line 404
    :goto_9
    return-object p0

    .line 380
    :catch_a
    move-exception v0

    .line 385
    :try_start_b
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%,;:$&+=/@"

    invoke-static {v0, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%,;:$&+=/[]@?"

    invoke-static {v2, v3}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_38} :catch_3a

    move-object p0, v0

    .line 390
    goto :goto_9

    :catch_3a
    move-exception v0

    .line 396
    :try_start_3b
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ",;:$&+=/@"

    invoke-static {v0, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, ",;:$&+=/@[]?"

    invoke-static {v2, v3}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/net/URISyntaxException; {:try_start_3b .. :try_end_68} :catch_6a

    move-object p0, v0

    .line 401
    goto :goto_9

    .line 404
    :catch_6a
    move-exception v0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 659
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
