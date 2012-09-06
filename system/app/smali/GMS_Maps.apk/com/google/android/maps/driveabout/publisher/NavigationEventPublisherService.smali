.class public Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Messenger;

.field private final b:Landroid/os/IBinder;

.field private final c:Landroid/os/IBinder;

.field private d:Lo/o;

.field private e:Ljava/util/List;

.field private volatile f:Landroid/os/Bundle;

.field private volatile g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/maps/driveabout/publisher/f;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/publisher/f;-><init>(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a:Landroid/os/Messenger;

    .line 40
    new-instance v0, Lcom/google/android/maps/driveabout/publisher/d;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/publisher/d;-><init>(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->b:Landroid/os/IBinder;

    .line 41
    new-instance v0, Lcom/google/android/maps/driveabout/publisher/c;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/publisher/c;-><init>(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->c:Landroid/os/IBinder;

    .line 297
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->f:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Landroid/os/Messenger;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a:Landroid/os/Messenger;

    return-object v0
.end method

.method private a(I)V
    .registers 7
    .parameter

    .prologue
    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object v2, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->e:Ljava/util/List;

    monitor-enter v2

    .line 207
    :try_start_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_23

    .line 209
    :try_start_1a
    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a(Landroid/os/Messenger;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 210
    :catch_1e
    move-exception v4

    .line 213
    :try_start_1f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 222
    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_23

    throw v0

    .line 219
    :cond_26
    :try_start_26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 220
    iget-object v3, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 222
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_23

    .line 223
    return-void
.end method

.method private a(Landroid/os/Messenger;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 226
    if-nez p1, :cond_3

    .line 243
    :goto_2
    return-void

    .line 230
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 231
    packed-switch p2, :pswitch_data_1c

    .line 242
    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_2

    .line 233
    :pswitch_f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_b

    .line 236
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_b

    .line 231
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;Landroid/os/Messenger;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a(Landroid/os/Messenger;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->g:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a(Lo/q;)Landroid/os/Bundle;
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    invoke-virtual {p1}, Lo/q;->b()I

    move-result v1

    .line 249
    const-string v2, "METERS_TO_NEXT_STEP"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v2, "METERS_TO_DEST"

    invoke-virtual {p1}, Lo/q;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v2, "ESTIMATED_SECONDS_TO_DEST"

    invoke-virtual {p1}, Lo/q;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v2, "TRAFFIC_STATUS"

    invoke-virtual {p1}, Lo/q;->k()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v2, "IS_ON_ROUTE"

    invoke-virtual {p1}, Lo/q;->l()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    const-string v2, "METERS_FROM_PREV_STEP"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string v2, "NEXT_STEP_INDEX"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-virtual {p1}, Lo/q;->h()Lo/I;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 257
    invoke-virtual {p1}, Lo/q;->h()Lo/I;

    move-result-object v2

    invoke-virtual {v2}, Lo/I;->e()I

    move-result v2

    .line 258
    sub-int v1, v2, v1

    .line 259
    if-ltz v1, :cond_54

    .line 260
    const-string v2, "METERS_FROM_PREV_STEP"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    :cond_54
    invoke-virtual {p1}, Lo/q;->h()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->i()I

    move-result v1

    .line 269
    const-string v2, "NEXT_STEP_INDEX"

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    :cond_63
    return-object v0
.end method

.method public a()Lo/o;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->d:Lo/o;

    return-object v0
.end method

.method b(Lo/q;)Landroid/os/Bundle;
    .registers 10
    .parameter

    .prologue
    .line 277
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 278
    invoke-virtual {p1}, Lo/q;->g()Lo/x;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Lo/x;->k()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 282
    new-array v3, v0, [D

    .line 285
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v2}, Lo/x;->k()I

    move-result v4

    if-ge v0, v4, :cond_35

    .line 286
    invoke-virtual {v2, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v4

    .line 287
    invoke-virtual {v4}, Lo/I;->a()Ln/Q;

    move-result-object v4

    .line 288
    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {v4}, Ln/Q;->b()D

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 289
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ln/Q;->d()D

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 292
    :cond_35
    const-string v0, "STEP_ARRAY"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 294
    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->b:Landroid/os/IBinder;

    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.maps.NAVIGATION_EVENT_PUBLISHER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 188
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->c:Landroid/os/IBinder;

    .line 191
    :cond_16
    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 176
    new-instance v0, Lcom/google/android/maps/driveabout/publisher/e;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/publisher/e;-><init>(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->d:Lo/o;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->e:Ljava/util/List;

    .line 179
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->f:Landroid/os/Bundle;

    .line 180
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->g:Landroid/os/Bundle;

    .line 181
    return-void
.end method
