.class public Landroid/support/place/music/MediaPlayerConfigurator;
.super Ljava/lang/Object;
.source "MediaPlayerConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;
    }
.end annotation


# static fields
.field private static RE_MULTICAST:Ljava/util/regex/Pattern;

.field private static RE_UNICAST:Ljava/util/regex/Pattern;

.field private static TGS_REQUEST_FIELD_MODE:Ljava/lang/String;

.field private static TGS_REQUEST_FIELD_MULTICAST_ADDR:Ljava/lang/String;

.field private static TGS_REQUEST_FIELD_MULTICAST_PORT:Ljava/lang/String;

.field private static TGS_REQUEST_VALUE_MODE_MULTICAST:Ljava/lang/String;

.field private static TGS_REQUEST_VALUE_MODE_UNICAST:Ljava/lang/String;


# instance fields
.field private mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

.field private mHandler:Landroid/os/Handler;

.field private mMode:I

.field private mMulticastRetransmitHostname:Ljava/lang/String;

.field private mMulticastRetransmitPort:I

.field private mRestoreUnicastGroupRunnable:Ljava/lang/Runnable;

.field private mUnicastCncPort:I

.field private mUnicastGroupErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "mode"

    sput-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MODE:Ljava/lang/String;

    .line 28
    const-string v0, "multicast"

    sput-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_VALUE_MODE_MULTICAST:Ljava/lang/String;

    .line 29
    const-string v0, "unicast"

    sput-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_VALUE_MODE_UNICAST:Ljava/lang/String;

    .line 30
    const-string v0, "multicastAddr"

    sput-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MULTICAST_ADDR:Ljava/lang/String;

    .line 31
    const-string v0, "multicastPort"

    sput-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MULTICAST_PORT:Ljava/lang/String;

    .line 202
    const-string v0, "mode=1;port=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->RE_UNICAST:Ljava/util/regex/Pattern;

    .line 205
    const-string v0, "mode=2;host=([\\d\\.]+);port=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->RE_MULTICAST:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mHandler:Landroid/os/Handler;

    .line 295
    new-instance v0, Landroid/support/place/music/MediaPlayerConfigurator$1;

    invoke-direct {v0, p0}, Landroid/support/place/music/MediaPlayerConfigurator$1;-><init>(Landroid/support/place/music/MediaPlayerConfigurator;)V

    iput-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastGroupErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 335
    new-instance v0, Landroid/support/place/music/MediaPlayerConfigurator$2;

    invoke-direct {v0, p0}, Landroid/support/place/music/MediaPlayerConfigurator$2;-><init>(Landroid/support/place/music/MediaPlayerConfigurator;)V

    iput-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mRestoreUnicastGroupRunnable:Ljava/lang/Runnable;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/place/music/MediaPlayerConfigurator;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$102(Landroid/support/place/music/MediaPlayerConfigurator;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I

    return p1
.end method

.method static synthetic access$200(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/place/music/MediaPlayerConfigurator;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mRestoreUnicastGroupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/place/music/MediaPlayerConfigurator;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/place/music/MediaPlayerConfigurator;->restoreUnicastGroup()V

    return-void
.end method

.method public static configureMediaPlayer(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .registers 10
    .parameter "player"
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    .line 214
    sget-object v5, Landroid/support/place/music/MediaPlayerConfigurator;->RE_UNICAST:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 215
    .local v3, matchUnicast:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 216
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 217
    .local v4, port:I
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v5, "0.0.0.0"

    invoke-direct {v0, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 229
    .local v0, endpoint:Ljava/net/InetSocketAddress;
    :goto_1c
    invoke-static {p0, v0}, Landroid/support/place/music/MediaPlayerConfigurator;->setRetransmitEndpoint(Landroid/media/MediaPlayer;Ljava/net/InetSocketAddress;)V

    .line 230
    return-void

    .line 219
    .end local v0           #endpoint:Ljava/net/InetSocketAddress;
    .end local v4           #port:I
    :cond_20
    sget-object v5, Landroid/support/place/music/MediaPlayerConfigurator;->RE_MULTICAST:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 220
    .local v2, matchMulticast:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 221
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, hostname:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 223
    .restart local v4       #port:I
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 224
    .restart local v0       #endpoint:Ljava/net/InetSocketAddress;
    goto :goto_1c

    .line 225
    .end local v0           #endpoint:Ljava/net/InetSocketAddress;
    .end local v1           #hostname:Ljava/lang/String;
    .end local v4           #port:I
    :cond_3f
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized config string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static invokeGetCncPort(Landroid/media/MediaPlayer;)I
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 241
    :try_start_1
    const-class v0, Landroid/media/MediaPlayer;

    const-string v1, "invoke"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Parcel;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Parcel;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 242
    const-class v0, Landroid/media/MediaPlayer;

    const-string v3, "newRequest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_20} :catch_7c

    move-result-object v0

    .line 249
    const/4 v3, 0x0

    :try_start_22
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_9c
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_2a} :catch_a9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_2a} :catch_92

    .line 250
    const v3, 0xb33977

    :try_start_2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_33} :catch_ac
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_33} :catch_a4

    move-result-object v2

    .line 252
    const/4 v3, 0x2

    :try_start_35
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 253
    if-eqz v1, :cond_83

    .line 254
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeGetCncPort failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_62
    .catchall {:try_start_35 .. :try_end_62} :catchall_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_62} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_62} :catch_a4

    .line 257
    :catch_62
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    .line 258
    :goto_67
    :try_start_67
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6d

    .line 262
    :catchall_6d
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    :goto_71
    if-eqz v1, :cond_76

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    :cond_76
    if-eqz v2, :cond_7b

    .line 266
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_7b
    throw v0

    .line 243
    :catch_7c
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 256
    :cond_83
    :try_start_83
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_83 .. :try_end_86} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_83 .. :try_end_86} :catch_a4

    move-result v1

    .line 262
    if-eqz v0, :cond_8c

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    :cond_8c
    if-eqz v2, :cond_91

    .line 266
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_91
    return v1

    .line 259
    :catch_92
    move-exception v0

    move-object v1, v2

    .line 260
    :goto_94
    :try_start_94
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_9a

    .line 262
    :catchall_9a
    move-exception v0

    goto :goto_71

    :catchall_9c
    move-exception v0

    move-object v1, v2

    goto :goto_71

    :catchall_9f
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_71

    .line 259
    :catch_a4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_94

    .line 257
    :catch_a9
    move-exception v0

    move-object v1, v2

    goto :goto_67

    :catch_ac
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_67
.end method

.method private restoreUnicastGroup()V
    .registers 8

    .prologue
    .line 321
    :try_start_0
    invoke-direct {p0}, Landroid/support/place/music/MediaPlayerConfigurator;->setupForUnicast()Landroid/support/place/music/TgsUnicastConfig;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    move-result-object v2

    .line 328
    .local v2, unicastConfig:Landroid/support/place/music/TgsUnicastConfig;
    iget-object v3, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    if-eqz v3, :cond_15

    .line 329
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 330
    .local v1, result:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v2, v1}, Landroid/support/place/music/TgsUnicastConfig;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 331
    iget-object v3, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    invoke-interface {v3, v1}, Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;->onConfigurationRestored(Landroid/support/place/rpc/RpcData;)V

    .line 333
    .end local v1           #result:Landroid/support/place/rpc/RpcData;
    .end local v2           #unicastConfig:Landroid/support/place/music/TgsUnicastConfig;
    :cond_15
    :goto_15
    return-void

    .line 322
    :catch_16
    move-exception v0

    .line 323
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MediaPlayerConfigurator"

    const-string v4, "restoreUnicastGroup failed; retrying"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v3, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mRestoreUnicastGroupRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15
.end method

.method private static setRetransmitEndpoint(Landroid/media/MediaPlayer;Ljava/net/InetSocketAddress;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 277
    :try_start_0
    const-class v0, Landroid/media/MediaPlayer;

    const-string v1, "setRetransmitEndpoint"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/net/InetSocketAddress;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_f} :catch_42

    move-result-object v0

    .line 283
    const/4 v1, 0x1

    :try_start_11
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 284
    if-eqz v0, :cond_50

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRetransmitEndpoint failed, err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_3b} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_3b} :catch_49

    .line 287
    :catch_3b
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 278
    :catch_42
    move-exception v0

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 289
    :catch_49
    move-exception v0

    .line 290
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 292
    :cond_50
    return-void
.end method

.method private setupForMulticast(Ljava/lang/String;I)V
    .registers 4
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 175
    iput-object p1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMulticastRetransmitHostname:Ljava/lang/String;

    .line 176
    iput p2, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMulticastRetransmitPort:I

    .line 178
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    .line 179
    return-void
.end method

.method private setupForUnicast()Landroid/support/place/music/TgsUnicastConfig;
    .registers 6

    .prologue
    .line 152
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    .line 154
    :try_start_7
    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "0.0.0.0"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Landroid/support/place/music/MediaPlayerConfigurator;->setRetransmitEndpoint(Landroid/media/MediaPlayer;Ljava/net/InetSocketAddress;)V

    .line 156
    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "http://127.0.0.1/foo.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/support/place/music/MediaPlayerConfigurator;->invokeGetCncPort(Landroid/media/MediaPlayer;)I

    move-result v1

    iput v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_3d

    .line 164
    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastGroupErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 165
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    .line 167
    new-instance v1, Landroid/support/place/music/TgsUnicastConfig;

    invoke-static {}, Landroid/support/place/utils/IPUtils;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I

    invoke-direct {v1, v2, v3}, Landroid/support/place/music/TgsUnicastConfig;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 158
    :catch_3d
    move-exception v0

    .line 159
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public configure(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/RpcData;
    .registers 10
    .parameter "args"

    .prologue
    .line 104
    iget v5, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    if-eqz v5, :cond_c

    .line 105
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Must reset MediaPlayerConfigurator"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_c
    sget-object v5, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MODE:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, mode:Ljava/lang/String;
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 111
    .local v3, result:Landroid/support/place/rpc/RpcData;
    sget-object v5, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_VALUE_MODE_UNICAST:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 112
    invoke-direct {p0}, Landroid/support/place/music/MediaPlayerConfigurator;->setupForUnicast()Landroid/support/place/music/TgsUnicastConfig;

    move-result-object v4

    .line 113
    .local v4, unicastConfig:Landroid/support/place/music/TgsUnicastConfig;
    invoke-virtual {v4, v3}, Landroid/support/place/music/TgsUnicastConfig;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 122
    .end local v4           #unicastConfig:Landroid/support/place/music/TgsUnicastConfig;
    :goto_26
    return-object v3

    .line 114
    :cond_27
    sget-object v5, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_VALUE_MODE_MULTICAST:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 115
    sget-object v5, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MULTICAST_ADDR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, multicastAddr:Ljava/lang/String;
    sget-object v5, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MULTICAST_PORT:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 117
    .local v2, multicastPort:I
    invoke-direct {p0, v1, v2}, Landroid/support/place/music/MediaPlayerConfigurator;->setupForMulticast(Ljava/lang/String;I)V

    goto :goto_26

    .line 119
    .end local v1           #multicastAddr:Ljava/lang/String;
    .end local v2           #multicastPort:I
    :cond_3f
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getConfigurationString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    iget v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 191
    const-string v1, ";port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    :goto_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    :cond_25
    iget v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 193
    const-string v1, ";host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMulticastRetransmitHostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ";port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMulticastRetransmitPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 196
    :cond_41
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MediaPlayerConfigurator not configured"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I

    .line 89
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    .line 90
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    .line 94
    :cond_12
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mRestoreUnicastGroupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public setErrorHandler(Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;)V
    .registers 2
    .parameter "errorHandler"

    .prologue
    .line 82
    iput-object p1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    .line 83
    return-void
.end method
