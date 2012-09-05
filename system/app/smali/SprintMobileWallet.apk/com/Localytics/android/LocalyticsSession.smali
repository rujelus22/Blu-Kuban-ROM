.class public final Lcom/Localytics/android/LocalyticsSession;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"


# static fields
.field private static final CLIENT_VERSION:Ljava/lang/String; = "1.5"

.field private static final CLOSE_FILE_PREFIX:Ljava/lang/String; = "c_"

.field private static final DEVICE_ID_FILENAME:Ljava/lang/String; = "device_id"

.field private static final LOCALYTICS_DIR:Ljava/lang/String; = "localytics"

.field private static final LOG_TAG:Ljava/lang/String; = "Localytics_Session"

.field protected static final MAX_NAME_LENGTH:I = 0x80

.field private static final MAX_NUM_ATTRIBUTES:I = 0xa

.field private static final MAX_NUM_SESSIONS:I = 0xa

.field private static final OPTOUT_FILNAME:Ljava/lang/String; = "opted_out"

.field private static final OPT_SESSION:Ljava/lang/String; = "s_opt_session"

.field private static SESSION_EXPIRATION:I = 0x0

.field private static final SESSION_FILE_PREFIX:Ljava/lang/String; = "s_"

.field private static final SESSION_ID_FILENAME:Ljava/lang/String; = "last_session_id"

.field private static final UPLOADER_FILE_PREFIX:Ljava/lang/String; = "u_"

.field private static _isOptedIn:Z

.field private static _isUploading:Z


# instance fields
.field private _appContext:Landroid/content/Context;

.field private _applicationKey:Ljava/lang/String;

.field private _closeFilename:Ljava/lang/String;

.field private _isSessionOpen:Z

.field private _localyticsDirPath:Ljava/lang/String;

.field private _sessionFilename:Ljava/lang/String;

.field private _sessionUUID:Ljava/lang/String;

.field private uploadComplete:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    .line 88
    sput-boolean v0, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    .line 115
    const/16 v0, 0x3a98

    sput v0, Lcom/Localytics/android/LocalyticsSession;->SESSION_EXPIRATION:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "appContext"
    .parameter "applicationKey"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_closeFilename:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    .line 937
    new-instance v1, Lcom/Localytics/android/LocalyticsSession$1;

    invoke-direct {v1, p0}, Lcom/Localytics/android/LocalyticsSession$1;-><init>(Lcom/Localytics/android/LocalyticsSession;)V

    iput-object v1, p0, Lcom/Localytics/android/LocalyticsSession;->uploadComplete:Ljava/lang/Runnable;

    .line 132
    iput-object p1, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string v2, "localytics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    iput-object v1, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    .line 148
    :try_start_47
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "opted_out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, optOutFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 151
    const/4 v1, 0x0

    sput-boolean v1, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    .line 162
    .end local v0           #optOutFile:Ljava/io/File;
    :goto_6a
    return-void

    .line 156
    .restart local v0       #optOutFile:Ljava/io/File;
    :cond_6b
    const/4 v1, 0x1

    sput-boolean v1, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6e} :catch_6f

    goto :goto_6a

    .line 158
    .end local v0           #optOutFile:Ljava/io/File;
    :catch_6f
    move-exception v1

    goto :goto_6a
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    return v0
.end method

.method static synthetic access$1(Z)V
    .registers 1
    .parameter

    .prologue
    .line 87
    sput-boolean p0, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    return-void
.end method

.method private static appendDataToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .parameter "file"
    .parameter "data"

    .prologue
    .line 691
    if-eqz p0, :cond_16

    .line 696
    :try_start_2
    const-class v2, Lcom/Localytics/android/LocalyticsSession;

    monitor-enter v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_1a

    .line 698
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 699
    .local v0, out:Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 700
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 696
    monitor-exit v2

    .line 708
    .end local v0           #out:Ljava/io/OutputStream;
    :cond_16
    :goto_16
    return-void

    .line 696
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    :try_start_19
    throw v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1a} :catch_1a

    .line 704
    :catch_1a
    move-exception v1

    goto :goto_16
.end method

.method private createOptEvent(Z)V
    .registers 7
    .parameter "optState"

    .prologue
    const/4 v4, 0x3

    .line 859
    const-string v2, "s_opt_session"

    invoke-direct {p0, v2}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 860
    .local v0, fp:Ljava/io/File;
    if-eqz v0, :cond_49

    .line 863
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 864
    .local v1, optString:Ljava/lang/StringBuffer;
    const-string v2, "- c: optin\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 865
    const-string v2, "  a: optin\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    const-string v2, "  optin:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    const-string v2, "du"

    .line 870
    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 868
    invoke-static {v2, v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    const-string v2, "au"

    .line 875
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    .line 873
    invoke-static {v2, v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 879
    const-string v2, "optin"

    .line 880
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    .line 878
    invoke-static {v2, v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/Localytics/android/LocalyticsSession;->appendDataToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 885
    .end local v1           #optString:Ljava/lang/StringBuffer;
    :cond_49
    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 800
    iget-object v1, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/Localytics/android/DatapointHelper;->getGlobalDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, deviceId:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 803
    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getLocalDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 806
    :cond_c
    return-object v0
.end method

.method private getLocalDeviceId()Ljava/lang/String;
    .registers 11

    .prologue
    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, deviceId:Ljava/lang/String;
    const/16 v1, 0x64

    .line 824
    .local v1, bufferSize:I
    const-string v6, "device_id"

    .line 825
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 826
    const-string v8, "localytics"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 825
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 823
    invoke-direct {p0, v6, v7}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 829
    .local v3, fp:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_44

    .line 831
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    invoke-static {v3, v2}, Lcom/Localytics/android/LocalyticsSession;->appendDataToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 850
    :goto_43
    return-object v2

    .line 839
    :cond_44
    const/16 v6, 0x64

    :try_start_46
    new-array v0, v6, [C

    .line 841
    .local v0, buf:[C
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v7, 0x64

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 842
    .local v5, reader:Ljava/io/BufferedReader;
    invoke-virtual {v5, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .line 843
    .local v4, numRead:I
    const/4 v6, 0x0

    invoke-static {v0, v6, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_60} :catch_63

    goto :goto_43

    .line 846
    .end local v0           #buf:[C
    .end local v4           #numRead:I
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_61
    move-exception v6

    goto :goto_43

    .line 847
    :catch_63
    move-exception v6

    goto :goto_43
.end method

.method private getOldSessionUUId()Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 896
    const/16 v0, 0x64

    .line 899
    .local v0, bufferSize:I
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "last_session_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    .local v2, fp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 904
    :try_start_23
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v10, 0x64

    invoke-direct {v3, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 905
    .local v3, reader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 906
    .local v4, storedId:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 907
    .local v7, timeStamp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 909
    if-eqz v7, :cond_54

    .line 912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long v5, v9, v11

    .line 913
    .local v5, timeSinceSession:J
    sget v9, Lcom/Localytics/android/LocalyticsSession;->SESSION_EXPIRATION:I
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_48} :catch_4e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_48} :catch_51

    int-to-long v9, v9

    cmp-long v9, v9, v5

    if-lez v9, :cond_54

    .line 930
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #storedId:Ljava/lang/String;
    .end local v5           #timeSinceSession:J
    .end local v7           #timeStamp:Ljava/lang/String;
    :goto_4d
    return-object v4

    .line 919
    :catch_4e
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    move-object v4, v8

    .line 922
    goto :goto_4d

    .line 924
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_51
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v4, v8

    .line 927
    goto :goto_4d

    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    move-object v4, v8

    .line 930
    goto :goto_4d
.end method

.method private getOpenSessionString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 740
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 741
    .local v1, openString:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 742
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 744
    .local v0, defaultLocale:Ljava/util/Locale;
    const-string v3, "- c: se\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    const-string v3, "  a: c\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    const-string v3, "  se:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    const-string v3, "u"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 749
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 752
    const-string v3, "au"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    .line 751
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    const-string v3, "av"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/Localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 753
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    const-string v3, "lv"

    const-string v4, "1.5"

    .line 755
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    const-string v3, "ct"

    invoke-static {}, Lcom/Localytics/android/DatapointHelper;->getTimeAsDatetime()Ljava/lang/String;

    move-result-object v4

    .line 757
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    const-string v3, "du"

    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 761
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    const-string v3, "dp"

    const-string v4, "Android"

    .line 763
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    const-string v3, "dov"

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 765
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 768
    const-string v3, "dmo"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 767
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 770
    const-string v3, "dll"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 769
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    const-string v3, "dlc"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    const-string v3, "dc"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    const-string v3, "nca"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 777
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    const-string v3, "nc"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 779
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    const-string v3, "dac"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/Localytics/android/DatapointHelper;->getNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    .line 781
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 785
    const-string v3, "meid"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 784
    invoke-static {v3, v4, v5}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getOrCreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "filename"
    .parameter "path"

    .prologue
    .line 657
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v0, fp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 679
    .end local v0           #fp:Ljava/io/File;
    :cond_1c
    :goto_1c
    return-object v0

    .line 664
    .restart local v0       #fp:Ljava/io/File;
    :cond_1d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 667
    :try_start_25
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2d

    move-result v1

    if-nez v1, :cond_1c

    .line 679
    :goto_2b
    const/4 v0, 0x0

    goto :goto_1c

    .line 672
    :catch_2d
    move-exception v1

    goto :goto_2b
.end method

.method private getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "filename"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static overwriteFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "file"
    .parameter "contents"

    .prologue
    .line 717
    if-eqz p0, :cond_10

    .line 721
    :try_start_2
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 722
    .local v0, writer:Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 724
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_11

    .line 731
    .end local v0           #writer:Ljava/io/FileWriter;
    :cond_10
    :goto_10
    return-void

    .line 726
    :catch_11
    move-exception v1

    goto :goto_10
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    .line 357
    sget-boolean v2, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    if-eqz v2, :cond_8

    .line 358
    iget-boolean v2, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    if-nez v2, :cond_9

    .line 401
    :cond_8
    :goto_8
    return-void

    .line 367
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v0, closeString:Ljava/lang/StringBuffer;
    const-string v2, "- c: se\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v2, "  a: u\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v2, "u"

    .line 372
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 373
    const/4 v4, 0x2

    .line 370
    invoke-static {v2, v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v2, "  se:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    const-string v2, "au"

    .line 377
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    .line 378
    const/4 v4, 0x3

    .line 375
    invoke-static {v2, v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string v2, "ctc"

    .line 381
    invoke-static {}, Lcom/Localytics/android/DatapointHelper;->getTimeAsDatetime()Ljava/lang/String;

    move-result-object v3

    .line 382
    const/4 v4, 0x3

    .line 379
    invoke-static {v2, v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_closeFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 386
    .local v1, fp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->overwriteFile(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    const-string v2, "last_session_id"

    invoke-direct {p0, v2}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->overwriteFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7a} :catch_7b

    goto :goto_8

    .line 397
    .end local v0           #closeString:Ljava/lang/StringBuffer;
    .end local v1           #fp:Ljava/io/File;
    :catch_7b
    move-exception v2

    goto :goto_8
.end method

.method public createRangedAttribute(IIII)Ljava/lang/String;
    .registers 10
    .parameter "actualValue"
    .parameter "minValue"
    .parameter "maxValue"
    .parameter "step"

    .prologue
    const/4 v3, 0x0

    .line 519
    const/4 v4, 0x1

    if-ge p4, v4, :cond_5

    .line 537
    :cond_4
    :goto_4
    return-object v3

    .line 524
    :cond_5
    if-ge p2, p3, :cond_4

    .line 531
    sub-int v3, p3, p2

    add-int/2addr v3, p4

    div-int v1, v3, p4

    .line 532
    .local v1, stepQuantity:I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [I

    .line 533
    .local v2, steps:[I
    const/4 v0, 0x0

    .local v0, currentStep:I
    :goto_11
    if-le v0, v1, :cond_18

    .line 537
    invoke-virtual {p0, p1, v2}, Lcom/Localytics/android/LocalyticsSession;->createRangedAttribute(I[I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 535
    :cond_18
    mul-int v3, v0, p4

    add-int/2addr v3, p2

    aput v3, v2, v0

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public createRangedAttribute(I[I)Ljava/lang/String;
    .registers 8
    .parameter "actualValue"
    .parameter "steps"

    .prologue
    const/4 v4, 0x0

    .line 551
    const/4 v0, 0x0

    .line 554
    .local v0, bucket:Ljava/lang/String;
    aget v2, p2, v4

    if-ge p1, v2, :cond_18

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "less than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_17
    return-object v0

    .line 559
    :cond_18
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    if-lt p1, v2, :cond_38

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " and above"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 566
    :cond_38
    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    .line 567
    .local v1, bucketIndex:I
    if-gez v1, :cond_41

    .line 571
    neg-int v2, v1

    add-int/lit8 v1, v2, -0x2

    .line 573
    :cond_41
    aget v2, p2, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_52

    .line 575
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 579
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    aget v3, p2, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public isOptedIn()Z
    .registers 2

    .prologue
    .line 240
    sget-boolean v0, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    return v0
.end method

.method public open()V
    .registers 7

    .prologue
    .line 260
    const-class v3, Lcom/Localytics/android/LocalyticsSession;

    monitor-enter v3

    .line 262
    :try_start_3
    sget-boolean v2, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    if-eqz v2, :cond_b

    .line 263
    iget-boolean v2, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    if-eqz v2, :cond_d

    .line 266
    :cond_b
    monitor-exit v3

    .line 342
    :cond_c
    :goto_c
    return-void

    .line 269
    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    .line 260
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_44

    .line 278
    :try_start_11
    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getOldSessionUUId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 279
    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    if-eqz v2, :cond_47

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "c_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_closeFilename:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_41} :catch_42

    goto :goto_c

    .line 338
    :catch_42
    move-exception v2

    goto :goto_c

    .line 260
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v2

    .line 289
    :cond_47
    :try_start_47
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, fp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 293
    new-instance v0, Lcom/Localytics/android/LocalyticsSession$2;

    invoke-direct {v0, p0}, Lcom/Localytics/android/LocalyticsSession$2;-><init>(Lcom/Localytics/android/LocalyticsSession;)V

    .line 304
    .local v0, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_66

    .line 306
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    goto :goto_c

    .line 313
    .end local v0           #filter:Ljava/io/FilenameFilter;
    :cond_66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "c_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_closeFilename:Ljava/lang/String;

    .line 320
    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 321
    if-nez v1, :cond_a3

    .line 323
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    goto/16 :goto_c

    .line 328
    :cond_a3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 334
    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getOpenSessionString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->appendDataToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_b4} :catch_42

    goto/16 :goto_c
.end method

.method public setOptIn(Z)V
    .registers 5
    .parameter "optedIn"

    .prologue
    .line 192
    :try_start_0
    sget-boolean v1, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    if-ne p1, v1, :cond_5

    .line 228
    :goto_4
    return-void

    .line 197
    :cond_5
    sput-boolean p1, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    .line 200
    if-eqz p1, :cond_2d

    .line 203
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "opted_out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, fp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/Localytics/android/LocalyticsSession;->createOptEvent(Z)V

    goto :goto_4

    .line 224
    .end local v0           #fp:Ljava/io/File;
    :catch_2b
    move-exception v1

    goto :goto_4

    .line 212
    :cond_2d
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v0       #fp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 214
    new-instance v0, Ljava/io/File;

    .end local v0           #fp:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "opted_out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_2b

    .line 217
    .restart local v0       #fp:Ljava/io/File;
    :try_start_51
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_2b

    .line 221
    :goto_54
    const/4 v1, 0x0

    :try_start_55
    invoke-direct {p0, v1}, Lcom/Localytics/android/LocalyticsSession;->createOptEvent(Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_2b

    goto :goto_4

    .line 219
    :catch_59
    move-exception v1

    goto :goto_54
.end method

.method public tagEvent(Ljava/lang/String;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 426
    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v6, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    if-eqz v6, :cond_8

    .line 454
    iget-boolean v6, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    if-nez v6, :cond_9

    .line 501
    :cond_8
    :goto_8
    return-void

    .line 463
    :cond_9
    :try_start_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    .local v2, eventString:Ljava/lang/StringBuffer;
    const-string v6, "- c: ev\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    const-string v6, "  a: c\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    const-string v6, "  ev:\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const-string v6, "au"

    iget-object v7, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    const/4 v8, 0x3

    .line 467
    invoke-static {v6, v7, v8}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const-string v6, "u"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    .line 469
    invoke-static {v6, v7, v8}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v6, "su"

    iget-object v7, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    const/4 v8, 0x3

    .line 471
    invoke-static {v6, v7, v8}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    const-string v6, "ct"

    invoke-static {}, Lcom/Localytics/android/DatapointHelper;->getTimeAsDatetime()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    .line 473
    invoke-static {v6, v7, v8}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v6, "n"

    const/4 v7, 0x3

    .line 476
    invoke-static {v6, p1, v7}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    if-eqz p2, :cond_79

    .line 481
    const-string v6, "   attrs:\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 485
    .local v0, attr_it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, currentAttr:I
    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    const/16 v6, 0xa

    if-lt v1, v6, :cond_89

    .line 493
    .end local v0           #attr_it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #currentAttr:I
    :cond_79
    iget-object v6, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 494
    .local v3, fp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/Localytics/android/LocalyticsSession;->appendDataToFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_8

    .line 497
    .end local v2           #eventString:Ljava/lang/StringBuffer;
    .end local v3           #fp:Ljava/io/File;
    :catch_87
    move-exception v6

    goto :goto_8

    .line 487
    .restart local v0       #attr_it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1       #currentAttr:I
    .restart local v2       #eventString:Ljava/lang/StringBuffer;
    :cond_89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 488
    .local v4, key:Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 489
    .local v5, value:Ljava/lang/String;
    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lcom/Localytics/android/DatapointHelper;->formatYAMLLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9d} :catch_87

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f
.end method

.method public upload()V
    .registers 7

    .prologue
    .line 598
    const-class v3, Lcom/Localytics/android/LocalyticsSession;

    monitor-enter v3

    .line 604
    :try_start_3
    sget-boolean v2, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    if-eqz v2, :cond_9

    .line 606
    monitor-exit v3

    .line 628
    :goto_8
    return-void

    .line 609
    :cond_9
    const/4 v2, 0x1

    sput-boolean v2, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    .line 598
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_27

    .line 614
    :try_start_d
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, fp:Ljava/io/File;
    new-instance v0, Lcom/Localytics/android/UploaderThread;

    .line 617
    const-string v2, "s_"

    .line 618
    const-string v3, "u_"

    .line 619
    const-string v4, "c_"

    .line 620
    iget-object v5, p0, Lcom/Localytics/android/LocalyticsSession;->uploadComplete:Ljava/lang/Runnable;

    .line 615
    invoke-direct/range {v0 .. v5}, Lcom/Localytics/android/UploaderThread;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 622
    .local v0, uploader:Lcom/Localytics/android/UploaderThread;
    invoke-virtual {v0}, Lcom/Localytics/android/UploaderThread;->start()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_25

    goto :goto_8

    .line 624
    .end local v0           #uploader:Lcom/Localytics/android/UploaderThread;
    .end local v1           #fp:Ljava/io/File;
    :catch_25
    move-exception v2

    goto :goto_8

    .line 598
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2
.end method
