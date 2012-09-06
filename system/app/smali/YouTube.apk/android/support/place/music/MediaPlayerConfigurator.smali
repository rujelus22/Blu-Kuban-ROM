.class public Landroid/support/place/music/MediaPlayerConfigurator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INADDR_ANY:Ljava/lang/String; = "0.0.0.0"

.field private static final INVOKE_GET_CNC_PORT:I = 0xb33977

.field private static final MODE_MULTICAST:I = 0x2

.field private static final MODE_UNCONFIGURED:I = 0x0

.field private static final MODE_UNICAST:I = 0x1

.field private static final PLACEHOLDER_URL:Ljava/lang/String; = "http://127.0.0.1/foo.mp3"

.field private static RE_MULTICAST:Ljava/util/regex/Pattern; = null

.field private static RE_UNICAST:Ljava/util/regex/Pattern; = null

.field public static final TAG:Ljava/lang/String; = "MediaPlayerConfigurator"

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
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/place/music/MediaPlayerConfigurator;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$102(Landroid/support/place/music/MediaPlayerConfigurator;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I

    return p1
.end method

.method static synthetic access$200(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/place/music/MediaPlayerConfigurator;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mRestoreUnicastGroupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/place/music/MediaPlayerConfigurator;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/place/music/MediaPlayerConfigurator;)V
    .registers 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/place/music/MediaPlayerConfigurator;->restoreUnicastGroup()V

    return-void
.end method

.method public static configureMediaPlayer(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 214
    sget-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->RE_UNICAST:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 216
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v2, "0.0.0.0"

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 229
    :goto_1c
    invoke-static {p0, v0}, Landroid/support/place/music/MediaPlayerConfigurator;->setRetransmitEndpoint(Landroid/media/MediaPlayer;Ljava/net/InetSocketAddress;)V

    .line 230
    return-void

    .line 219
    :cond_20
    sget-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->RE_MULTICAST:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 221
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 223
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_1c

    .line 225
    :cond_3f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized config string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getConfigureArgsForMulticast(Ljava/lang/String;I)Landroid/support/place/rpc/RpcData;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 138
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 139
    sget-object v1, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MODE:Ljava/lang/String;

    sget-object v2, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_VALUE_MODE_MULTICAST:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v1, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MULTICAST_ADDR:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v1, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MULTICAST_PORT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 142
    return-object v0
.end method

.method public static getConfigureArgsForUnicast()Landroid/support/place/rpc/RpcData;
    .registers 3

    .prologue
    .line 129
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 130
    sget-object v1, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MODE:Ljava/lang/String;

    sget-object v2, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_VALUE_MODE_UNICAST:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v0
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
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_20} :catch_78

    move-result-object v0

    .line 249
    const/4 v3, 0x0

    :try_start_22
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_98
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_2a} :catch_a5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_2a} :catch_8e

    .line 250
    const v3, 0xb33977

    :try_start_2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_33} :catch_a8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_33} :catch_a0

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
    if-eqz v1, :cond_7f

    .line 254
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invokeGetCncPort failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_5e} :catch_5e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_5e} :catch_a0

    .line 257
    :catch_5e
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    .line 258
    :goto_63
    :try_start_63
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_69

    .line 262
    :catchall_69
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    :goto_6d
    if-eqz v1, :cond_72

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    :cond_72
    if-eqz v2, :cond_77

    .line 266
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_77
    throw v0

    .line 243
    :catch_78
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 256
    :cond_7f
    :try_start_7f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_7f .. :try_end_82} :catch_5e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7f .. :try_end_82} :catch_a0

    move-result v1

    .line 262
    if-eqz v0, :cond_88

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    :cond_88
    if-eqz v2, :cond_8d

    .line 266
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_8d
    return v1

    .line 259
    :catch_8e
    move-exception v0

    move-object v1, v2

    .line 260
    :goto_90
    :try_start_90
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_96

    .line 262
    :catchall_96
    move-exception v0

    goto :goto_6d

    :catchall_98
    move-exception v0

    move-object v1, v2

    goto :goto_6d

    :catchall_9b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6d

    .line 259
    :catch_a0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_90

    .line 257
    :catch_a5
    move-exception v0

    move-object v1, v2

    goto :goto_63

    :catch_a8
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_63
.end method

.method private restoreUnicastGroup()V
    .registers 5

    .prologue
    .line 321
    :try_start_0
    invoke-direct {p0}, Landroid/support/place/music/MediaPlayerConfigurator;->setupForUnicast()Landroid/support/place/music/TgsUnicastConfig;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    move-result-object v0

    .line 328
    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    if-eqz v1, :cond_15

    .line 329
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 330
    invoke-virtual {v0, v1}, Landroid/support/place/music/TgsUnicastConfig;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 331
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    invoke-interface {v0, v1}, Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;->onConfigurationRestored(Landroid/support/place/rpc/RpcData;)V

    .line 333
    :cond_15
    :goto_15
    return-void

    .line 323
    :catch_16
    move-exception v0

    const-string v0, "MediaPlayerConfigurator"

    const-string v1, "restoreUnicastGroup failed; retrying"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mRestoreUnicastGroupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_f} :catch_3e

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
    if-eqz v0, :cond_4c

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setRetransmitEndpoint failed, err="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_37} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_37} :catch_45

    .line 287
    :catch_37
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 278
    :catch_3e
    move-exception v0

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 289
    :catch_45
    move-exception v0

    .line 290
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 291
    :cond_4c
    return-void
.end method

.method private setupForMulticast(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

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
    .registers 5

    .prologue
    .line 152
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    .line 154
    :try_start_7
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "0.0.0.0"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Landroid/support/place/music/MediaPlayerConfigurator;->setRetransmitEndpoint(Landroid/media/MediaPlayer;Ljava/net/InetSocketAddress;)V

    .line 156
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    const-string v1, "http://127.0.0.1/foo.mp3"

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/support/place/music/MediaPlayerConfigurator;->invokeGetCncPort(Landroid/media/MediaPlayer;)I

    move-result v0

    iput v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_3d

    .line 164
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastTransmitGroupMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastGroupErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    .line 167
    new-instance v0, Landroid/support/place/music/TgsUnicastConfig;

    invoke-static {}, Landroid/support/place/utils/IPUtils;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mUnicastCncPort:I

    invoke-direct {v0, v1, v2}, Landroid/support/place/music/TgsUnicastConfig;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 158
    :catch_3d
    move-exception v0

    .line 159
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
    .registers 6
    .parameter

    .prologue
    .line 104
    iget v0, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mMode:I

    if-eqz v0, :cond_c

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must reset MediaPlayerConfigurator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_c
    sget-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 111
    sget-object v2, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_VALUE_MODE_UNICAST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 112
    invoke-direct {p0}, Landroid/support/place/music/MediaPlayerConfigurator;->setupForUnicast()Landroid/support/place/music/TgsUnicastConfig;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v1}, Landroid/support/place/music/TgsUnicastConfig;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 122
    :goto_26
    return-object v1

    .line 114
    :cond_27
    sget-object v2, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_VALUE_MODE_MULTICAST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 115
    sget-object v0, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MULTICAST_ADDR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-object v2, Landroid/support/place/music/MediaPlayerConfigurator;->TGS_REQUEST_FIELD_MULTICAST_PORT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 117
    invoke-direct {p0, v0, v2}, Landroid/support/place/music/MediaPlayerConfigurator;->setupForMulticast(Ljava/lang/String;I)V

    goto :goto_26

    .line 119
    :cond_3f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConfigurationString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
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

    move-result-object v0

    return-object v0

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
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MediaPlayerConfigurator not configured"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Landroid/support/place/music/MediaPlayerConfigurator;->mErrorHandler:Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;

    .line 83
    return-void
.end method
