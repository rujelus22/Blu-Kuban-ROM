.class public Lcom/infraware/common/update/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/update/UpdateService$UpdateBinder;
    }
.end annotation


# static fields
.field public static final APK_FILE_NAME_FOR_INSTALL:Ljava/lang/String; = "APKFileNameForInstall"

.field public static final DOCMASTER_CONNECTION_ERROR:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_CONNECTION_ERROR"

.field public static final DOCMASTER_DISABLE_CONFIRM_VERSION:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_DISABLE_CONFIRM_VERSION"

.field public static final DOCMASTER_DOWNLOAD_COMPLETE:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_DOWNLOAD_COMPLETE"

.field public static final DOCMASTER_FILE_WRITE_ERROR:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_FILE_WRITE_ERROR"

.field public static final DOCMASTER_LATEST_VERSION:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

.field public static final DOCMASTER_NETWORK_ERROR:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

.field public static final DOCMASTER_UPDATE_AVAILABE:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_UPDATE_AVAILABE"

.field public static final DOCMASTER_USER_CANCEL:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_USER_CANCEL"

.field static final eXML_ANDROIDMAJORVERSION:I = 0x6

.field static final eXML_DEVICEINFO:I = 0x5

.field static final eXML_DOWNLOADURL:I = 0x4

.field static final eXML_FILENAME:I = 0x2

.field static final eXML_FILESIZE:I = 0x3

.field static final eXML_NONE:I = 0x0

.field static final eXML_VERSION:I = 0x1

.field static mstrCurAndroidMajorVersion:Ljava/lang/String;

.field static mstrCurVersion:Ljava/lang/String;

.field static mstrDeviceInfo:Ljava/lang/String;

.field static mstrDownloadURL:Ljava/lang/String;

.field static mstrFileName:Ljava/lang/String;

.field static mstrFileSize:Ljava/lang/String;

.field static mstrNewAndroidMajorVersion:Ljava/lang/String;

.field static mstrNewVersion:Ljava/lang/String;

.field private static parseVersion:Ljava/util/regex/Pattern;


# instance fields
.field private backgroundUpdate:Ljava/lang/Runnable;

.field private checkUpdateThread:Ljava/lang/Thread;

.field private final mBinder:Landroid/os/IBinder;

.field public mDownloadStop:Z

.field private mRootPath:Ljava/lang/String;

.field private mTempPath:Ljava/lang/String;

.field public mThreadStatus:Z

.field mstrCheckVersionURL:Ljava/lang/String;

.field private runnableCheckUpdate:Ljava/lang/Runnable;

.field private updateThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrCurVersion:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrDownloadURL:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrFileName:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrFileSize:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrDeviceInfo:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrCurAndroidMajorVersion:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrNewAndroidMajorVersion:Ljava/lang/String;

    .line 74
    const-string v0, "\\d{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/infraware/common/update/UpdateService;->parseVersion:Ljava/util/regex/Pattern;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->mRootPath:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->mTempPath:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/infraware/common/update/UpdateService;->mstrCheckVersionURL:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/infraware/common/update/UpdateService$UpdateBinder;

    invoke-direct {v0, p0}, Lcom/infraware/common/update/UpdateService$UpdateBinder;-><init>(Lcom/infraware/common/update/UpdateService;)V

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->mBinder:Landroid/os/IBinder;

    .line 70
    iput-object v1, p0, Lcom/infraware/common/update/UpdateService;->updateThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/infraware/common/update/UpdateService;->checkUpdateThread:Ljava/lang/Thread;

    .line 71
    iput-boolean v2, p0, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    .line 72
    iput-boolean v2, p0, Lcom/infraware/common/update/UpdateService;->mDownloadStop:Z

    .line 119
    new-instance v0, Lcom/infraware/common/update/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/infraware/common/update/UpdateService$1;-><init>(Lcom/infraware/common/update/UpdateService;)V

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->backgroundUpdate:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Lcom/infraware/common/update/UpdateService$2;

    invoke-direct {v0, p0}, Lcom/infraware/common/update/UpdateService$2;-><init>(Lcom/infraware/common/update/UpdateService;)V

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->runnableCheckUpdate:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method private getAndroidMajorVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 401
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 402
    .local v1, osVer:Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, MajorNumber:[Ljava/lang/String;
    array-length v2, v0

    if-eqz v2, :cond_f

    .line 404
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 406
    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method


# virtual methods
.method public checkUpdate()V
    .registers 5

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/infraware/common/update/UpdateService;->runnableCheckUpdate:Ljava/lang/Runnable;

    const-string v3, "check_update_office"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->checkUpdateThread:Ljava/lang/Thread;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    .line 116
    iget-object v0, p0, Lcom/infraware/common/update/UpdateService;->checkUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method public convertVersion(Ljava/lang/String;)I
    .registers 6
    .parameter "version"

    .prologue
    const/4 v0, 0x0

    .line 378
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    .line 384
    :cond_a
    :goto_a
    return v0

    .line 382
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    .line 383
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 382
    add-int v0, v1, v2

    .line 384
    .local v0, result:I
    goto :goto_a
.end method

.method public getVersionCheck(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/infraware/common/update/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/infraware/common/update/UpdateService;->httpToData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 257
    :goto_8
    return-object v1

    .line 254
    :catch_9
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public httpToData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, c:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 265
    .local v4, in:Ljava/io/InputStream;
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 266
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 268
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/infraware/common/update/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 270
    .local v6, netManager:Landroid/net/ConnectivityManager;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 272
    .local v5, mobile:Landroid/net/NetworkInfo;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 274
    .local v11, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_28

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_57

    .line 275
    :cond_28
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 276
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 277
    const-string v13, "GET"

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 279
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 280
    .local v9, responseCode:I
    const/16 v13, 0xc8

    if-ne v9, v13, :cond_121

    .line 281
    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 282
    const/4 v13, 0x0

    invoke-interface {v7, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 284
    const/4 v12, 0x0

    .line 285
    .local v12, xmlStatus:I
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 286
    .local v8, parserEvent:I
    :goto_54
    const/4 v13, 0x1

    if-ne v8, v13, :cond_5a

    .line 338
    .end local v8           #parserEvent:I
    .end local v9           #responseCode:I
    .end local v10           #url:Ljava/net/URL;
    .end local v12           #xmlStatus:I
    :cond_57
    :goto_57
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    return-object v13

    .line 287
    .restart local v8       #parserEvent:I
    .restart local v9       #responseCode:I
    .restart local v10       #url:Ljava/net/URL;
    .restart local v12       #xmlStatus:I
    :cond_5a
    iget-boolean v13, p0, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    if-nez v13, :cond_6e

    .line 288
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/infraware/common/update/UpdateService;->mDownloadStop:Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_57

    .line 339
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #mobile:Landroid/net/NetworkInfo;
    .end local v6           #netManager:Landroid/net/ConnectivityManager;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #parserEvent:I
    .end local v9           #responseCode:I
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #wifi:Landroid/net/NetworkInfo;
    .end local v12           #xmlStatus:I
    :catch_62
    move-exception v2

    .line 341
    .local v2, e:Ljava/lang/Exception;
    if-eqz v1, :cond_68

    .line 342
    :try_start_65
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 343
    :cond_68
    if-eqz v4, :cond_6d

    .line 344
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6d} :catch_126

    .line 347
    :cond_6d
    :goto_6d
    throw v2

    .line 291
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #mobile:Landroid/net/NetworkInfo;
    .restart local v6       #netManager:Landroid/net/ConnectivityManager;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8       #parserEvent:I
    .restart local v9       #responseCode:I
    .restart local v10       #url:Ljava/net/URL;
    .restart local v11       #wifi:Landroid/net/NetworkInfo;
    .restart local v12       #xmlStatus:I
    :cond_6e
    packed-switch v8, :pswitch_data_12a

    .line 331
    :cond_71
    :goto_71
    :try_start_71
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_54

    .line 293
    :pswitch_76
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Device"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8b

    .line 294
    const/4 v12, 0x5

    .line 295
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/infraware/common/update/UpdateService;->mstrDeviceInfo:Ljava/lang/String;

    goto :goto_71

    .line 296
    :cond_8b
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Version"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_99

    .line 297
    const/4 v12, 0x1

    goto :goto_71

    .line 298
    :cond_99
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DownloadURL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 299
    const/4 v12, 0x4

    goto :goto_71

    .line 300
    :cond_a7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "FileSize"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b5

    .line 301
    const/4 v12, 0x3

    goto :goto_71

    .line 302
    :cond_b5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "FileName"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c3

    .line 303
    const/4 v12, 0x2

    goto :goto_71

    .line 304
    :cond_c3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "AndroidMajorVersion"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_71

    .line 305
    const/4 v12, 0x6

    .line 307
    goto :goto_71

    .line 310
    :pswitch_d1
    const/4 v12, 0x0

    .line 311
    goto :goto_71

    .line 313
    :pswitch_d3
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrDeviceInfo:Ljava/lang/String;

    if-eqz v13, :cond_117

    .line 314
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrDeviceInfo:Ljava/lang/String;

    .line 315
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_117

    .line 316
    const/4 v13, 0x1

    if-ne v12, v13, :cond_eb

    .line 317
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    goto :goto_71

    .line 318
    :cond_eb
    const/4 v13, 0x4

    if-ne v12, v13, :cond_f6

    .line 319
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/infraware/common/update/UpdateService;->mstrDownloadURL:Ljava/lang/String;

    goto/16 :goto_71

    .line 320
    :cond_f6
    const/4 v13, 0x3

    if-ne v12, v13, :cond_101

    .line 321
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/infraware/common/update/UpdateService;->mstrFileSize:Ljava/lang/String;

    goto/16 :goto_71

    .line 322
    :cond_101
    const/4 v13, 0x2

    if-ne v12, v13, :cond_10c

    .line 323
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/infraware/common/update/UpdateService;->mstrFileName:Ljava/lang/String;

    goto/16 :goto_71

    .line 324
    :cond_10c
    const/4 v13, 0x6

    if-ne v12, v13, :cond_71

    .line 325
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewAndroidMajorVersion:Ljava/lang/String;

    goto/16 :goto_71

    .line 326
    :cond_117
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    if-nez v13, :cond_71

    .line 327
    const-string v13, "1"

    sput-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    goto/16 :goto_71

    .line 335
    .end local v8           #parserEvent:I
    .end local v12           #xmlStatus:I
    :cond_121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_124} :catch_62

    goto/16 :goto_57

    .line 345
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #mobile:Landroid/net/NetworkInfo;
    .end local v6           #netManager:Landroid/net/ConnectivityManager;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #responseCode:I
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #wifi:Landroid/net/NetworkInfo;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_126
    move-exception v13

    goto/16 :goto_6d

    .line 291
    nop

    :pswitch_data_12a
    .packed-switch 0x2
        :pswitch_76
        :pswitch_d1
        :pswitch_d3
    .end packed-switch
.end method

.method public loadCurrentVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, returnVersion:Ljava/lang/String;
    sget-object v2, Lcom/infraware/common/update/UpdateService;->parseVersion:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/infraware/common/update/UpdateService;->mstrCurVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 371
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 372
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 374
    :cond_13
    return-object v1
.end method

.method protected makeOfficeDir()V
    .registers 4

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->mTempPath:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Lcom/infraware/common/update/UpdateService;->makeRootDir()V

    .line 397
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisTemp"

    const-string v1, "polarisTemp"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->mTempPath:Ljava/lang/String;

    .line 398
    return-void
.end method

.method protected makeRootDir()V
    .registers 3

    .prologue
    .line 390
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 391
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->mRootPath:Ljava/lang/String;

    .line 392
    :cond_11
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 83
    const-string v0, "DOWNLOAD_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->mstrCheckVersionURL:Ljava/lang/String;

    .line 84
    const-string v0, "CURRENT_VER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrCurVersion:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/infraware/common/update/UpdateService;->getAndroidMajorVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/common/update/UpdateService;->mstrCurAndroidMajorVersion:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/infraware/common/update/UpdateService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 80
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateApk()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v6, 0x0

    .line 185
    .local v6, intent:Landroid/content/Intent;
    iget-object v13, p0, Lcom/infraware/common/update/UpdateService;->mstrCheckVersionURL:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/infraware/common/update/UpdateService;->getVersionCheck(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    const/4 v9, 0x0

    .line 187
    .local v9, newVersion:I
    const/4 v3, 0x0

    .line 188
    .local v3, curVersion:I
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    if-eqz v13, :cond_1a

    .line 189
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 191
    invoke-virtual {p0}, Lcom/infraware/common/update/UpdateService;->loadCurrentVersion()Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, strCurVersionCheck:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 195
    .end local v11           #strCurVersionCheck:Ljava/lang/String;
    :cond_1a
    const/4 v8, 0x0

    .line 196
    .local v8, newAndroidMajorVersion:I
    const/4 v2, 0x0

    .line 197
    .local v2, curAndroidMajorVersion:I
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewAndroidMajorVersion:Ljava/lang/String;

    if-eqz v13, :cond_2c

    .line 198
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrNewAndroidMajorVersion:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 199
    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrCurAndroidMajorVersion:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 202
    :cond_2c
    if-eqz v8, :cond_cd

    if-gt v8, v2, :cond_cd

    .line 203
    if-le v9, v3, :cond_bb

    .line 204
    new-instance v4, Ljava/net/URL;

    sget-object v13, Lcom/infraware/common/update/UpdateService;->mstrDownloadURL:Ljava/lang/String;

    invoke-direct {v4, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, downloadURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    .line 205
    check-cast v12, Ljava/net/HttpURLConnection;

    .line 208
    .local v12, urlConnection:Ljava/net/HttpURLConnection;
    const/16 v13, 0x7530

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 209
    const-string v13, "GET"

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 212
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->connect()V

    .line 214
    invoke-virtual {p0}, Lcom/infraware/common/update/UpdateService;->makeOfficeDir()V

    .line 215
    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v14, p0, Lcom/infraware/common/update/UpdateService;->mTempPath:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/infraware/common/update/UpdateService;->mstrFileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_76

    .line 217
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 219
    :cond_76
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 220
    .local v10, os:Ljava/io/FileOutputStream;
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 222
    .local v7, is:Ljava/io/InputStream;
    const/16 v13, 0x400

    new-array v0, v13, [B

    .line 223
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 224
    .local v1, bufferLength:I
    :goto_84
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_9f

    .line 232
    :goto_8a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 233
    iget-boolean v13, p0, Lcom/infraware/common/update/UpdateService;->mDownloadStop:Z

    if-eqz v13, :cond_ac

    .line 234
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v13, "com.infraware.polarisoffice.ACTION_USER_CANCEL"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .end local v0           #buffer:[B
    .end local v1           #bufferLength:I
    .end local v4           #downloadURL:Ljava/net/URL;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v10           #os:Ljava/io/FileOutputStream;
    .end local v12           #urlConnection:Ljava/net/HttpURLConnection;
    .restart local v6       #intent:Landroid/content/Intent;
    :goto_98
    invoke-virtual {p0, v6}, Lcom/infraware/common/update/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/infraware/common/update/UpdateService;->stopSelf()V

    .line 249
    return-void

    .line 225
    .restart local v0       #buffer:[B
    .restart local v1       #bufferLength:I
    .restart local v4       #downloadURL:Ljava/net/URL;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v10       #os:Ljava/io/FileOutputStream;
    .restart local v12       #urlConnection:Ljava/net/HttpURLConnection;
    :cond_9f
    iget-boolean v13, p0, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    if-nez v13, :cond_a7

    .line 226
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/infraware/common/update/UpdateService;->mDownloadStop:Z

    goto :goto_8a

    .line 229
    :cond_a7
    const/4 v13, 0x0

    invoke-virtual {v10, v0, v13, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_84

    .line 236
    :cond_ac
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v13, "com.infraware.polarisoffice.ACTION_DOWNLOAD_COMPLETE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v13, "APKFileNameForInstall"

    sget-object v14, Lcom/infraware/common/update/UpdateService;->mstrFileName:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_98

    .line 239
    .end local v0           #buffer:[B
    .end local v1           #bufferLength:I
    .end local v4           #downloadURL:Ljava/net/URL;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v10           #os:Ljava/io/FileOutputStream;
    .end local v12           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_bb
    if-nez v9, :cond_c5

    .line 240
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v13, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_98

    .line 242
    :cond_c5
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v13, "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_98

    .line 245
    :cond_cd
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    const-string v13, "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_98
.end method

.method public updateProcess()V
    .registers 5

    .prologue
    .line 108
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/infraware/common/update/UpdateService;->backgroundUpdate:Ljava/lang/Runnable;

    const-string v3, "update_docMaster"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/infraware/common/update/UpdateService;->updateThread:Ljava/lang/Thread;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    .line 110
    iget-object v0, p0, Lcom/infraware/common/update/UpdateService;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public writeFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    if-nez p1, :cond_f

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.infraware.polarisoffice.ACTION_FILE_WRITE_ERROR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/common/update/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lcom/infraware/common/update/UpdateService;->stopSelf()V

    .line 357
    .end local v0           #intent:Landroid/content/Intent;
    :cond_f
    const/4 v1, 0x0

    .line 358
    .local v1, temp:I
    :goto_10
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 365
    :goto_17
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 366
    return-void

    .line 359
    :cond_1b
    iget-boolean v2, p0, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    if-nez v2, :cond_23

    .line 360
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/infraware/common/update/UpdateService;->mDownloadStop:Z

    goto :goto_17

    .line 363
    :cond_23
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_10
.end method
