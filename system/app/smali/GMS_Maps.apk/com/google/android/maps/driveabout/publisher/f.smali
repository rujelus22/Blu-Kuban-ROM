.class Lcom/google/android/maps/driveabout/publisher/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/publisher/f;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4e

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/f;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->b(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/f;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->b(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_8

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw v0

    :pswitch_20
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/f;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->b(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/f;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->b(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_8

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw v0

    :pswitch_37
    :try_start_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/f;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;Landroid/os/Messenger;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_8

    :catch_40
    move-exception v0

    goto :goto_8

    :pswitch_42
    :try_start_42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/f;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;Landroid/os/Messenger;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4a} :catch_4b

    goto :goto_8

    :catch_4b
    move-exception v0

    goto :goto_8

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_20
        :pswitch_37
        :pswitch_42
    .end packed-switch
.end method
