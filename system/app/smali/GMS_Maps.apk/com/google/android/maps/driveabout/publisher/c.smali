.class Lcom/google/android/maps/driveabout/publisher/c;
.super Lcom/google/android/maps/driveabout/publisher/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/maps/driveabout/publisher/c;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/publisher/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 51
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 52
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 54
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_40

    .line 73
    iput v5, v0, Landroid/os/Message;->what:I

    .line 78
    :goto_e
    :try_start_e
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_3e

    .line 82
    :goto_11
    return-void

    .line 57
    :pswitch_12
    iget-object v2, p0, Lcom/google/android/maps/driveabout/publisher/c;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 59
    iget-object v3, p0, Lcom/google/android/maps/driveabout/publisher/c;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    if-nez v2, :cond_3b

    .line 64
    const-string v2, "P"

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 67
    iget-object v2, p0, Lcom/google/android/maps/driveabout/publisher/c;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;->a(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    goto :goto_e

    .line 69
    :cond_3b
    iput v5, v0, Landroid/os/Message;->what:I

    goto :goto_e

    .line 79
    :catch_3e
    move-exception v0

    goto :goto_11

    .line 54
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method
