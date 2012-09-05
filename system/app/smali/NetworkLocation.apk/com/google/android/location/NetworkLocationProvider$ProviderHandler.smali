.class final Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "NetworkLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/NetworkLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/NetworkLocationProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/location/NetworkLocationProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/NetworkLocationProvider;Lcom/google/android/location/NetworkLocationProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;-><init>(Lcom/google/android/location/NetworkLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 545
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 556
    :goto_5
    return-void

    .line 547
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    #calls: Lcom/google/android/location/NetworkLocationProvider;->handleEnable()V
    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$000(Lcom/google/android/location/NetworkLocationProvider;)V

    goto :goto_5

    .line 550
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    #calls: Lcom/google/android/location/NetworkLocationProvider;->handleDisable()V
    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$100(Lcom/google/android/location/NetworkLocationProvider;)V

    goto :goto_5

    .line 553
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    #calls: Lcom/google/android/location/NetworkLocationProvider;->handleSetMinTime()V
    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$200(Lcom/google/android/location/NetworkLocationProvider;)V

    goto :goto_5

    .line 545
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
