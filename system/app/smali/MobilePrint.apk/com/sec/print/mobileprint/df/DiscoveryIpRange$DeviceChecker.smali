.class Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;
.super Ljava/lang/Object;
.source "DiscoveryIpRange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/df/DiscoveryIpRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceChecker"
.end annotation


# instance fields
.field private final address:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;


# direct methods
.method constructor <init>(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;Ljava/net/InetAddress;)V
    .registers 3
    .parameter
    .parameter "address"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->address:Ljava/net/InetAddress;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 47
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v5, pingRequests:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp1Discovery:Z
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$000(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_15
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp2Discovery:Z
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$100(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 52
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_25
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->address:Ljava/net/InetAddress;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->timeout:J
    invoke-static {v1}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$200(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp1ReadComunity:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$300(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp2ReadComunity:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$400(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sec/print/mobileprint/df/DeviceDetector;->pingHost(Ljava/net/InetAddress;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v8

    .line 55
    .local v8, pingResults:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 56
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->newDeviceFound(Ljava/lang/String;I)V

    .line 60
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->progress:D
    invoke-static {v1}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$600(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$518(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;D)D

    .line 62
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->checkedAddresses:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$700(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1
    :try_end_66
    .catchall {:try_start_0 .. :try_end_66} :catchall_dd
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_66} :catch_b2

    .line 63
    :try_start_66
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->checkedAddresses:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$700(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->address:Ljava/net/InetAddress;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_71
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->checkedAddresses:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$700(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->firstNonCheckedAddress:Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$800(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 65
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->checkedAddresses:Ljava/util/Set;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$700(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->firstNonCheckedAddress:Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$800(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->firstNonCheckedAddress:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$800(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/net/InetAddress;

    move-result-object v0

    #calls: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressToArray(Ljava/net/InetAddress;)[I
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$900(Ljava/net/InetAddress;)[I

    move-result-object v6

    .line 67
    .local v6, bytes:[I
    #calls: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->increaseAddressArray([I)V
    invoke-static {v6}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$1000([I)V

    .line 68
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressScopeId:I
    invoke-static {v2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$1100(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)I

    move-result v2

    #calls: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->arrayToAddress([II)Ljava/net/InetAddress;
    invoke-static {v6, v2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$1200([II)Ljava/net/InetAddress;

    move-result-object v2

    #setter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->firstNonCheckedAddress:Ljava/net/InetAddress;
    invoke-static {v0, v2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$802(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    goto :goto_71

    .line 70
    .end local v6           #bytes:[I
    :catchall_af
    move-exception v0

    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_66 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_dd
    .catch Ljava/lang/InterruptedException; {:try_start_b1 .. :try_end_b2} :catch_b2

    .line 71
    .end local v5           #pingRequests:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v8           #pingResults:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    :catch_b2
    move-exception v7

    .line 72
    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_b3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_dd

    .line 74
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->semaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$1300(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 76
    .end local v7           #e:Ljava/lang/InterruptedException;
    :goto_c3
    return-void

    .line 57
    .restart local v5       #pingRequests:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v8       #pingResults:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_c4
    const/4 v0, 0x1

    :try_start_c5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 58
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->newDeviceFound(Ljava/lang/String;I)V
    :try_end_db
    .catchall {:try_start_c5 .. :try_end_db} :catchall_dd
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_db} :catch_b2

    goto/16 :goto_54

    .line 74
    .end local v5           #pingRequests:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v8           #pingResults:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    :catchall_dd
    move-exception v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->semaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$1300(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    .line 70
    .restart local v5       #pingRequests:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v8       #pingResults:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_e8
    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_af

    .line 74
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryIpRange;

    #getter for: Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->semaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->access$1300(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_c3
.end method
