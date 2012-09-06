.class public final Lcom/google/android/youtube/app/remote/at;
.super Lcom/google/android/youtube/app/remote/n;
.source "SourceFile"


# static fields
.field private static final a:Lorg/json/JSONObject;

.field private static final b:Landroid/content/IntentFilter;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/Random;


# instance fields
.field private A:D

.field private B:J

.field private C:Z

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lcom/google/android/ytremote/backend/browserchannel/i;

.field private final h:Lcom/google/android/ytremote/logic/c;

.field private final i:Lcom/google/android/youtube/core/utils/k;

.field private final j:Lcom/google/android/youtube/app/remote/av;

.field private final k:Lcom/google/android/ytremote/backend/a/a;

.field private final l:Lcom/google/android/ytremote/backend/logic/b;

.field private final m:Ljava/util/Map;

.field private final n:Z

.field private final o:Landroid/content/SharedPreferences;

.field private p:Z

.field private q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field private r:Z

.field private s:Lcom/google/android/youtube/app/remote/bb;

.field private t:Lcom/google/android/ytremote/model/CloudScreen;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private final w:Ljava/util/List;

.field private final x:Ljava/util/Map;

.field private y:Landroid/os/Handler;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/remote/at;->a:Lorg/json/JSONObject;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    sput-object v0, Lcom/google/android/youtube/app/remote/at;->b:Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->LOUNGE_SERVER_CONNECTION_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/youtube/app/remote/at;->b:Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_NO_NETWORK:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/youtube/app/remote/at;->b:Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_IPV6_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "notFound"

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->PRIVATE:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "private"

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->PRIVATE:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "restrictedRegion"

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->REGION:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "limitedSyndication"

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->LIMITED_SYNDICATION:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/remote/at;->c:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/remote/at;->d:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/k;Landroid/content/SharedPreferences;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/n;-><init>(Landroid/content/Context;)V

    .line 122
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/youtube/app/remote/at;->z:I

    .line 131
    iput-boolean p5, p0, Lcom/google/android/youtube/app/remote/at;->n:Z

    .line 133
    const-string v0, "context can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "executor can not be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->f:Ljava/util/concurrent/Executor;

    .line 135
    const-string v0, "preferences can not be null"

    invoke-static {p4, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->o:Landroid/content/SharedPreferences;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->e:Landroid/content/Context;

    .line 138
    iput-object p3, p0, Lcom/google/android/youtube/app/remote/at;->i:Lcom/google/android/youtube/core/utils/k;

    move-object v0, p1

    .line 140
    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 141
    new-instance v8, Lcom/google/android/ytremote/backend/browserchannel/i;

    sget-object v1, Lcom/google/android/ytremote/backend/model/DeviceType;->REMOTE_CONTROL:Lcom/google/android/ytremote/backend/model/DeviceType;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->W()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/google/android/youtube/app/remote/az;

    const/4 v2, 0x0

    invoke-direct {v9, p0, v2}, Lcom/google/android/youtube/app/remote/az;-><init>(Lcom/google/android/youtube/app/remote/at;B)V

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/at;->o:Landroid/content/SharedPreferences;

    const-string v3, "remote_id"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/at;->o:Landroid/content/SharedPreferences;

    const-string v3, "remote_id"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "android"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "device"

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/DeviceType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    const-string v4, "name"

    const-string v6, "app"

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/r;

    const-string v2, "www.youtube.com"

    const/16 v3, 0x50

    const-string v4, "/api/lounge/bc/"

    move-object v1, p1

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/ytremote/backend/browserchannel/r;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/ytremote/backend/browserchannel/s;Ljava/util/Map;)V

    invoke-direct {v8, p1, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;-><init>(Landroid/content/Context;Lcom/google/android/ytremote/backend/browserchannel/c;)V

    iput-object v8, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    .line 144
    new-instance v0, Lcom/google/android/ytremote/b/e;

    new-instance v1, Lcom/google/android/ytremote/backend/a/f;

    invoke-direct {v1}, Lcom/google/android/ytremote/backend/a/f;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/b/e;-><init>(Lcom/google/android/ytremote/backend/logic/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->h:Lcom/google/android/ytremote/logic/c;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->m:Ljava/util/Map;

    .line 146
    new-instance v0, Lcom/google/android/ytremote/backend/a/a;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->k:Lcom/google/android/ytremote/backend/a/a;

    .line 147
    new-instance v0, Lcom/google/android/ytremote/backend/a/d;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->l:Lcom/google/android/ytremote/backend/logic/b;

    .line 149
    new-instance v0, Lcom/google/android/youtube/app/remote/av;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/remote/av;-><init>(Lcom/google/android/youtube/app/remote/at;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->j:Lcom/google/android/youtube/app/remote/av;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->w:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->x:Ljava/util/Map;

    .line 154
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v1, Lcom/google/android/youtube/app/remote/ba;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/google/android/youtube/app/remote/ba;-><init>(Lcom/google/android/youtube/app/remote/at;Landroid/content/Context;Landroid/os/Looper;B)V

    iput-object v1, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    .line 158
    return-void

    .line 141
    :cond_f3
    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x82

    sget-object v4, Lcom/google/android/youtube/app/remote/at;->d:Ljava/util/Random;

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/at;->o:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "remote_id"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_4f
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;I)Lcom/google/android/youtube/app/remote/al;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_12

    sget-object v0, Lcom/google/android/youtube/app/remote/am;->c:Lcom/google/android/youtube/app/remote/al;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/google/android/youtube/app/remote/as;->b:Lcom/google/android/youtube/app/remote/al;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/google/android/youtube/app/remote/as;->d:Lcom/google/android/youtube/app/remote/al;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/google/android/youtube/app/remote/as;->c:Lcom/google/android/youtube/app/remote/al;

    goto :goto_5

    :pswitch_f
    sget-object v0, Lcom/google/android/youtube/app/remote/am;->a:Lcom/google/android/youtube/app/remote/al;

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/bb;)Lcom/google/android/youtube/app/remote/bb;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/browserchannel/i;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;J)Lcom/google/android/ytremote/backend/model/Params;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p1, p2, p3}, Lcom/google/android/youtube/app/remote/at;->a(Ljava/lang/String;J)Lcom/google/android/ytremote/backend/model/Params;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;J)Lcom/google/android/ytremote/backend/model/Params;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 357
    new-instance v0, Lcom/google/android/ytremote/backend/model/Params;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/model/Params;-><init>()V

    .line 358
    const-string v1, "videoIds"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/ytremote/backend/model/Params;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Params;

    .line 359
    const-string v1, "videoId"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/ytremote/backend/model/Params;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Params;

    .line 360
    const-string v1, "currentTime"

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/ytremote/backend/model/Params;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Params;

    .line 361
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/ytremote/model/CloudScreen;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/at;->t:Lcom/google/android/ytremote/model/CloudScreen;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/at;->v:Ljava/lang/String;

    return-object p1
.end method

.method private a(D)V
    .registers 5
    .parameter

    .prologue
    .line 394
    iput-wide p1, p0, Lcom/google/android/youtube/app/remote/at;->A:D

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/app/remote/at;->B:J

    .line 396
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;D)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/remote/at;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 70
    sget-object v0, Lcom/google/android/youtube/app/remote/au;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    :cond_d
    :goto_d
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne v0, v1, :cond_16

    iput-wide v2, p0, Lcom/google/android/youtube/app/remote/at;->A:D

    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq v0, v1, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/app/remote/at;->B:J

    goto :goto_d

    :pswitch_23
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne v0, v1, :cond_d

    iget-wide v0, p0, Lcom/google/android/youtube/app/remote/at;->A:D

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/youtube/app/remote/at;->B:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/app/remote/at;->A:D

    goto :goto_d

    :pswitch_37
    iput-wide v2, p0, Lcom/google/android/youtube/app/remote/at;->A:D

    goto :goto_d

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/at;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/at;->C:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/at;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/at;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/at;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/at;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/remote/at;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->GET_NOW_PLAYING:Lcom/google/android/ytremote/backend/model/Method;

    sget-object v2, Lcom/google/android/ytremote/backend/model/Params;->a:Lcom/google/android/ytremote/backend/model/Params;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/remote/at;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/android/youtube/app/remote/at;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/google/android/youtube/app/remote/at;)Z
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/at;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/youtube/app/remote/av;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->j:Lcom/google/android/youtube/app/remote/av;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->t:Lcom/google/android/ytremote/model/CloudScreen;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/remote/at;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->x:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/remote/at;)Z
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/at;->r:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/remote/at;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/app/remote/at;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/youtube/app/remote/at;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/app/remote/at;)Z
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/at;->C:Z

    return v0
.end method

.method static synthetic n(Lcom/google/android/youtube/app/remote/at;)D
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/android/youtube/app/remote/at;->A:D

    return-wide v0
.end method

.method static synthetic o(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/youtube/core/utils/k;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->i:Lcom/google/android/youtube/core/utils/k;

    return-object v0
.end method

.method static synthetic p(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/logic/c;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->h:Lcom/google/android/ytremote/logic/c;

    return-object v0
.end method

.method static synthetic q(Lcom/google/android/youtube/app/remote/at;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic r(Lcom/google/android/youtube/app/remote/at;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->o:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic s(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/a/a;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->k:Lcom/google/android/ytremote/backend/a/a;

    return-object v0
.end method

.method static synthetic t(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/backend/logic/b;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->l:Lcom/google/android/ytremote/backend/logic/b;

    return-object v0
.end method

.method static synthetic v()Landroid/content/IntentFilter;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/youtube/app/remote/at;->b:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic w()Lorg/json/JSONObject;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/youtube/app/remote/at;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic x()Ljava/util/Map;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/youtube/app/remote/at;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->SLEEP:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_17

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    if-nez v0, :cond_18

    .line 407
    const-string v0, "We should reconnect, but we lost the screen"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 419
    :cond_17
    :goto_17
    return-void

    .line 410
    :cond_18
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTING:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 412
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/at;->p:Z

    if-nez v0, :cond_2a

    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/at;->j:Lcom/google/android/youtube/app/remote/av;

    sget-object v2, Lcom/google/android/youtube/app/remote/at;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    new-instance v1, Lcom/google/android/ytremote/backend/model/b;

    invoke-direct {v1}, Lcom/google/android/ytremote/backend/model/b;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/remote/bb;->c()Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/ytremote/model/CloudScreen;->getLoungeToken()Lcom/google/android/ytremote/model/LoungeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/ytremote/backend/model/b;->a(Lcom/google/android/ytremote/model/LoungeToken;)Lcom/google/android/ytremote/backend/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/model/b;->a()Lcom/google/android/ytremote/backend/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/a;)Ljava/util/concurrent/CountDownLatch;

    goto :goto_17
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/ytremote/backend/model/Params;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/model/Params;-><init>()V

    .line 210
    const-string v1, "volume"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/ytremote/backend/model/Params;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Params;

    .line 211
    iput p1, p0, Lcom/google/android/youtube/app/remote/at;->z:I

    .line 212
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    sget-object v2, Lcom/google/android/ytremote/backend/model/Method;->SET_VOLUME:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/remote/at;->c(I)V

    .line 214
    return-void
.end method

.method public final bridge synthetic a(Lcom/google/android/youtube/app/remote/ap;Ljava/lang/String;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    check-cast p1, Lcom/google/android/youtube/app/remote/bb;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/bb;Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/bb;Ljava/lang/String;J)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 161
    const-string v0, "screen can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/app/remote/at;->b(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/app/remote/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 166
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 168
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/app/remote/at;->a(Ljava/lang/String;)V

    .line 181
    :cond_24
    :goto_24
    return-void

    .line 171
    :cond_25
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    .line 172
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTING:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 174
    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 175
    iget-object v7, p0, Lcom/google/android/youtube/app/remote/at;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/youtube/app/remote/ax;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/bb;->b()Lcom/google/android/ytremote/model/b;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/remote/ax;-><init>(Lcom/google/android/youtube/app/remote/at;Lcom/google/android/ytremote/model/b;Ljava/lang/String;JB)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_24

    .line 177
    :cond_44
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    const/4 v8, 0x3

    new-instance v1, Lcom/google/android/youtube/app/remote/aw;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/bb;->c()Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v2

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/youtube/app/remote/aw;-><init>(Lcom/google/android/ytremote/model/CloudScreen;Ljava/lang/String;JB)V

    invoke-static {v7, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_24
.end method

.method public final a(Lcom/google/android/youtube/core/model/SubtitleTrack;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 189
    const-string v0, "videoId can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_15

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/bb;Ljava/lang/String;J)V

    .line 198
    :goto_14
    return-void

    .line 194
    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/remote/at;->b(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->SET_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    invoke-static {p1, v2, v3}, Lcom/google/android/youtube/app/remote/at;->a(Ljava/lang/String;J)Lcom/google/android/ytremote/backend/model/Params;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)V

    goto :goto_14
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)Z
    .registers 4
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->x:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final b(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;
    .registers 4
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->x:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    return-object v0
.end method

.method protected final b()V
    .registers 5

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    :cond_17
    return-void
.end method

.method public final b(I)V
    .registers 6
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/at;->C:Z

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    new-instance v0, Lcom/google/android/ytremote/backend/model/Params;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/model/Params;-><init>()V

    .line 220
    const-string v1, "newTime"

    div-int/lit16 v2, p1, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/ytremote/backend/model/Params;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Params;

    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    sget-object v2, Lcom/google/android/ytremote/backend/model/Method;->SEEK_TO:Lcom/google/android/ytremote/backend/model/Method;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)V

    .line 222
    int-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(D)V

    .line 223
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/at;->u:Ljava/lang/String;

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->v:Ljava/lang/String;

    .line 371
    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 372
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 373
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V

    .line 374
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 378
    :cond_22
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 184
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->y:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->PLAY:Lcom/google/android/ytremote/backend/model/Method;

    sget-object v2, Lcom/google/android/ytremote/backend/model/Params;->a:Lcom/google/android/ytremote/backend/model/Params;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)V

    .line 202
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->PAUSE:Lcom/google/android/ytremote/backend/model/Method;

    sget-object v2, Lcom/google/android/ytremote/backend/model/Params;->a:Lcom/google/android/ytremote/backend/model/Params;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)V

    .line 206
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/at;->b(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/at;->c(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->g:Lcom/google/android/ytremote/backend/browserchannel/i;

    sget-object v1, Lcom/google/android/ytremote/backend/model/Method;->STOP:Lcom/google/android/ytremote/backend/model/Method;

    sget-object v2, Lcom/google/android/ytremote/backend/model/Params;->a:Lcom/google/android/ytremote/backend/model/Params;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)V

    .line 242
    return-void
.end method

.method public final g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcom/google/android/youtube/app/remote/at;->z:I

    return v0
.end method

.method public final j()D
    .registers 7

    .prologue
    .line 273
    iget-wide v2, p0, Lcom/google/android/youtube/app/remote/at;->A:D

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->q:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne v0, v1, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/youtube/app/remote/at;->B:J

    sub-long/2addr v0, v4

    :goto_f
    long-to-double v0, v0

    add-double/2addr v0, v2

    return-wide v0

    :cond_12
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method public final k()Ljava/util/List;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->w:Ljava/util/List;

    return-object v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/at;->n:Z

    return v0
.end method

.method public final m()Lcom/google/android/youtube/app/remote/ak;
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()V
    .registers 1

    .prologue
    .line 286
    return-void
.end method

.method public final o()I
    .registers 2

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .registers 2

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic q()Lcom/google/android/youtube/app/remote/ap;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    return-object v0
.end method

.method public final u()Lcom/google/android/youtube/app/remote/bb;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/at;->s:Lcom/google/android/youtube/app/remote/bb;

    return-object v0
.end method
