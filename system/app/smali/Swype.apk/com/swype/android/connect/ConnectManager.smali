.class public Lcom/swype/android/connect/ConnectManager;
.super Ljava/lang/Thread;
.source "ConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/ConnectManager$MessageHandler;
    }
.end annotation


# static fields
.field static final ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static DEFAULT_DELAY_SECONDS:I = 0x0

.field private static DELAY_BETWEEN_CONNECTIONS:I = 0x0

.field public static final DELAY_REQUEST:Ljava/lang/String; = "DELAY_REQUEST"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final FAILURE:Ljava/lang/String; = "FAILURE"

.field public static final INVALID_ARGUMENT:Ljava/lang/String; = "INVALID_ARGUMENT"

.field public static final INVALID_BUILD:Ljava/lang/String; = "INVALID_BUILD"

.field public static final INVALID_COMMAND:Ljava/lang/String; = "INVALID_COMMAND"

.field public static final INVALID_COMMAND_FAMILY:Ljava/lang/String; = "INVALID_COMMAND_FAMILY"

.field public static final INVALID_DEVICE:Ljava/lang/String; = "INVALID_DEVICE"

.field public static final INVALID_LANGUAGE:Ljava/lang/String; = "INVALID_LANGUAGE"

.field public static final INVALID_LICENSE:Ljava/lang/String; = "INVALID_LICENSE"

.field public static final INVALID_MESSAGE:Ljava/lang/String; = "INVALID_MESSAGE"

.field public static final INVALID_REQUEST:Ljava/lang/String; = "INVALID_REQUEST"

.field public static final INVALID_SESSION:Ljava/lang/String; = "INVALID_SESSION"

.field public static final INVALID_TRANSACTION:Ljava/lang/String; = "INVALID_TRANSACTION"

.field private static MAX_DELAY_SECONDS:I = 0x0

.field private static MAX_DELAY_SECONDS_INTERNAL:I = 0x0

.field private static final MESSAGE_DELAY_COMMAND:I = 0x0

.field private static final MESSAGE_DELAY_PROCESS:I = 0x1

.field private static final MESSAGE_HANDLE_CALLBACK:I = 0x2

.field private static final MESSAGE_HANDLE_IOEXCEPTION:I = 0x3

.field private static final MESSAGE_LAST:I = 0x3

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final SYSTEM_ERROR:Ljava/lang/String; = "SYSTEM_ERROR"

.field public static final VALIDATE_DEVICE:Ljava/lang/String; = "VALIDATE_DEVICE"


# instance fields
.field private client:Lcom/swype/android/connect/ConnectClient;

.field private volatile commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/swype/android/connect/util/Command;",
            ">;"
        }
    .end annotation
.end field

.field private volatile delayQueueProcessing:Z

.field private volatile deviceId:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private volatile hasConnectivity:Z

.field private hasMobile:Z

.field private hasWifi:Z

.field private isMobileRoaming:Z

.field private volatile isRunning:Z

.field private final mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

.field private processingCommand:Z

.field private volatile quit:Z

.field private requestKey:Ljava/lang/String;

.field responseListener:Lcom/swype/android/connect/ConnectClient$ResponseListener;

.field private serverURL:Ljava/lang/String;

.field private volatile sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/16 v0, 0x12c

    sput v0, Lcom/swype/android/connect/ConnectManager;->DEFAULT_DELAY_SECONDS:I

    .line 63
    const v0, 0x4f1a00

    sput v0, Lcom/swype/android/connect/ConnectManager;->MAX_DELAY_SECONDS:I

    .line 64
    const/16 v0, 0x384

    sput v0, Lcom/swype/android/connect/ConnectManager;->MAX_DELAY_SECONDS_INTERNAL:I

    .line 65
    const/16 v0, 0x3e8

    sput v0, Lcom/swype/android/connect/ConnectManager;->DELAY_BETWEEN_CONNECTIONS:I

    return-void
.end method

.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 4
    .parameter "connectClient"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 76
    iput-boolean v1, p0, Lcom/swype/android/connect/ConnectManager;->processingCommand:Z

    .line 81
    iput-boolean v1, p0, Lcom/swype/android/connect/ConnectManager;->hasConnectivity:Z

    .line 82
    iput-boolean v1, p0, Lcom/swype/android/connect/ConnectManager;->delayQueueProcessing:Z

    .line 83
    iput-boolean v1, p0, Lcom/swype/android/connect/ConnectManager;->hasWifi:Z

    .line 84
    iput-boolean v1, p0, Lcom/swype/android/connect/ConnectManager;->hasMobile:Z

    .line 85
    iput-boolean v1, p0, Lcom/swype/android/connect/ConnectManager;->isMobileRoaming:Z

    .line 92
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/swype/android/connect/ConnectManager;->encoding:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/swype/android/connect/ConnectManager$1;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectManager$1;-><init>(Lcom/swype/android/connect/ConnectManager;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectManager;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    iput-object p1, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/connect/ConnectManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/swype/android/connect/ConnectManager;->checkAvailableNetworkConnections()V

    return-void
.end method

.method private checkAvailableNetworkConnections()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 971
    iput-boolean v2, p0, Lcom/swype/android/connect/ConnectManager;->hasConnectivity:Z

    .line 972
    iput-boolean v2, p0, Lcom/swype/android/connect/ConnectManager;->hasWifi:Z

    .line 973
    iput-boolean v2, p0, Lcom/swype/android/connect/ConnectManager;->hasMobile:Z

    .line 974
    iput-boolean v2, p0, Lcom/swype/android/connect/ConnectManager;->isMobileRoaming:Z

    .line 976
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 978
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/swype/android/connect/ConnectManager;->isUp(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 979
    iput-boolean v3, p0, Lcom/swype/android/connect/ConnectManager;->hasWifi:Z

    .line 989
    :cond_20
    :goto_20
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->hasWifi:Z

    if-eqz v0, :cond_4b

    .line 990
    iput-boolean v3, p0, Lcom/swype/android/connect/ConnectManager;->hasConnectivity:Z

    .line 994
    :cond_26
    :goto_26
    return-void

    .line 980
    :cond_27
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/swype/android/connect/ConnectManager;->isUp(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_3c

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/swype/android/connect/ConnectManager;->isUp(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 982
    :cond_3c
    iput-boolean v3, p0, Lcom/swype/android/connect/ConnectManager;->hasMobile:Z

    .line 984
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/connect/ConnectManager;->isRoaming(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 985
    iput-boolean v3, p0, Lcom/swype/android/connect/ConnectManager;->isMobileRoaming:Z

    goto :goto_20

    .line 991
    :cond_4b
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->hasMobile:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isDataConnectionPermitted()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 992
    iput-boolean v3, p0, Lcom/swype/android/connect/ConnectManager;->hasConnectivity:Z

    goto :goto_26
.end method

.method private cleanup()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    if-eqz v0, :cond_a

    .line 248
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->stop()V

    .line 251
    :cond_a
    iput-object v1, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    .line 252
    iput-object v1, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    .line 253
    return-void
.end method

.method private connectToUrl(Lcom/swype/android/connect/util/Command;)Ljava/net/HttpURLConnection;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p1, Lcom/swype/android/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/swype/android/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_28

    .line 942
    iget-object v0, p1, Lcom/swype/android/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 953
    :goto_f
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 956
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, p0

    .line 961
    :goto_27
    return-object v0

    .line 944
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->serverURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 945
    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    iget v1, p1, Lcom/swype/android/connect/util/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 948
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 958
    :cond_4d
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    move-object v0, p0

    goto :goto_27
.end method

.method private generateBody(Lcom/swype/android/connect/util/Command;)Lorg/json/JSONObject;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 645
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 647
    iget-boolean v1, p1, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    if-eqz v1, :cond_10

    .line 648
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    :cond_10
    iget-boolean v1, p1, Lcom/swype/android/connect/util/Command;->requireSession:Z

    if-eqz v1, :cond_1b

    .line 652
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    :cond_1b
    const-string v1, "key"

    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->requestKey:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 660
    const-string v1, "transactionId"

    iget-object v2, p1, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    :cond_2d
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getDebugResponse()Ljava/lang/String;

    move-result-object v1

    .line 664
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_58

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding debug response request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 666
    iget-object v2, p1, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "debug"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_58
    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 671
    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 672
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 673
    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 675
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_7c

    .line 676
    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_62

    .line 677
    :cond_7c
    instance-of v1, v2, Ljava/lang/Long;

    if-nez v1, :cond_88

    instance-of v1, v2, Ljava/lang/Integer;

    if-nez v1, :cond_88

    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_90

    .line 679
    :cond_88
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_62

    .line 680
    :cond_90
    instance-of v1, v2, Ljava/util/HashMap;

    if-eqz v1, :cond_c3

    .line 681
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 683
    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 684
    :goto_a5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 685
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 686
    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 687
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a5

    .line 690
    :cond_bf
    invoke-virtual {v4, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_62

    .line 691
    :cond_c3
    instance-of v1, v2, Lorg/json/JSONObject;

    if-eqz v1, :cond_cb

    .line 692
    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_62

    .line 693
    :cond_cb
    instance-of v1, v2, Lorg/json/JSONArray;

    if-eqz v1, :cond_d3

    .line 694
    invoke-virtual {v4, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_62

    .line 696
    :cond_d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unusable key type key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_62

    .line 700
    :cond_f5
    return-object v4
.end method

.method private hasSufficientSpace(I)Z
    .registers 7
    .parameter

    .prologue
    .line 433
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 435
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    .line 436
    mul-long v0, v3, v1

    .line 437
    int-to-long v2, p1

    cmp-long v0, v2, v0

    if-gez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1041
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1042
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1043
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/connect/util/Command;

    .line 1044
    iget-object v2, p0, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1045
    const/4 v0, 0x1

    .line 1049
    :cond_24
    return v0
.end method

.method private isRoaming(Landroid/net/NetworkInfo;)Z
    .registers 3
    .parameter

    .prologue
    .line 1017
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isUp(Landroid/net/NetworkInfo;)Z
    .registers 4
    .parameter

    .prologue
    .line 1007
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private processCommand(Lcom/swype/android/connect/ConnectManager$MessageHandler;Lcom/swype/android/connect/util/Command;)V
    .registers 22
    .parameter
    .parameter

    .prologue
    .line 446
    const/4 v4, 0x0

    .line 447
    const/4 v5, 0x0

    .line 448
    const/4 v6, 0x0

    .line 450
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/swype/android/connect/ConnectManager;->processingCommand:Z

    move v7, v0

    if-eqz v7, :cond_b

    .line 632
    :goto_a
    return-void

    .line 454
    :cond_b
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/swype/android/connect/ConnectManager;->processingCommand:Z

    .line 457
    :try_start_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->connectToUrl(Lcom/swype/android/connect/util/Command;)Ljava/net/HttpURLConnection;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_18} :catch_1ed
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_18} :catch_22d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_26d

    move-result-object v4

    .line 458
    :try_start_19
    const-string v7, "http.keepAlive"

    const-string v8, "false"

    invoke-static {v7, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->generateBody(Lcom/swype/android/connect/util/Command;)Lorg/json/JSONObject;

    move-result-object v7

    .line 461
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/connect/ConnectManager;->encoding:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 463
    const-string v9, "SwypeConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SEND: Command-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " message-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 468
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 469
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 470
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 471
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->method:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/swype/android/connect/util/Command;->hasBody:Z

    move v9, v0

    if-eqz v9, :cond_a5

    .line 474
    const-string v9, "Content-Type"

    const-string v10, "text/json"

    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v9, "Content-Length"

    array-length v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 477
    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write([B)V

    .line 478
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 480
    :cond_a5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 482
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConnectManager sendingBody()  URL: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 483
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConnectManager sendingBody()  Family: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] Command: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConnectManager sendingBody() --- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_10e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_10e} :catch_509
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_10e} :catch_501
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_10e} :catch_4f9

    move/from16 v18, v5

    move-object v5, v4

    move/from16 v4, v18

    .line 503
    :goto_113
    :try_start_113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serverConn.getResponseCode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x196

    if-eq v7, v8, :cond_143

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x193

    if-ne v7, v8, :cond_144

    .line 507
    :cond_143
    const/4 v6, 0x1

    .line 509
    :cond_144
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_147} :catch_2ad
    .catch Ljava/lang/NullPointerException; {:try_start_113 .. :try_end_147} :catch_2d0

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_14d

    .line 510
    const/4 v4, 0x1

    :cond_14d
    move/from16 v18, v6

    move v6, v4

    move/from16 v4, v18

    .line 520
    :goto_152
    if-nez v6, :cond_1c8

    .line 521
    const/4 v7, 0x0

    .line 524
    :try_start_155
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 526
    if-lez v8, :cond_2f3

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "json"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2f3

    .line 527
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 528
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/connect/ConnectManager;->encoding:Ljava/lang/String;

    move-object v11, v0

    invoke-direct {v10, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 529
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 532
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 534
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 535
    const-string v9, "SwypeConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BACK: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/swype/android/connect/ConnectManager;->processResult(Lcom/swype/android/connect/ConnectManager$MessageHandler;Lcom/swype/android/connect/util/Command;Lorg/json/JSONObject;)V
    :try_end_1b9
    .catch Lorg/json/JSONException; {:try_start_155 .. :try_end_1b9} :catch_38c
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_1b9} :catch_417
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1b9} :catch_45a

    move-object/from16 v18, v7

    move v7, v6

    move v6, v4

    move-object/from16 v4, v18

    .line 600
    :goto_1bf
    if-eqz v7, :cond_1c6

    if-eqz v4, :cond_1c6

    .line 601
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1c6
    move v4, v6

    move v6, v7

    .line 605
    :cond_1c8
    if-eqz v5, :cond_1cd

    .line 606
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 609
    :cond_1cd
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/swype/android/connect/ConnectManager;->processingCommand:Z

    .line 611
    if-nez v6, :cond_49b

    .line 612
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/swype/android/connect/ConnectManager;->delayQueueProcessing:Z

    .line 613
    monitor-enter p0

    .line 615
    :try_start_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 616
    monitor-exit p0

    goto/16 :goto_a

    :catchall_1ea
    move-exception v4

    monitor-exit p0
    :try_end_1ec
    .catchall {:try_start_1dc .. :try_end_1ec} :catchall_1ea

    throw v4

    .line 487
    :catch_1ed
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    .line 488
    :goto_1f3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConnectManager.processCommand() - send - JSONException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSON Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    .line 491
    const/4 v4, 0x1

    .line 500
    goto/16 :goto_113

    .line 492
    :catch_22d
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    .line 493
    :goto_233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConnectManager.processCommand() - send - ProtocolException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Protocol Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    .line 495
    const/4 v4, 0x1

    .line 500
    goto/16 :goto_113

    .line 496
    :catch_26d
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    .line 497
    :goto_273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConnectManager.processCommand() - send - IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 498
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    .line 499
    const/4 v4, 0x1

    goto/16 :goto_113

    .line 512
    :catch_2ad
    move-exception v4

    .line 513
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException trying to get response code"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 514
    const/4 v4, 0x1

    move/from16 v18, v6

    move v6, v4

    move/from16 v4, v18

    .line 518
    goto/16 :goto_152

    .line 515
    :catch_2d0
    move-exception v4

    .line 516
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException trying to get response code"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 517
    const/4 v4, 0x1

    move/from16 v18, v6

    move v6, v4

    move/from16 v4, v18

    goto/16 :goto_152

    .line 539
    :cond_2f3
    if-gtz v8, :cond_2f8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3e7

    :cond_2f8
    :try_start_2f8
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->hasSufficientSpace(I)Z

    move-result v9

    if-eqz v9, :cond_3e7

    .line 541
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/swype/android/connect/util/Command;->notifyDownloadStatus:Z

    move v9, v0

    .line 542
    const/4 v10, 0x0

    .line 543
    const/4 v11, 0x0

    .line 544
    div-int/lit8 v12, v8, 0x64

    .line 546
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Downloading file now. total size is: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 548
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 549
    const-string v14, "temp"

    const-string v15, ".download"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/swype/android/connect/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_340
    .catch Lorg/json/JSONException; {:try_start_2f8 .. :try_end_340} :catch_38c
    .catch Ljava/io/IOException; {:try_start_2f8 .. :try_end_340} :catch_417
    .catch Ljava/lang/Exception; {:try_start_2f8 .. :try_end_340} :catch_45a

    move-result-object v7

    .line 550
    :try_start_341
    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 552
    const/4 v15, 0x0

    move/from16 v18, v15

    move v15, v10

    move/from16 v10, v18

    .line 553
    :cond_351
    if-nez v10, :cond_3cf

    .line 554
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->read()I

    move-result v16

    .line 555
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3cd

    .line 556
    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 557
    add-int/lit8 v15, v15, 0x1

    .line 558
    add-int/lit8 v11, v11, 0x1

    .line 563
    :goto_369
    if-eqz v9, :cond_37e

    if-ge v11, v12, :cond_374

    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_37e

    .line 564
    :cond_374
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/swype/android/connect/ConnectManager;->processDownloadStatusResult(Lcom/swype/android/connect/util/Command;II)V

    .line 565
    const/4 v11, 0x0

    .line 569
    :cond_37e
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/connect/ConnectManager;->isOnline()Z

    move-result v16

    if-nez v16, :cond_351

    .line 570
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Connection lost"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_38c
    .catch Lorg/json/JSONException; {:try_start_341 .. :try_end_38c} :catch_38c
    .catch Ljava/io/IOException; {:try_start_341 .. :try_end_38c} :catch_4f5
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_38c} :catch_45a

    .line 586
    :catch_38c
    move-exception v6

    .line 587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConnectManager.processCommand() - recieve - JSONException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 588
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JSON Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    .line 589
    const/4 v6, 0x1

    move-object/from16 v18, v7

    move v7, v6

    move v6, v4

    move-object/from16 v4, v18

    .line 599
    goto/16 :goto_1bf

    .line 560
    :cond_3cd
    const/4 v10, 0x1

    goto :goto_369

    .line 573
    :cond_3cf
    :try_start_3cf
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 574
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/swype/android/connect/ConnectManager;->processFileResult(Lcom/swype/android/connect/ConnectManager$MessageHandler;Lcom/swype/android/connect/util/Command;Ljava/io/File;)V
    :try_end_3df
    .catch Lorg/json/JSONException; {:try_start_3cf .. :try_end_3df} :catch_38c
    .catch Ljava/io/IOException; {:try_start_3cf .. :try_end_3df} :catch_4f5
    .catch Ljava/lang/Exception; {:try_start_3cf .. :try_end_3df} :catch_45a

    move-object/from16 v18, v7

    move v7, v6

    move v6, v4

    move-object/from16 v4, v18

    .line 576
    goto/16 :goto_1bf

    :cond_3e7
    if-gtz v8, :cond_3ec

    const/4 v9, -0x1

    if-ne v8, v9, :cond_40e

    :cond_3ec
    :try_start_3ec
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->hasSufficientSpace(I)Z

    move-result v9

    if-nez v9, :cond_40e

    .line 578
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/swype/android/connect/util/Command;->notifyDownloadStatus:Z

    move v9, v0

    .line 579
    if-eqz v9, :cond_406

    .line 580
    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v9

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/swype/android/connect/ConnectManager;->processDownloadStatusResult(Lcom/swype/android/connect/util/Command;II)V
    :try_end_406
    .catch Lorg/json/JSONException; {:try_start_3ec .. :try_end_406} :catch_38c
    .catch Ljava/io/IOException; {:try_start_3ec .. :try_end_406} :catch_417
    .catch Ljava/lang/Exception; {:try_start_3ec .. :try_end_406} :catch_45a

    :cond_406
    move-object/from16 v18, v7

    move v7, v6

    move v6, v4

    move-object/from16 v4, v18

    .line 582
    goto/16 :goto_1bf

    .line 583
    :cond_40e
    const/4 v6, 0x1

    move-object/from16 v18, v7

    move v7, v6

    move v6, v4

    move-object/from16 v4, v18

    .line 599
    goto/16 :goto_1bf

    .line 590
    :catch_417
    move-exception v4

    move-object v6, v7

    .line 591
    :goto_419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConnectManager.processCommand() - recieve - IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 592
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    .line 593
    const/4 v4, 0x1

    .line 594
    const/4 v7, 0x1

    move-object/from16 v18, v6

    move v6, v7

    move v7, v4

    move-object/from16 v4, v18

    .line 599
    goto/16 :goto_1bf

    .line 595
    :catch_45a
    move-exception v6

    .line 596
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConnectManager.processCommand() - recieve - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 597
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    .line 598
    const/4 v6, 0x1

    move-object/from16 v18, v7

    move v7, v6

    move v6, v4

    move-object/from16 v4, v18

    goto/16 :goto_1bf

    .line 617
    :cond_49b
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4be

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/swype/android/connect/util/Command;->handleIOException:Z

    move v4, v0

    if-nez v4, :cond_4be

    .line 618
    monitor-enter p0

    .line 620
    :try_start_4a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 621
    monitor-exit p0
    :try_end_4b2
    .catchall {:try_start_4a6 .. :try_end_4b2} :catchall_4bb

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/swype/android/connect/ConnectManager;->processIOException(Lcom/swype/android/connect/util/Command;)V

    goto/16 :goto_a

    .line 621
    :catchall_4bb
    move-exception v4

    :try_start_4bc
    monitor-exit p0
    :try_end_4bd
    .catchall {:try_start_4bc .. :try_end_4bd} :catchall_4bb

    throw v4

    .line 625
    :cond_4be
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection Error with Connect Servers, retrying in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/swype/android/connect/ConnectManager;->DEFAULT_DELAY_SECONDS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 626
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/swype/android/connect/ConnectManager;->delayQueueProcessing:Z

    .line 628
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 629
    sget v5, Lcom/swype/android/connect/ConnectManager;->DEFAULT_DELAY_SECONDS:I

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->sendMessageDelayedSeconds(Landroid/os/Message;I)V

    goto/16 :goto_a

    .line 590
    :catch_4f5
    move-exception v4

    move-object v6, v7

    goto/16 :goto_419

    .line 496
    :catch_4f9
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    goto/16 :goto_273

    .line 492
    :catch_501
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    goto/16 :goto_233

    .line 487
    :catch_509
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    goto/16 :goto_1f3
.end method

.method private processDownloadStatusResult(Lcom/swype/android/connect/util/Command;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 745
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 746
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 748
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 749
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    return-void
.end method

.method private processFileResult(Lcom/swype/android/connect/ConnectManager$MessageHandler;Lcom/swype/android/connect/util/Command;Ljava/io/File;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 714
    new-instance v0, Lcom/swype/android/connect/util/Response;

    invoke-direct {v0}, Lcom/swype/android/connect/util/Response;-><init>()V

    .line 716
    iget-object v1, p2, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    .line 717
    iget-object v1, p2, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Response;->commandFamily:Ljava/lang/String;

    .line 718
    iget-object v1, p2, Lcom/swype/android/connect/util/Command;->deviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Response;->deviceId:Ljava/lang/String;

    .line 719
    iget-object v1, p2, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    .line 721
    const-string v1, "SUCCESS"

    iput-object v1, v0, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    .line 722
    iput-object p2, v0, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    .line 723
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/swype/android/connect/util/Response;->fileLocation:Ljava/lang/String;

    .line 726
    iput-object p3, v0, Lcom/swype/android/connect/util/Response;->file:Ljava/io/File;

    .line 728
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 729
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 730
    invoke-virtual {p1, v1}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloaded File: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-direct {p0, v0}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method private processIOException(Lcom/swype/android/connect/util/Command;)V
    .registers 4
    .parameter

    .prologue
    .line 925
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 926
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 927
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 928
    return-void
.end method

.method private processResult(Lcom/swype/android/connect/ConnectManager$MessageHandler;Lcom/swype/android/connect/util/Command;Lorg/json/JSONObject;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 759
    new-instance v1, Lcom/swype/android/connect/util/Response;

    invoke-direct {v1}, Lcom/swype/android/connect/util/Response;-><init>()V

    .line 761
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 765
    :try_start_c
    const-string v0, "status"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 766
    const-string v0, "status"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1c} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_12a

    .line 767
    :try_start_1c
    const-string v3, "status"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_2bb
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_2b5

    move-object v3, v0

    .line 770
    :cond_22
    :try_start_22
    iput-object v3, v1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    .line 771
    iget-object v0, p2, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    iput-object v0, v1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    .line 772
    iget-object v0, p2, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    iput-object v0, v1, Lcom/swype/android/connect/util/Response;->commandFamily:Ljava/lang/String;

    .line 774
    const-string v0, "deviceId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 775
    const-string v0, "deviceId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/swype/android/connect/util/Response;->deviceId:Ljava/lang/String;

    .line 776
    const-string v0, "deviceId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 779
    :cond_41
    const-string v0, "sessionId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 780
    const-string v0, "sessionId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/swype/android/connect/util/Response;->sessionId:Ljava/lang/String;

    .line 781
    const-string v0, "sessionId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 784
    :cond_56
    const-string v0, "transactionId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 785
    const-string v0, "transactionId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    .line 786
    const-string v0, "transactionId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 789
    :cond_6b
    const-string v0, "url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 790
    const-string v0, "url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/swype/android/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    .line 791
    const-string v0, "url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 794
    :cond_80
    const-string v0, "key"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 796
    const-string v0, "key"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 800
    :cond_8d
    const-string v0, "INVALID_DEVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 804
    iget-object v0, p2, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    const-string v4, "device"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 806
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v0

    .line 885
    :cond_a5
    :goto_a5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 887
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 888
    :goto_ae
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 889
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 890
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 891
    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_c1} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_c1} :catch_12a

    goto :goto_ae

    .line 896
    :catch_c2
    move-exception v0

    .line 897
    :goto_c3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectManager.processResult() - JSONException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    move-object v0, v2

    move-object v2, v3

    .line 904
    :goto_f9
    invoke-direct {p0, v2}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a0

    .line 907
    iput-object p2, v1, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    .line 908
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 910
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 911
    invoke-virtual {p1, v0}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 918
    :cond_10e
    :goto_10e
    return-void

    .line 808
    :cond_10f
    const/4 v0, 0x0

    :try_start_110
    iput-object v0, p0, Lcom/swype/android/connect/ConnectManager;->deviceId:Ljava/lang/String;

    .line 809
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v4, 0x47

    invoke-virtual {v0, v4}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 810
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 811
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V
    :try_end_128
    .catch Lorg/json/JSONException; {:try_start_110 .. :try_end_128} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_128} :catch_12a

    goto/16 :goto_a5

    .line 899
    :catch_12a
    move-exception v0

    .line 900
    :goto_12b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectManager.processResult() - Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/connect/ConnectManager;->statusMessage(Ljava/lang/String;)V

    move-object v0, v2

    move-object v2, v3

    goto :goto_f9

    .line 814
    :cond_162
    :try_start_162
    const-string v0, "INVALID_SESSION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/ConnectManager;->sessionId:Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v4, 0x46

    invoke-virtual {v0, v4}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 818
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto/16 :goto_a5

    .line 819
    :cond_17d
    const-string v0, "INVALID_TRANSACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 821
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    .line 822
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_a5

    .line 823
    :cond_190
    const-string v0, "SYSTEM_ERROR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    const-string v0, "INVALID_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    const-string v0, "INVALID_COMMAND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    const-string v0, "INVALID_COMMAND_FAMILY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 828
    :cond_1b0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 829
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 830
    sget v4, Lcom/swype/android/connect/ConnectManager;->DEFAULT_DELAY_SECONDS:I

    invoke-virtual {p1, v0, v4}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->sendMessageDelayedSeconds(Landroid/os/Message;I)V

    goto/16 :goto_a5

    .line 831
    :cond_1be
    const-string v0, "DELAY_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_205

    .line 835
    const-string v0, "delayFor"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    .line 836
    const-string v0, "delayFor"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    .line 840
    :goto_1d6
    iget v0, v1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    iput v0, p2, Lcom/swype/android/connect/util/Command;->delayedFor:I

    .line 842
    iget v0, v1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    sget v4, Lcom/swype/android/connect/ConnectManager;->MAX_DELAY_SECONDS:I

    if-le v0, v4, :cond_1e4

    .line 844
    sget v0, Lcom/swype/android/connect/ConnectManager;->MAX_DELAY_SECONDS:I

    iput v0, v1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    .line 847
    :cond_1e4
    iget v0, v1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    sget v4, Lcom/swype/android/connect/ConnectManager;->MAX_DELAY_SECONDS_INTERNAL:I

    if-ge v0, v4, :cond_1fd

    .line 850
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 851
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 852
    iget v4, p2, Lcom/swype/android/connect/util/Command;->delayedFor:I

    invoke-virtual {p1, v0, v4}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->sendMessageDelayedSeconds(Landroid/os/Message;I)V

    goto/16 :goto_a5

    .line 838
    :cond_1f8
    sget v0, Lcom/swype/android/connect/ConnectManager;->DEFAULT_DELAY_SECONDS:I

    iput v0, v1, Lcom/swype/android/connect/util/Response;->delayedFor:I

    goto :goto_1d6

    .line 856
    :cond_1fd
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_a5

    .line 859
    :cond_205
    const-string v0, "VALIDATE_DEVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23a

    .line 860
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 861
    const/16 v4, 0x25

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 862
    const-string v5, "propertiesToValidate"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_233

    .line 863
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 864
    const-string v6, "propertiesToValidate"

    const-string v7, "propertiesToValidate"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iput-object v5, v1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    .line 867
    :cond_233
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 868
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a5

    .line 870
    :cond_23a
    const-string v0, "SUCCESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    const-string v0, "FAILURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    const-string v0, "INVALID_ARGUMENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    const-string v0, "INVALID_BUILD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    const-string v0, "INVALID_LICENSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    const-string v0, "INVALID_LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    const-string v0, "INVALID_MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_282

    .line 878
    :cond_27a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_a5

    .line 880
    :cond_282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectManager.ProcessResult() UNKNOWN COMMAND: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 894
    :cond_29a
    iput-object v4, v1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;
    :try_end_29c
    .catch Lorg/json/JSONException; {:try_start_162 .. :try_end_29c} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_29c} :catch_12a

    move-object v0, v2

    move-object v2, v3

    .line 902
    goto/16 :goto_f9

    .line 912
    :cond_2a0
    iget v0, p2, Lcom/swype/android/connect/util/Command;->retryCount:I

    sub-int v1, v0, v8

    iput v1, p2, Lcom/swype/android/connect/util/Command;->retryCount:I

    if-ltz v0, :cond_10e

    .line 914
    invoke-virtual {p1, v9}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 915
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 916
    sget v1, Lcom/swype/android/connect/ConnectManager;->DEFAULT_DELAY_SECONDS:I

    invoke-virtual {p1, v0, v1}, Lcom/swype/android/connect/ConnectManager$MessageHandler;->sendMessageDelayedSeconds(Landroid/os/Message;I)V

    goto/16 :goto_10e

    .line 899
    :catch_2b5
    move-exception v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_12b

    .line 896
    :catch_2bb
    move-exception v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_c3
.end method

.method private statusMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    if-eqz v0, :cond_9

    .line 1034
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/ConnectClient;->sendStatus(Ljava/lang/String;)V

    .line 1036
    :cond_9
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->isRunning:Z

    if-eqz v0, :cond_b

    .line 240
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->isRunning:Z

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->quit:Z

    .line 244
    return-void
.end method

.method protected handleMessage(Lcom/swype/android/connect/ConnectManager$MessageHandler;Landroid/os/Message;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 262
    iget v0, p2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9c

    .line 323
    :cond_6
    :goto_6
    return-void

    .line 264
    :pswitch_7
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/swype/android/connect/util/Command;

    if-eqz v0, :cond_6

    .line 265
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/swype/android/connect/util/Command;

    .line 266
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    goto :goto_6

    .line 271
    :pswitch_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->delayQueueProcessing:Z

    goto :goto_6

    .line 275
    :pswitch_19
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/swype/android/connect/util/Response;

    if-eqz v0, :cond_72

    .line 276
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/swype/android/connect/util/Response;

    .line 277
    iget-object v1, v0, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    .line 278
    iget-object v2, v1, Lcom/swype/android/connect/util/Command;->callbackManager:Lcom/swype/android/connect/manager/AbstractCommandManager;

    .line 280
    iput-object v3, v1, Lcom/swype/android/connect/util/Command;->callbackManager:Lcom/swype/android/connect/manager/AbstractCommandManager;

    .line 281
    if-eqz v2, :cond_49

    .line 285
    iget-object v1, v0, Lcom/swype/android/connect/util/Response;->fileLocation:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 286
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/swype/android/connect/util/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    iput-object v1, v0, Lcom/swype/android/connect/util/Response;->file:Ljava/io/File;

    .line 288
    invoke-virtual {v2, v0}, Lcom/swype/android/connect/manager/AbstractCommandManager;->onFileResponse(Lcom/swype/android/connect/util/Response;)V

    .line 296
    :goto_3b
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->responseListener:Lcom/swype/android/connect/ConnectClient$ResponseListener;

    if-eqz v1, :cond_6

    .line 297
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->responseListener:Lcom/swype/android/connect/ConnectClient$ResponseListener;

    invoke-interface {v1, v0}, Lcom/swype/android/connect/ConnectClient$ResponseListener;->onResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_6

    .line 290
    :cond_45
    invoke-virtual {v2, v0}, Lcom/swype/android/connect/manager/AbstractCommandManager;->onResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_3b

    .line 293
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_HANDLE_CALLBACK callback manager is missing!!! command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    iget-object v2, v2, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/swype/android/connect/util/Response;->initialCommand:Lcom/swype/android/connect/util/Command;

    iget-object v2, v2, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_3b

    .line 299
    :cond_72
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/swype/android/connect/util/Command;

    if-eqz v0, :cond_6

    .line 300
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/swype/android/connect/util/Command;

    .line 301
    iget-object v0, p0, Lcom/swype/android/connect/util/Command;->callbackManager:Lcom/swype/android/connect/manager/AbstractCommandManager;

    .line 302
    if-eqz v0, :cond_6

    .line 303
    iget v1, p2, Landroid/os/Message;->arg1:I

    iget v2, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/swype/android/connect/manager/AbstractCommandManager;->onDownloadStatusResponse(Lcom/swype/android/connect/util/Command;II)V

    goto/16 :goto_6

    .line 309
    :pswitch_89
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/swype/android/connect/util/Command;

    if-eqz v0, :cond_6

    .line 310
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/swype/android/connect/util/Command;

    .line 311
    iget-object v0, p0, Lcom/swype/android/connect/util/Command;->callbackManager:Lcom/swype/android/connect/manager/AbstractCommandManager;

    .line 313
    iput-object v3, p0, Lcom/swype/android/connect/util/Command;->callbackManager:Lcom/swype/android/connect/manager/AbstractCommandManager;

    .line 316
    invoke-virtual {v0, p0}, Lcom/swype/android/connect/manager/AbstractCommandManager;->onIOExceptionResponse(Lcom/swype/android/connect/util/Command;)V

    goto/16 :goto_6

    .line 262
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_15
        :pswitch_19
        :pswitch_89
    .end packed-switch
.end method

.method public isOnline()Z
    .registers 2

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->hasConnectivity:Z

    return v0
.end method

.method protected processNextCommand(Lcom/swype/android/connect/ConnectManager$MessageHandler;)V
    .registers 3
    .parameter "handle"

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/swype/android/connect/ConnectManager;->processNextCommand(Lcom/swype/android/connect/ConnectManager$MessageHandler;I)V

    .line 342
    return-void
.end method

.method protected processNextCommand(Lcom/swype/android/connect/ConnectManager$MessageHandler;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    .line 350
    const/4 v0, 0x0

    .line 352
    iget-boolean v1, p0, Lcom/swype/android/connect/ConnectManager;->hasConnectivity:Z

    if-nez v1, :cond_8

    .line 426
    :cond_7
    :goto_7
    return-void

    .line 356
    :cond_8
    monitor-enter p0

    .line 357
    if-nez p2, :cond_91

    .line 358
    :try_start_b
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/util/Command;

    .line 370
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_b1

    .line 372
    if-eqz v0, :cond_7

    .line 377
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_22

    .line 379
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/connect/ConnectManager;->deviceId:Ljava/lang/String;

    .line 382
    :cond_22
    iget-boolean v1, v0, Lcom/swype/android/connect/util/Command;->requireDevice:Z

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_bb

    .line 385
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_bb

    .line 386
    const-string v1, "device"

    sget-object v2, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->register:Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;

    invoke-virtual {v2}, Lcom/swype/android/connect/manager/DeviceManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/swype/android/connect/ConnectManager;->isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 388
    const-string v1, "ProcessCommand()  deviceId is null, no queued register device command found -- sending register request"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    :cond_48
    move v1, v5

    .line 396
    :goto_49
    iget-boolean v2, v0, Lcom/swype/android/connect/util/Command;->needDevice:Z

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_7f

    .line 398
    :cond_51
    iget-boolean v2, v0, Lcom/swype/android/connect/util/Command;->requireSession:Z

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_80

    .line 401
    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/swype/android/connect/ConnectClient;->getSessionId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/swype/android/connect/ConnectManager;->sessionId:Ljava/lang/String;

    .line 403
    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_80

    .line 404
    const-string v1, "session"

    sget-object v2, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->create:Lcom/swype/android/connect/manager/SessionManager$ValidCommands;

    invoke-virtual {v2}, Lcom/swype/android/connect/manager/SessionManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/swype/android/connect/ConnectManager;->isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 406
    const-string v1, "ProcessCommand()  sessionId is null, no queued create session command found -- sending session create request"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    :cond_7f
    move v1, v5

    .line 416
    :cond_80
    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->requestKey:Ljava/lang/String;

    if-nez v2, :cond_8a

    .line 418
    invoke-static {}, Lcom/swype/android/connect/security/RequestKey;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/swype/android/connect/ConnectManager;->requestKey:Ljava/lang/String;

    .line 421
    :cond_8a
    if-nez v1, :cond_b4

    .line 422
    invoke-direct {p0, p1, v0}, Lcom/swype/android/connect/ConnectManager;->processCommand(Lcom/swype/android/connect/ConnectManager$MessageHandler;Lcom/swype/android/connect/util/Command;)V

    goto/16 :goto_7

    .line 359
    :cond_91
    :try_start_91
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-gt p2, v1, :cond_13

    .line 361
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    .line 362
    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 363
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/util/Command;

    .line 364
    if-eq v2, p2, :cond_13

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    .line 370
    :catchall_b1
    move-exception v0

    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_91 .. :try_end_b3} :catchall_b1

    throw v0

    .line 424
    :cond_b4
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/swype/android/connect/ConnectManager;->processNextCommand(Lcom/swype/android/connect/ConnectManager$MessageHandler;I)V

    goto/16 :goto_7

    :cond_bb
    move v1, v4

    goto :goto_49
.end method

.method public registerResponseListener(Lcom/swype/android/connect/ConnectClient$ResponseListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/swype/android/connect/ConnectManager;->responseListener:Lcom/swype/android/connect/ConnectClient$ResponseListener;

    .line 1024
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 222
    :goto_0
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->quit:Z

    if-nez v0, :cond_1a

    .line 223
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->hasConnectivity:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->delayQueueProcessing:Z

    if-nez v0, :cond_11

    .line 224
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectManager;->processNextCommand(Lcom/swype/android/connect/ConnectManager$MessageHandler;)V

    .line 227
    :cond_11
    :try_start_11
    sget v0, Lcom/swype/android/connect/ConnectManager;->DELAY_BETWEEN_CONNECTIONS:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_0

    .line 229
    :catch_18
    move-exception v0

    goto :goto_0

    .line 231
    :cond_1a
    invoke-direct {p0}, Lcom/swype/android/connect/ConnectManager;->cleanup()V

    .line 232
    return-void
.end method

.method public declared-synchronized sendCommand(Lcom/swype/android/connect/util/Command;)V
    .registers 4
    .parameter

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p1, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget-object v0, p1, Lcom/swype/android/connect/util/Command;->commandFamily:Ljava/lang/String;

    iget-object v1, p1, Lcom/swype/android/connect/util/Command;->command:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/ConnectManager;->isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 333
    :cond_10
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 335
    :cond_15
    monitor-exit p0

    return-void

    .line 331
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 198
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->isRunning:Z

    if-eqz v0, :cond_6

    .line 218
    :goto_5
    return-void

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/ConnectManager;->serverURL:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "DEFAULT_DELAY"

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/swype/android/connect/ConnectManager;->DEFAULT_DELAY_SECONDS:I

    .line 207
    iput-boolean v2, p0, Lcom/swype/android/connect/ConnectManager;->isRunning:Z

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/ConnectManager;->quit:Z

    .line 209
    invoke-virtual {p0, v2}, Lcom/swype/android/connect/ConnectManager;->setPriority(I)V

    .line 210
    new-instance v0, Lcom/swype/android/connect/ConnectManager$MessageHandler;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectManager$MessageHandler;-><init>(Lcom/swype/android/connect/ConnectManager;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectManager;->mHandler:Lcom/swype/android/connect/ConnectManager$MessageHandler;

    .line 212
    invoke-direct {p0}, Lcom/swype/android/connect/ConnectManager;->checkAvailableNetworkConnections()V

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v1, "com.swype.android.connect.RefreshConnectData"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/swype/android/connect/ConnectManager;->client:Lcom/swype/android/connect/ConnectClient;

    iget-object v2, p0, Lcom/swype/android/connect/ConnectManager;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/ConnectClient;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method
