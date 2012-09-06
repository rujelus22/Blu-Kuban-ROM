.class public final Lcom/android/athome/picker/media/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/athome/picker/ac;


# static fields
.field static final a:Ljava/util/HashMap;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/media/AudioManager;

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Lcom/android/athome/picker/media/x;

.field private h:Lcom/android/athome/picker/media/z;

.field private i:Lcom/android/athome/picker/media/z;

.field private j:Lcom/android/athome/picker/q;

.field private final k:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/v;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/v;->f:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lcom/android/athome/picker/media/v;->b:Landroid/content/Context;

    .line 123
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/athome/picker/media/v;->c:Landroid/media/AudioManager;

    .line 125
    new-instance v0, Lcom/android/athome/picker/media/x;

    iget-object v1, p0, Lcom/android/athome/picker/media/v;->b:Landroid/content/Context;

    sget v2, Lcom/android/athome/picker/ak;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/athome/picker/media/x;-><init>(Lcom/android/athome/picker/media/v;Ljava/lang/CharSequence;IZ)V

    iput-object v0, p0, Lcom/android/athome/picker/media/v;->g:Lcom/android/athome/picker/media/x;

    .line 129
    new-instance v0, Lcom/android/athome/picker/media/z;

    iget-object v1, p0, Lcom/android/athome/picker/media/v;->g:Lcom/android/athome/picker/media/x;

    invoke-direct {v0, p0, v1}, Lcom/android/athome/picker/media/z;-><init>(Lcom/android/athome/picker/media/v;Lcom/android/athome/picker/media/x;)V

    iput-object v0, p0, Lcom/android/athome/picker/media/v;->h:Lcom/android/athome/picker/media/z;

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->h:Lcom/android/athome/picker/media/z;

    iget-object v1, p0, Lcom/android/athome/picker/media/v;->b:Landroid/content/Context;

    sget v2, Lcom/android/athome/picker/ak;->a:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/athome/picker/media/z;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->h:Lcom/android/athome/picker/media/z;

    iput v3, v0, Lcom/android/athome/picker/media/z;->d:I

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->h:Lcom/android/athome/picker/media/z;

    iput v3, v0, Lcom/android/athome/picker/media/z;->l:I

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->h:Lcom/android/athome/picker/media/z;

    invoke-direct {p0, v0}, Lcom/android/athome/picker/media/v;->d(Lcom/android/athome/picker/media/z;)V

    .line 130
    new-instance v0, Lcom/android/athome/picker/q;

    invoke-direct {v0}, Lcom/android/athome/picker/q;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/v;->j:Lcom/android/athome/picker/q;

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/media/v;)Landroid/media/AudioManager;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->c:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/android/athome/picker/media/v;
    .registers 4
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    sget-object v0, Lcom/android/athome/picker/media/v;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 102
    new-instance v0, Lcom/android/athome/picker/media/v;

    invoke-direct {v0, v1}, Lcom/android/athome/picker/media/v;-><init>(Landroid/content/Context;)V

    .line 103
    sget-object v2, Lcom/android/athome/picker/media/v;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/android/athome/picker/media/v;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/v;

    goto :goto_16
.end method

.method static a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
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

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/athome/picker/media/v;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static c()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    const-string v0, "MediaRouterFallback"

    const-string v1, "showPicker() in MediaRouterFallback is obsolete. Use MediaRouteButton instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method private c(Lcom/android/athome/picker/MediaOutput;)V
    .registers 7
    .parameter

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/v;->d(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/z;

    move-result-object v1

    .line 1230
    if-eqz v1, :cond_1e

    .line 1231
    if-eqz p1, :cond_1f

    new-instance v0, Lcom/android/athome/picker/an;

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/athome/picker/an;-><init>(Ljava/lang/String;FZ)V

    .line 1232
    :goto_19
    if-eqz v0, :cond_1e

    .line 1233
    invoke-virtual {v1, v0}, Lcom/android/athome/picker/media/z;->a(Ljava/lang/Object;)V

    .line 1236
    :cond_1e
    return-void

    .line 1231
    :cond_1f
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private d(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/z;
    .registers 5
    .parameter

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_a

    .line 1258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    .line 1261
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private d(Lcom/android/athome/picker/media/z;)V
    .registers 5
    .parameter

    .prologue
    .line 335
    iget-object v0, p1, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    .line 336
    iget-object v1, p0, Lcom/android/athome/picker/media/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 337
    iget-object v1, p0, Lcom/android/athome/picker/media/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_f
    iget-object v1, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 340
    iget-boolean v0, v0, Lcom/android/athome/picker/media/x;->c:Z

    if-eqz v0, :cond_38

    instance-of v0, p1, Lcom/android/athome/picker/media/y;

    if-nez v0, :cond_38

    .line 342
    new-instance v0, Lcom/android/athome/picker/media/y;

    iget-object v2, p1, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    invoke-direct {v0, p0, v2}, Lcom/android/athome/picker/media/y;-><init>(Lcom/android/athome/picker/media/v;Lcom/android/athome/picker/media/x;)V

    .line 343
    iget-object v2, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-direct {p0, v0}, Lcom/android/athome/picker/media/v;->e(Lcom/android/athome/picker/media/z;)V

    .line 345
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/media/y;->a(Lcom/android/athome/picker/media/z;)V

    move-object p1, v0

    .line 353
    :goto_30
    if-eqz v1, :cond_37

    .line 354
    iget v0, p1, Lcom/android/athome/picker/media/z;->d:I

    invoke-virtual {p0, v0, p1}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/z;)V

    .line 356
    :cond_37
    return-void

    .line 349
    :cond_38
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/v;->e(Lcom/android/athome/picker/media/z;)V

    goto :goto_30
.end method

.method private e(Lcom/android/athome/picker/media/z;)V
    .registers 6
    .parameter

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    .line 571
    iget v2, v0, Lcom/android/athome/picker/media/w;->a:I

    iget v3, p1, Lcom/android/athome/picker/media/z;->d:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 572
    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/media/b;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 575
    :cond_1f
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/athome/picker/media/x;)Lcom/android/athome/picker/media/aa;
    .registers 3
    .parameter

    .prologue
    .line 486
    new-instance v0, Lcom/android/athome/picker/media/aa;

    invoke-direct {v0, p0, p1}, Lcom/android/athome/picker/media/aa;-><init>(Lcom/android/athome/picker/media/v;Lcom/android/athome/picker/media/x;)V

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;Z)Lcom/android/athome/picker/media/x;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 497
    new-instance v0, Lcom/android/athome/picker/media/x;

    const/high16 v1, 0x80

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/athome/picker/media/x;-><init>(Lcom/android/athome/picker/media/v;Ljava/lang/CharSequence;IZ)V

    return-object v0
.end method

.method public final a()Lcom/android/athome/picker/media/z;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->h:Lcom/android/athome/picker/media/z;

    return-object v0
.end method

.method public final a(ILcom/android/athome/picker/media/b;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 282
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_20

    .line 283
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    .line 284
    iget-object v3, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    if-ne v3, p2, :cond_1c

    .line 285
    iget v1, v0, Lcom/android/athome/picker/media/w;->a:I

    and-int/2addr v1, p1

    iput v1, v0, Lcom/android/athome/picker/media/w;->a:I

    .line 290
    :goto_1b
    return-void

    .line 282
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 289
    :cond_20
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/athome/picker/media/w;

    invoke-direct {v1, p2, p1}, Lcom/android/athome/picker/media/w;-><init>(Lcom/android/athome/picker/media/b;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method public final a(ILcom/android/athome/picker/media/z;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->i:Lcom/android/athome/picker/media/z;

    if-ne v0, p2, :cond_5

    .line 320
    :cond_4
    return-void

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->i:Lcom/android/athome/picker/media/z;

    if-eqz v0, :cond_2e

    .line 313
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->i:Lcom/android/athome/picker/media/z;

    iget v0, v0, Lcom/android/athome/picker/media/z;->d:I

    and-int v1, p1, v0

    iget-object v2, p0, Lcom/android/athome/picker/media/v;->i:Lcom/android/athome/picker/media/z;

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    iget v4, v0, Lcom/android/athome/picker/media/w;->a:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_17

    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/athome/picker/media/b;->a(ILjava/lang/Object;)V

    goto :goto_17

    .line 315
    :cond_2e
    iput-object p2, p0, Lcom/android/athome/picker/media/v;->i:Lcom/android/athome/picker/media/z;

    .line 316
    if-eqz p2, :cond_4

    .line 318
    iget v0, p2, Lcom/android/athome/picker/media/z;->d:I

    and-int v1, p1, v0

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    iget v3, v0, Lcom/android/athome/picker/media/w;->a:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_3c

    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p0, v1, p2}, Lcom/android/athome/picker/media/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3c
.end method

.method public final a(Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 1216
    const-string v0, "MediaRouterFallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnVolumeChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    instance-of v0, p1, Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v0, :cond_32

    .line 1219
    check-cast p1, Lcom/android/athome/picker/MediaOutputGroup;

    .line 1220
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 1221
    invoke-direct {p0, v0}, Lcom/android/athome/picker/media/v;->c(Lcom/android/athome/picker/MediaOutput;)V

    goto :goto_22

    .line 1224
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/v;->c(Lcom/android/athome/picker/MediaOutput;)V

    .line 1226
    :cond_35
    return-void
.end method

.method public final a(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/v;->d(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/z;

    move-result-object v1

    .line 1269
    iget-object v0, v1, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    .line 1270
    if-eqz v0, :cond_1b

    .line 1271
    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/y;->b(Lcom/android/athome/picker/media/z;)V

    .line 1273
    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/athome/picker/media/v;->d(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/z;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/y;

    .line 1274
    const-string v2, "MediaRouterFallback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Add route: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to group: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/y;->a(Lcom/android/athome/picker/media/z;)V

    .line 1277
    :cond_42
    return-void
.end method

.method public final a(Lcom/android/athome/picker/media/aa;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/v;->d(Lcom/android/athome/picker/media/z;)V

    .line 332
    return-void
.end method

.method public final a(Lcom/android/athome/picker/media/b;)V
    .registers 5
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 299
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_20

    .line 300
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    if-ne v0, p1, :cond_1c

    .line 301
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 306
    :goto_1b
    return-void

    .line 299
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 305
    :cond_20
    const-string v0, "MediaRouterFallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeCallback("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): callback not registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method final a(Lcom/android/athome/picker/media/z;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 385
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->j:Lcom/android/athome/picker/q;

    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/android/athome/picker/media/v;->j:Lcom/android/athome/picker/q;

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v2, v0}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/MediaOutput;)V

    .line 386
    :cond_22
    iget-object v3, p1, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    .line 387
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 389
    :goto_2b
    if-ge v2, v4, :cond_71

    .line 390
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    iget-object v0, v0, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    .line 391
    if-ne v3, v0, :cond_6c

    .line 392
    const/4 v0, 0x1

    .line 396
    :goto_3a
    iget-object v1, p0, Lcom/android/athome/picker/media/v;->i:Lcom/android/athome/picker/media/z;

    if-ne p1, v1, :cond_46

    .line 399
    const v1, 0x800001

    iget-object v2, p0, Lcom/android/athome/picker/media/v;->h:Lcom/android/athome/picker/media/z;

    invoke-virtual {p0, v1, v2}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/z;)V

    .line 401
    :cond_46
    if-nez v0, :cond_4d

    .line 402
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    :cond_4d
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    iget v2, v0, Lcom/android/athome/picker/media/w;->a:I

    iget v3, p1, Lcom/android/athome/picker/media/z;->d:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_53

    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/media/b;->b(Ljava/lang/Object;)V

    goto :goto_53

    .line 389
    :cond_6c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2b

    .line 406
    :cond_70
    return-void

    :cond_71
    move v0, v1

    goto :goto_3a
.end method

.method final a(Lcom/android/athome/picker/media/z;Lcom/android/athome/picker/media/y;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    .line 598
    iget v2, v0, Lcom/android/athome/picker/media/w;->a:I

    iget v3, p2, Lcom/android/athome/picker/media/y;->d:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 599
    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 602
    :cond_1f
    return-void
.end method

.method final a(Lcom/android/athome/picker/media/z;Lcom/android/athome/picker/media/y;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    .line 589
    iget v2, v0, Lcom/android/athome/picker/media/w;->a:I

    iget v3, p2, Lcom/android/athome/picker/media/y;->d:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 590
    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/media/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 593
    :cond_1f
    return-void
.end method

.method public final b(I)Lcom/android/athome/picker/media/x;
    .registers 3
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/x;

    return-object v0
.end method

.method public final b()Lcom/android/athome/picker/media/z;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->i:Lcom/android/athome/picker/media/z;

    return-object v0
.end method

.method public final b(Lcom/android/athome/picker/MediaOutput;)V
    .registers 6
    .parameter

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/v;->d(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/z;

    move-result-object v0

    .line 1249
    const-string v1, "MediaRouterFallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected route: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/athome/picker/media/z;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget v1, v0, Lcom/android/athome/picker/media/z;->d:I

    invoke-virtual {p0, v1, v0}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/z;)V

    .line 1252
    :cond_33
    return-void
.end method

.method public final b(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/athome/picker/media/v;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1283
    invoke-direct {p0, p1}, Lcom/android/athome/picker/media/v;->d(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/z;

    move-result-object v1

    .line 1284
    invoke-direct {p0, p2}, Lcom/android/athome/picker/media/v;->d(Lcom/android/athome/picker/MediaOutput;)Lcom/android/athome/picker/media/z;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/y;

    .line 1285
    const-string v2, "MediaRouterFallback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remove route: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from group: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {v0, v1}, Lcom/android/athome/picker/media/y;->b(Lcom/android/athome/picker/media/z;)V

    .line 1288
    :cond_3b
    return-void
.end method

.method public final b(Lcom/android/athome/picker/media/aa;)V
    .registers 2
    .parameter

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/z;)V

    .line 366
    return-void
.end method

.method final b(Lcom/android/athome/picker/media/z;)V
    .registers 6
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    iget v2, v0, Lcom/android/athome/picker/media/w;->a:I

    iget v3, p1, Lcom/android/athome/picker/media/z;->d:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/media/b;->c(Ljava/lang/Object;)V

    goto :goto_6

    .line 502
    :cond_1f
    return-void
.end method

.method public final c(I)Lcom/android/athome/picker/media/z;
    .registers 3
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/z;

    return-object v0
.end method

.method final c(Lcom/android/athome/picker/media/z;)V
    .registers 6
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/w;

    .line 607
    iget v2, v0, Lcom/android/athome/picker/media/w;->a:I

    iget v3, p1, Lcom/android/athome/picker/media/z;->d:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 608
    iget-object v0, v0, Lcom/android/athome/picker/media/w;->b:Lcom/android/athome/picker/media/b;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/b;->a()V

    goto :goto_6

    .line 611
    :cond_1f
    return-void
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/athome/picker/media/v;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
