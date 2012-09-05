.class public final Ljavax/jmdns/NetworkTopologyDiscovery$Factory;
.super Ljava/lang/Object;
.source "NetworkTopologyDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/NetworkTopologyDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;
    }
.end annotation


# static fields
.field private static final _databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _instance:Ljavax/jmdns/NetworkTopologyDiscovery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static classDelegate()Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;

    return-object v0
.end method

.method public static getInstance()Ljavax/jmdns/NetworkTopologyDiscovery;
    .registers 2

    .prologue
    .line 123
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    if-nez v0, :cond_12

    .line 124
    const-class v1, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;

    monitor-enter v1

    .line 125
    :try_start_7
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    if-nez v0, :cond_11

    .line 126
    invoke-static {}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->newNetworkTopologyDiscovery()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    .line 124
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 130
    :cond_12
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_instance:Ljavax/jmdns/NetworkTopologyDiscovery;

    return-object v0

    .line 124
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected static newNetworkTopologyDiscovery()Ljavax/jmdns/NetworkTopologyDiscovery;
    .registers 3

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, instance:Ljavax/jmdns/NetworkTopologyDiscovery;
    sget-object v2, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;

    .line 111
    .local v0, delegate:Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;
    if-eqz v0, :cond_f

    .line 112
    invoke-interface {v0}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;->newNetworkTopologyDiscovery()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v1

    .line 114
    :cond_f
    if-eqz v1, :cond_12

    .end local v1           #instance:Ljavax/jmdns/NetworkTopologyDiscovery;
    :goto_11
    return-object v1

    .restart local v1       #instance:Ljavax/jmdns/NetworkTopologyDiscovery;
    :cond_12
    new-instance v1, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;

    .end local v1           #instance:Ljavax/jmdns/NetworkTopologyDiscovery;
    invoke-direct {v1}, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;-><init>()V

    goto :goto_11
.end method

.method public static setClassDelegate(Ljavax/jmdns/NetworkTopologyDiscovery$Factory$ClassDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 89
    sget-object v0, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
