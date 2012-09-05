.class Lcom/samsung/swift/service/systemstate/SystemStatePlugin$2;
.super Ljava/lang/Object;
.source "SystemStatePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/service/systemstate/SystemStatePlugin;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$2;->this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$2;->this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    new-instance v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;-><init>(Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;)V

    #setter for: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->listner:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;
    invoke-static {v0, v1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$602(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;)Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;

    .line 300
    #calls: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->telephonyManager()Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$400()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$2;->this$0:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    #getter for: Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->listner:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;
    invoke-static {v1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->access$600(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;)Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 301
    return-void
.end method
