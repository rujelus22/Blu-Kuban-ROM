.class Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "CarSystemEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarSystemEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarSystemEventManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/CarSystemEventManager;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;->this$0:Lcom/vlingo/client/car/CarSystemEventManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/CarSystemEventManager;Lcom/vlingo/client/car/CarSystemEventManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;-><init>(Lcom/vlingo/client/car/CarSystemEventManager;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;->this$0:Lcom/vlingo/client/car/CarSystemEventManager;

    #getter for: Lcom/vlingo/client/car/CarSystemEventManager;->isAttached:Z
    invoke-static {v0}, Lcom/vlingo/client/car/CarSystemEventManager;->access$100(Lcom/vlingo/client/car/CarSystemEventManager;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 135
    iget-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;->this$0:Lcom/vlingo/client/car/CarSystemEventManager;

    #getter for: Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;
    invoke-static {v0}, Lcom/vlingo/client/car/CarSystemEventManager;->access$200(Lcom/vlingo/client/car/CarSystemEventManager;)Lcom/vlingo/client/car/CarActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/car/CarActivity;->onCallStateChanged(ILjava/lang/String;)V

    .line 137
    :cond_14
    return-void
.end method
