.class public abstract Lcom/samsung/swift/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/security/SecurityManager$Response;
    }
.end annotation


# static fields
.field public static final ACCESS_EVENT:Ljava/lang/String; = null

.field public static final CHALLANGE_BEGIN_EVENT:Ljava/lang/String; = null

.field public static final CHALLANGE_END_EVENT:Ljava/lang/String; = null

.field public static final RESPONSE_EXTRA:Ljava/lang/String; = "response"

.field private static instance:Lcom/samsung/swift/security/SecurityManager;


# instance fields
.field private currentChallange:Lcom/samsung/swift/security/Connection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/security/SecurityManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/challangeBegin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/SecurityManager;->CHALLANGE_BEGIN_EVENT:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/security/SecurityManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/challangeEnd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/SecurityManager;->CHALLANGE_END_EVENT:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/security/SecurityManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/SecurityManager;->ACCESS_EVENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method protected static askUser(Lcom/samsung/swift/security/Connection;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 182
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/swift/security/SecurityManager;->doAskUser(Lcom/samsung/swift/security/Connection;)V

    .line 183
    return-void
.end method

.method private declared-synchronized doAskUser(Lcom/samsung/swift/security/Connection;)V
    .registers 4
    .parameter "connection"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityManager;->currentChallange:Lcom/samsung/swift/security/Connection;

    .line 173
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/security/SecurityManager;->CHALLANGE_BEGIN_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, broadcastIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 175
    monitor-exit p0

    return-void

    .line 171
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static fireAccessEvent(I)V
    .registers 4
    .parameter "response"

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/security/SecurityManager;->ACCESS_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, accessIntent:Landroid/content/Intent;
    const-string v1, "response"

    invoke-static {p0}, Lcom/samsung/swift/security/SecurityManager$Response;->convert(I)Lcom/samsung/swift/security/SecurityManager$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/security/SecurityManager$Response;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method public static instance()Lcom/samsung/swift/security/SecurityManager;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/samsung/swift/security/SecurityManager;->instance:Lcom/samsung/swift/security/SecurityManager;

    if-nez v0, :cond_b

    .line 130
    new-instance v0, Lcom/samsung/swift/security/SecurityManagerImpl;

    invoke-direct {v0}, Lcom/samsung/swift/security/SecurityManagerImpl;-><init>()V

    sput-object v0, Lcom/samsung/swift/security/SecurityManager;->instance:Lcom/samsung/swift/security/SecurityManager;

    .line 133
    :cond_b
    sget-object v0, Lcom/samsung/swift/security/SecurityManager;->instance:Lcom/samsung/swift/security/SecurityManager;

    return-object v0
.end method


# virtual methods
.method public abstract cleanExpired(Z)V
.end method

.method public declared-synchronized finishCurrentChallange()V
    .registers 3

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/security/SecurityManager;->CHALLANGE_END_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, broadcastIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManager;->currentChallange:Lcom/samsung/swift/security/Connection;

    invoke-virtual {p0, v1}, Lcom/samsung/swift/security/SecurityManager;->submitChallange(Lcom/samsung/swift/security/Connection;)V

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/swift/security/SecurityManager;->currentChallange:Lcom/samsung/swift/security/Connection;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 194
    monitor-exit p0

    return-void

    .line 189
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized forgetCurrentChallange()V
    .registers 2

    .prologue
    .line 198
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/samsung/swift/security/SecurityManager;->currentChallange:Lcom/samsung/swift/security/Connection;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 199
    monitor-exit p0

    return-void

    .line 198
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthorisedConnections()[Lcom/samsung/swift/security/Connection;
    .registers 8

    .prologue
    .line 148
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/swift/security/SecurityManager;->getConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v3

    .line 149
    .local v3, connections:[Lcom/samsung/swift/security/Connection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, authorisedConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/swift/security/Connection;>;"
    move-object v0, v3

    .local v0, arr$:[Lcom/samsung/swift/security/Connection;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_10
    if-ge v4, v5, :cond_20

    aget-object v2, v0, v4

    .line 153
    .local v2, c:Lcom/samsung/swift/security/Connection;
    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->isWhiteListed()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 155
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 158
    .end local v2           #c:Lcom/samsung/swift/security/Connection;
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/samsung/swift/security/Connection;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/samsung/swift/security/Connection;

    check-cast v6, [Lcom/samsung/swift/security/Connection;

    return-object v6
.end method

.method public abstract getConnections()[Lcom/samsung/swift/security/Connection;
.end method

.method public declared-synchronized getCurrentChallange()Lcom/samsung/swift/security/Connection;
    .registers 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManager;->currentChallange:Lcom/samsung/swift/security/Connection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getNetworks()[Lcom/samsung/swift/security/Network;
.end method

.method public abstract remove(Lcom/samsung/swift/security/Connection;)V
.end method

.method public abstract remove(Lcom/samsung/swift/security/Network;)V
.end method

.method public abstract reset()V
.end method

.method protected abstract submitChallange(Lcom/samsung/swift/security/Connection;)V
.end method

.method public abstract update(Lcom/samsung/swift/security/Connection;)V
.end method

.method public abstract update(Lcom/samsung/swift/security/Network;)V
.end method
