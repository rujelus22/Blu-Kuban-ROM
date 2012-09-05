.class Lcom/google/android/maps/driveabout/publisher/c;
.super Lcom/google/android/maps/driveabout/publisher/b;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/publisher/c;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/publisher/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 8

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_40

    iput v5, v0, Landroid/os/Message;->what:I

    :goto_e
    :try_start_e
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_3e

    :goto_11
    return-void

    :pswitch_12
    iget-object v2, p0, Lcom/google/android/maps/driveabout/publisher/c;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/publisher/c;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_3b

    const-string v2, "P"

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/publisher/c;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    goto :goto_e

    :cond_3b
    iput v5, v0, Landroid/os/Message;->what:I

    goto :goto_e

    :catch_3e
    move-exception v0

    goto :goto_11

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method
