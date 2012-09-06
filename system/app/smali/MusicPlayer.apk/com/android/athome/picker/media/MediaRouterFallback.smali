.class public Lcom/android/athome/picker/media/MediaRouterFallback;
.super Ljava/lang/Object;
.source "MediaRouterFallback.java"

# interfaces
.implements Lcom/android/athome/picker/MediaOutputSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;,
        Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;,
        Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;,
        Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;,
        Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;,
        Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    }
.end annotation


# static fields
.field static final sRouters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/athome/picker/media/MediaRouterFallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAudio:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

.field private final mOutputCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;"
        }
    .end annotation
.end field

.field private mRoutePicker:Lcom/android/athome/picker/MediaOutputSelector;

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

.field private final mSystemCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/MediaRouterFallback;->sRouters:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCategories:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mAppContext:Landroid/content/Context;

    .line 123
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mAudioManager:Landroid/media/AudioManager;

    .line 125
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/athome/picker/R$string;->speakers_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;-><init>(Lcom/android/athome/picker/media/MediaRouterFallback;Ljava/lang/CharSequence;IZ)V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSystemCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    .line 129
    invoke-direct {p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->createDefaultRoutes()V

    .line 130
    new-instance v0, Lcom/android/athome/picker/MediaOutputSelector;

    invoke-direct {v0}, Lcom/android/athome/picker/MediaOutputSelector;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutePicker:Lcom/android/athome/picker/MediaOutputSelector;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/athome/picker/media/MediaRouterFallback;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/athome/picker/media/MediaRouterFallback;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private changeVolume(Lcom/android/athome/picker/MediaOutput;)V
    .registers 4
    .parameter "output"

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteInfo(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v0

    .line 1230
    .local v0, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    if-eqz v0, :cond_f

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->createState(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/UserRouteState;

    move-result-object v1

    .line 1232
    .local v1, state:Lcom/android/athome/picker/UserRouteState;
    if-eqz v1, :cond_f

    .line 1233
    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 1236
    .end local v1           #state:Lcom/android/athome/picker/UserRouteState;
    :cond_f
    return-void
.end method

.method private createDefaultRoutes()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 134
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSystemCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    invoke-direct {v0, p0, v1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;-><init>(Lcom/android/athome/picker/media/MediaRouterFallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mDefaultAudio:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .line 135
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mDefaultAudio:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/athome/picker/R$string;->default_audio_route_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 137
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mDefaultAudio:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    iput v3, v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    .line 138
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mDefaultAudio:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    iput v3, v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mVolumeHandling:I

    .line 139
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mDefaultAudio:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouterFallback;->addRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 140
    return-void
.end method

.method private createState(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/UserRouteState;
    .registers 6
    .parameter "output"

    .prologue
    .line 1239
    if-eqz p1, :cond_14

    .line 1240
    new-instance v0, Lcom/android/athome/picker/UserRouteState;

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/athome/picker/UserRouteState;-><init>(Ljava/lang/String;FZ)V

    .line 1242
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static forApplication(Landroid/content/Context;)Lcom/android/athome/picker/media/MediaRouterFallback;
    .registers 4
    .parameter "context"

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, appContext:Landroid/content/Context;
    sget-object v2, Lcom/android/athome/picker/media/MediaRouterFallback;->sRouters:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 102
    new-instance v1, Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-direct {v1, v0}, Lcom/android/athome/picker/media/MediaRouterFallback;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, r:Lcom/android/athome/picker/media/MediaRouterFallback;
    sget-object v2, Lcom/android/athome/picker/media/MediaRouterFallback;->sRouters:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v1           #r:Lcom/android/athome/picker/media/MediaRouterFallback;
    :goto_16
    return-object v1

    :cond_17
    sget-object v2, Lcom/android/athome/picker/media/MediaRouterFallback;->sRouters:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/media/MediaRouterFallback;

    move-object v1, v2

    goto :goto_16
.end method

.method private getRouteInfo(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .registers 5
    .parameter "selectedOutput"

    .prologue
    .line 1256
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1257
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Lcom/android/athome/picker/MediaOutput;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_a

    .line 1258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .line 1261
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Lcom/android/athome/picker/MediaOutput;>;"
    :goto_22
    return-object v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method static typesToString(I)Ljava/lang/String;
    .registers 3
    .parameter "types"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, result:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 113
    const-string v1, "ROUTE_TYPE_LIVE_AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_e
    const/high16 v1, 0x80

    and-int/2addr v1, p0

    if-eqz v1, :cond_18

    .line 116
    const-string v1, "ROUTE_TYPE_USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addCallback(ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 8
    .parameter "types"
    .parameter "cb"

    .prologue
    .line 281
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 282
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 283
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 284
    .local v2, info:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget-object v3, v2, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    if-ne v3, p2, :cond_1b

    .line 285
    iget v3, v2, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    and-int/2addr v3, p1

    iput v3, v2, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    .line 290
    .end local v2           #info:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :goto_1a
    return-void

    .line 282
    .restart local v2       #info:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 289
    .end local v2           #info:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1e
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    invoke-direct {v4, p2, p1}, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;-><init>(Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method addRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getCategory()Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v0

    .line 336
    .local v0, cat:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 337
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_11
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 340
    .local v2, onlyRoute:Z
    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->isGroupable()Z

    move-result v3

    if-eqz v3, :cond_40

    instance-of v3, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    if-nez v3, :cond_40

    .line 342
    new-instance v1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getCategory()Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;-><init>(Lcom/android/athome/picker/media/MediaRouterFallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)V

    .line 343
    .local v1, group:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteAdded(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 345
    invoke-virtual {v1, p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->addRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 347
    move-object p1, v1

    .line 353
    .end local v1           #group:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    :goto_36
    if-eqz v2, :cond_3f

    .line 354
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getSupportedTypes()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->selectRoute(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 356
    :cond_3f
    return-void

    .line 349
    :cond_40
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteAdded(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    goto :goto_36
.end method

.method public addUserRoute(Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->addRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 332
    return-void
.end method

.method public createRouteCategory(Ljava/lang/CharSequence;Z)Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    .registers 5
    .parameter "name"
    .parameter "isGroupable"

    .prologue
    .line 497
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    const/high16 v1, 0x80

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;-><init>(Lcom/android/athome/picker/media/MediaRouterFallback;Ljava/lang/CharSequence;IZ)V

    return-object v0
.end method

.method public createUserRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;
    .registers 3
    .parameter "category"

    .prologue
    .line 486
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;-><init>(Lcom/android/athome/picker/media/MediaRouterFallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)V

    return-object v0
.end method

.method dispatchRouteAdded(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 570
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 571
    .local v0, cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    iget v3, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 572
    iget-object v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v2, p0, p1}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 575
    .end local v0           #cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1f
    return-void
.end method

.method dispatchRouteChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 561
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 562
    .local v0, cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    iget v3, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 563
    iget-object v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v2, p0, p1}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 566
    .end local v0           #cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1f
    return-void
.end method

.method dispatchRouteGrouped(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;I)V
    .registers 8
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 588
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 589
    .local v0, cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    iget v3, p2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 590
    iget-object v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_6

    .line 593
    .end local v0           #cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1f
    return-void
.end method

.method dispatchRouteRemoved(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 579
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 580
    .local v0, cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    iget v3, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 581
    iget-object v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v2, p0, p1}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 584
    .end local v0           #cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1f
    return-void
.end method

.method dispatchRouteSelected(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 6
    .parameter "type"
    .parameter "info"

    .prologue
    .line 543
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 544
    .local v0, cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_6

    .line 545
    iget-object v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteSelected(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_6

    .line 548
    .end local v0           #cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1d
    return-void
.end method

.method dispatchRouteUngrouped(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;)V
    .registers 7
    .parameter "info"
    .parameter "group"

    .prologue
    .line 597
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 598
    .local v0, cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    iget v3, p2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 599
    iget-object v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 602
    .end local v0           #cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1f
    return-void
.end method

.method dispatchRouteUnselected(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 6
    .parameter "type"
    .parameter "info"

    .prologue
    .line 552
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 553
    .local v0, cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_6

    .line 554
    iget-object v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteUnselected(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_6

    .line 557
    .end local v0           #cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1d
    return-void
.end method

.method dispatchRouteVolumeChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 606
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    .line 607
    .local v0, cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    iget v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->type:I

    iget v3, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 608
    iget-object v2, v0, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    invoke-virtual {v2, p0, p1}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;->onRouteVolumeChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 611
    .end local v0           #cbi:Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;
    :cond_1f
    return-void
.end method

.method public getCategoryAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    .registers 3
    .parameter "index"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    return-object v0
.end method

.method public getCategoryCount()I
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    return-object v0
.end method

.method public getRouteCount()I
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedRoute(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .registers 3
    .parameter "type"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSelectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    return-object v0
.end method

.method public getSystemAudioRoute()Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mDefaultAudio:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    return-object v0
.end method

.method public onOutputAdded(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 9
    .parameter "addedOutput"
    .parameter "group"

    .prologue
    .line 1267
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteInfo(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v1

    .line 1269
    .local v1, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    invoke-virtual {v1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getGroup()Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    move-result-object v0

    .line 1270
    .local v0, currentGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    if-eqz v0, :cond_1d

    .line 1271
    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->removeRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 1273
    :cond_1d
    invoke-direct {p0, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteInfo(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .line 1274
    .local v2, routeGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    const-string v3, "MediaRouterFallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add route: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to group: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-virtual {v2, v1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->addRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 1277
    .end local v0           #currentGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    .end local v1           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .end local v2           #routeGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    :cond_48
    return-void
.end method

.method public onOutputRemoved(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 8
    .parameter "removedOutput"
    .parameter "group"

    .prologue
    .line 1282
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1283
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteInfo(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v0

    .line 1284
    .local v0, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    invoke-direct {p0, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteInfo(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .line 1285
    .local v1, routeGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    const-string v2, "MediaRouterFallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from group: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {v1, v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->removeRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 1288
    .end local v0           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .end local v1           #routeGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    :cond_3f
    return-void
.end method

.method public onOutputSelected(Lcom/android/athome/picker/MediaOutput;)V
    .registers 6
    .parameter "selectedOutput"

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteInfo(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v0

    .line 1249
    .local v0, selectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    const-string v1, "MediaRouterFallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getSupportedTypes()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/athome/picker/media/MediaRouterFallback;->selectRoute(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 1252
    .end local v0           #selectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    :cond_39
    return-void
.end method

.method public onVolumeChanged(Lcom/android/athome/picker/MediaOutput;)V
    .registers 8
    .parameter "output"

    .prologue
    .line 1216
    const-string v3, "MediaRouterFallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnVolumeChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    instance-of v3, p1, Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v3, :cond_37

    move-object v0, p1

    .line 1219
    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    .line 1220
    .local v0, group:Lcom/android/athome/picker/MediaOutputGroup;
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/MediaOutput;

    .line 1221
    .local v2, receiver:Lcom/android/athome/picker/MediaOutput;
    invoke-direct {p0, v2}, Lcom/android/athome/picker/media/MediaRouterFallback;->changeVolume(Lcom/android/athome/picker/MediaOutput;)V

    goto :goto_27

    .line 1224
    .end local v0           #group:Lcom/android/athome/picker/MediaOutputGroup;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #receiver:Lcom/android/athome/picker/MediaOutput;
    :cond_37
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->changeVolume(Lcom/android/athome/picker/MediaOutput;)V

    .line 1226
    :cond_3a
    return-void
.end method

.method public removeCallback(Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 7
    .parameter "cb"

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 299
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 300
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;

    iget-object v2, v2, Lcom/android/athome/picker/media/MediaRouterFallback$CallbackInfo;->cb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;

    if-ne v2, p1, :cond_1b

    .line 301
    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 306
    :goto_1a
    return-void

    .line 299
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 305
    :cond_1e
    const-string v2, "MediaRouterFallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCallback("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): callback not registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method removeRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 9
    .parameter "info"

    .prologue
    .line 384
    iget-object v5, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->removeRouteFromPicker(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 386
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getCategory()Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v4

    .line 387
    .local v4, removingCat:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    iget-object v5, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 388
    .local v1, count:I
    const/4 v2, 0x0

    .line 389
    .local v2, found:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    if-ge v3, v1, :cond_28

    .line 390
    iget-object v5, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    invoke-virtual {v5}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getCategory()Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v0

    .line 391
    .local v0, cat:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    if-ne v4, v0, :cond_3f

    .line 392
    const/4 v2, 0x1

    .line 396
    .end local v0           #cat:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    :cond_28
    iget-object v5, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSelectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    if-ne p1, v5, :cond_34

    .line 399
    const v5, 0x800001

    iget-object v6, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mDefaultAudio:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    invoke-virtual {p0, v5, v6}, Lcom/android/athome/picker/media/MediaRouterFallback;->selectRoute(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 401
    :cond_34
    if-nez v2, :cond_3b

    .line 402
    iget-object v5, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteRemoved(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 406
    .end local v1           #count:I
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v4           #removingCat:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    :cond_3e
    return-void

    .line 389
    .restart local v0       #cat:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    .restart local v1       #count:I
    .restart local v2       #found:Z
    .restart local v3       #i:I
    .restart local v4       #removingCat:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method removeRouteFromPicker(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 4
    .parameter "route"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutePicker:Lcom/android/athome/picker/MediaOutputSelector;

    if-eqz v0, :cond_19

    .line 506
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutePicker:Lcom/android/athome/picker/MediaOutputSelector;

    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mOutputCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v1, v0}, Lcom/android/athome/picker/MediaOutputSelector;->onOutputRemoved(Lcom/android/athome/picker/MediaOutput;)V

    .line 508
    :cond_19
    return-void
.end method

.method public removeUserRoute(Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->removeRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 366
    return-void
.end method

.method public selectRoute(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 5
    .parameter "types"
    .parameter "route"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSelectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    if-ne v0, p2, :cond_5

    .line 320
    :cond_4
    :goto_4
    return-void

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSelectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    if-eqz v0, :cond_15

    .line 313
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSelectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getSupportedTypes()I

    move-result v0

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSelectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteUnselected(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 315
    :cond_15
    iput-object p2, p0, Lcom/android/athome/picker/media/MediaRouterFallback;->mSelectedRoute:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .line 316
    if-eqz p2, :cond_4

    .line 318
    invoke-virtual {p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getSupportedTypes()I

    move-result v0

    and-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteSelected(ILcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    goto :goto_4
.end method

.method updateRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 502
    return-void
.end method
