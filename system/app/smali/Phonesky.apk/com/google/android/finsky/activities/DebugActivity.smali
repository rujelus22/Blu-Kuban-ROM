.class public Lcom/google/android/finsky/activities/DebugActivity;
.super Landroid/preference/PreferenceActivity;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;,
        Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;,
        Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;
    }
.end annotation


# static fields
.field private static final ORIGINAL_DFE_URL:Ljava/lang/String;

.field private static final ORIGINAL_VENDING_API_URL:Ljava/lang/String;


# instance fields
.field private final mCarrierHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
            "<",
            "Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironmentHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
            "<",
            "Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;

    .line 57
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-string v1, "api/ApiRequest"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_VENDING_API_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 355
    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/DebugActivity$3;-><init>(Lcom/google/android/finsky/activities/DebugActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mCarrierHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    .line 380
    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/DebugActivity$4;-><init>(Lcom/google/android/finsky/activities/DebugActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mEnvironmentHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DebugActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DebugActivity;Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->selectCarrier(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DebugActivity;Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->selectEnvironment(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V

    return-void
.end method

.method private clearCacheAndQuit()V
    .registers 3

    .prologue
    .line 337
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/DebugActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DebugActivity$2;-><init>(Lcom/google/android/finsky/activities/DebugActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method private exportDatabase(Ljava/lang/String;)V
    .registers 13
    .parameter "name"

    .prologue
    const/4 v10, 0x0

    .line 152
    const/4 v7, 0x0

    .line 154
    .local v7, exported:Z
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 155
    .local v8, inputFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 156
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v9, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v9, outputFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 159
    .local v0, input:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 161
    .local v5, output:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 162
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 163
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3c} :catch_5a

    .line 164
    const/4 v7, 0x1

    .line 170
    .end local v0           #input:Ljava/nio/channels/FileChannel;
    .end local v5           #output:Ljava/nio/channels/FileChannel;
    .end local v8           #inputFile:Ljava/io/File;
    .end local v9           #outputFile:Ljava/io/File;
    :cond_3d
    :goto_3d
    if-nez v7, :cond_59

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to export "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 173
    :cond_59
    return-void

    .line 166
    :catch_5a
    move-exception v6

    .line 167
    .local v6, e:Ljava/io/IOException;
    const-string v1, "Unable to export: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d
.end method

.method private getOptionsFromCsv(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;)I
    .registers 20
    .parameter "filename"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p3, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, helper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;,"Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper<TT;>;"
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;->fromStringList([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v11, "Default"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const/4 v1, 0x0

    .line 252
    .local v1, checkedIndex:I
    const/4 v9, 0x0

    .line 254
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_15
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 255
    .local v4, external:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    .local v2, csvFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_34

    .line 260
    new-instance v2, Ljava/io/File;

    .end local v2           #csvFile:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v12, "Download"

    invoke-direct {v11, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-direct {v2, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .restart local v2       #csvFile:Ljava/io/File;
    :cond_34
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3e} :catch_c7

    .line 264
    .end local v9           #reader:Ljava/io/BufferedReader;
    .local v10, reader:Ljava/io/BufferedReader;
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_af

    .line 265
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 266
    const-string v11, "#"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3e

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3e

    .line 270
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, fields:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v8, v5, v11

    .line 274
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_90

    .line 275
    const-string v11, "Skipping an item from csv without a name"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6d
    .catchall {:try_start_3e .. :try_end_6d} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6d} :catch_6e

    goto :goto_3e

    .line 287
    .end local v5           #fields:[Ljava/lang/String;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    :catch_6e
    move-exception v3

    move-object v9, v10

    .line 288
    .end local v2           #csvFile:Ljava/io/File;
    .end local v4           #external:Ljava/io/File;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v3, e:Ljava/lang/Exception;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :goto_70
    :try_start_70
    const-string v11, "Unable to build selector: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    const-string v11, "Unable to build selector."

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V
    :try_end_89
    .catchall {:try_start_70 .. :try_end_89} :catchall_b9

    .line 290
    const/4 v1, 0x0

    .line 292
    if-eqz v9, :cond_8f

    .line 294
    :try_start_8c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_c0

    .line 300
    .end local v3           #e:Ljava/lang/Exception;
    :cond_8f
    :goto_8f
    return v1

    .line 279
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v2       #csvFile:Ljava/io/File;
    .restart local v4       #external:Ljava/io/File;
    .restart local v5       #fields:[Ljava/lang/String;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_90
    :try_start_90
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;->fromStringList([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 281
    .local v6, item:Ljava/lang/Object;,"TT;"
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;->isSelected(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 284
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I
    :try_end_ab
    .catchall {:try_start_90 .. :try_end_ab} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_ab} :catch_6e

    move-result v11

    add-int/lit8 v1, v11, -0x1

    goto :goto_3e

    .line 292
    .end local v5           #fields:[Ljava/lang/String;
    .end local v6           #item:Ljava/lang/Object;,"TT;"
    .end local v8           #name:Ljava/lang/String;
    :cond_af
    if-eqz v10, :cond_c9

    .line 294
    :try_start_b1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b6

    move-object v9, v10

    .line 297
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    goto :goto_8f

    .line 295
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catch_b6
    move-exception v11

    move-object v9, v10

    .line 297
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    goto :goto_8f

    .line 292
    .end local v2           #csvFile:Ljava/io/File;
    .end local v4           #external:Ljava/io/File;
    .end local v7           #line:Ljava/lang/String;
    :catchall_b9
    move-exception v11

    :goto_ba
    if-eqz v9, :cond_bf

    .line 294
    :try_start_bc
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c2

    .line 297
    :cond_bf
    :goto_bf
    throw v11

    .line 295
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_c0
    move-exception v11

    goto :goto_8f

    .end local v3           #e:Ljava/lang/Exception;
    :catch_c2
    move-exception v12

    goto :goto_bf

    .line 292
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v2       #csvFile:Ljava/io/File;
    .restart local v4       #external:Ljava/io/File;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catchall_c4
    move-exception v11

    move-object v9, v10

    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    goto :goto_ba

    .line 287
    .end local v2           #csvFile:Ljava/io/File;
    .end local v4           #external:Ljava/io/File;
    :catch_c7
    move-exception v3

    goto :goto_70

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v2       #csvFile:Ljava/io/File;
    .restart local v4       #external:Ljava/io/File;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_c9
    move-object v9, v10

    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    goto :goto_8f
.end method

.method private override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, setting:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<+Ljava/lang/Object;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DebugActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method private selectCarrier(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V
    .registers 4
    .parameter "newCarrier"

    .prologue
    .line 326
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->ipCountryOverride:Lcom/google/android/finsky/config/GservicesValue;

    iget-object v1, p1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->countryCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->mccMncOverride:Lcom/google/android/finsky/config/GservicesValue;

    iget-object v1, p1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->simCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private selectEnvironment(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V
    .registers 10
    .parameter "newEnvironment"

    .prologue
    const/4 v5, 0x0

    .line 304
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 306
    .local v3, urlRewrite:Ljava/lang/String;
    const/4 v4, 0x0

    .line 307
    .local v4, vendingUrlRewrite:Ljava/lang/String;
    const/4 v0, 0x0

    .line 308
    .local v0, checkoutAuthTokenType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 309
    .local v1, checkoutEscrowUrl:Ljava/lang/String;
    if-eqz p1, :cond_1c

    .line 310
    iget-object v6, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->dfeBaseUrl:Ljava/lang/String;

    if-nez v6, :cond_41

    move-object v3, v5

    .line 312
    :goto_13
    iget-object v6, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->vendingBaseUrl:Ljava/lang/String;

    if-nez v6, :cond_5d

    move-object v4, v5

    .line 314
    :goto_18
    iget-object v0, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->checkoutTokenType:Ljava/lang/String;

    .line 315
    iget-object v1, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->escrowUrl:Ljava/lang/String;

    .line 317
    :cond_1c
    const-string v5, "url:finsky_dfe_url"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v5, "url:vending_machine_ssl_url"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v5, "url:licensing_url"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    sget-object v5, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    sget-object v5, Lcom/google/android/finsky/config/G;->checkoutEscrowUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/DebugActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void

    .line 310
    :cond_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rewrite "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->dfeBaseUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    .line 312
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_VENDING_API_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rewrite "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->vendingBaseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_18
.end method

.method private setupImageDebugging()V
    .registers 3

    .prologue
    .line 176
    const-string v1, "image_debugging"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 177
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    return-void
.end method

.method private setupShowStagingMerchData()V
    .registers 3

    .prologue
    .line 186
    const-string v1, "show_staging_data"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 187
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    return-void
.end method

.method private setupSkipDfeCache()V
    .registers 3

    .prologue
    .line 181
    const-string v1, "skip_all_caches"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 182
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    return-void
.end method

.method private setupVolleyLogging()V
    .registers 4

    .prologue
    .line 191
    const-string v1, "verbose_volley_logging"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 192
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    const-string v1, "Volley"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 195
    return-void
.end method


# virtual methods
.method public buildSelectCountryDialog()V
    .registers 5

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mCarrierHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    const-string v1, "carriers.csv"

    const-string v2, "Switching country..."

    const v3, 0x7f070272

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DebugActivity;->buildSelectorFromCsv(Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method public buildSelectEnvironmentDialog()V
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mEnvironmentHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    const-string v1, "marketenvs.csv"

    const-string v2, "Switching environment..."

    const v3, 0x7f070271

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DebugActivity;->buildSelectorFromCsv(Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method public buildSelectorFromCsv(Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter
    .parameter "filename"
    .parameter "toastText"
    .parameter "dialogTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, helper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;,"Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper<TT;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 216
    .local v3, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 217
    .local v5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v3, v5, p1}, Lcom/google/android/finsky/activities/DebugActivity;->getOptionsFromCsv(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;)I

    move-result v1

    .line 220
    .local v1, checkedIndex:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v2, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 225
    .local v4, optionNames:[Ljava/lang/String;
    new-instance v6, Lcom/google/android/finsky/activities/DebugActivity$1;

    invoke-direct {v6, p0, p3, p1, v3}, Lcom/google/android/finsky/activities/DebugActivity$1;-><init>(Lcom/google/android/finsky/activities/DebugActivity;Ljava/lang/String;Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/util/List;)V

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 243
    .local v0, builtDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget-object v0, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->finish()V

    .line 103
    :goto_14
    return-void

    .line 97
    :cond_15
    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DebugActivity;->addPreferencesFromResource(I)V

    .line 99
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupImageDebugging()V

    .line 100
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupSkipDfeCache()V

    .line 101
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupShowStagingMerchData()V

    .line 102
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupVolleyLogging()V

    goto :goto_14
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 107
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, key:Ljava/lang/String;
    const-string v1, "image_debugging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 109
    sget-object v4, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    sget-object v1, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2c

    move v1, v2

    :goto_20
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    .line 148
    :goto_2b
    return v2

    :cond_2c
    move v1, v3

    .line 109
    goto :goto_20

    .line 111
    :cond_2e
    const-string v1, "skip_all_caches"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 112
    sget-object v4, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_56

    :goto_46
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    .line 148
    :cond_51
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_2b

    :cond_56
    move v2, v3

    .line 112
    goto :goto_46

    .line 114
    :cond_58
    const-string v1, "environments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->buildSelectEnvironmentDialog()V

    goto :goto_2b

    .line 117
    :cond_64
    const-string v1, "clear_cache"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 118
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    goto :goto_2b

    .line 120
    :cond_70
    const-string v1, "show_staging_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 121
    sget-object v4, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_89

    move v3, v2

    :cond_89
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    goto :goto_2b

    .line 125
    :cond_98
    const-string v1, "reset_all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 126
    sget-object v1, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    const-string v3, "false"

    invoke-direct {p0, v1, v3}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    invoke-direct {v1, v4, v4, v4, v4}, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->selectEnvironment(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V

    .line 128
    new-instance v1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;

    invoke-direct {v1, v4, v4, v4}, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->selectCarrier(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V

    .line 129
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    goto/16 :goto_2b

    .line 131
    :cond_bc
    const-string v1, "country"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->buildSelectCountryDialog()V

    goto/16 :goto_2b

    .line 134
    :cond_c9
    const-string v1, "export_library"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 135
    const-string v1, "localappstate.db"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->exportDatabase(Ljava/lang/String;)V

    .line 136
    const-string v1, "library.db"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->exportDatabase(Ljava/lang/String;)V

    .line 138
    const-string v1, "Finished database exports"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2b

    .line 140
    :cond_e6
    const-string v1, "dump_library_state"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 141
    const-string v1, "FinskyLibrary"

    const-string v4, "------------ LIBRARY DUMP BEGIN"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/library/Libraries;->dumpState()V

    .line 143
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/library/LibraryReplicators;->dumpState()V

    .line 144
    const-string v1, "FinskyLibrary"

    const-string v4, "------------ LIBRARY DUMP END"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v1, "Library state dumped to logcat."

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2b
.end method
