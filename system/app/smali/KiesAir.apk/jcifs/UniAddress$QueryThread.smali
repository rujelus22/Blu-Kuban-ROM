.class Ljcifs/UniAddress$QueryThread;
.super Ljava/lang/Thread;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryThread"
.end annotation


# instance fields
.field ans:Ljcifs/netbios/NbtAddress;

.field host:Ljava/lang/String;

.field scope:Ljava/lang/String;

.field sem:Ljcifs/UniAddress$Sem;

.field svr:Ljava/net/InetAddress;

.field type:I

.field uhe:Ljava/net/UnknownHostException;


# direct methods
.method constructor <init>(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V
    .registers 8
    .parameter "sem"
    .parameter "host"
    .parameter "type"
    .parameter "scope"
    .parameter "svr"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JCIFS-QueryThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    .line 139
    iput-object p1, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    .line 140
    iput-object p2, p0, Ljcifs/UniAddress$QueryThread;->host:Ljava/lang/String;

    .line 141
    iput p3, p0, Ljcifs/UniAddress$QueryThread;->type:I

    .line 142
    iput-object p4, p0, Ljcifs/UniAddress$QueryThread;->scope:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Ljcifs/UniAddress$QueryThread;->svr:Ljava/net/InetAddress;

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 147
    :try_start_0
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->host:Ljava/lang/String;

    iget v3, p0, Ljcifs/UniAddress$QueryThread;->type:I

    iget-object v4, p0, Ljcifs/UniAddress$QueryThread;->scope:Ljava/lang/String;

    iget-object v5, p0, Ljcifs/UniAddress$QueryThread;->svr:Ljava/net/InetAddress;

    invoke-static {v2, v3, v4, v5}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v2

    iput-object v2, p0, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_5c
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_e} :catch_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_3b

    .line 153
    iget-object v3, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    monitor-enter v3

    .line 154
    :try_start_11
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iget v4, v2, Ljcifs/UniAddress$Sem;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Ljcifs/UniAddress$Sem;->count:I

    .line 155
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v3

    .line 158
    :goto_1f
    return-void

    .line 156
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v2

    .line 148
    :catch_23
    move-exception v1

    .line 149
    .local v1, uhe:Ljava/net/UnknownHostException;
    :try_start_24
    iput-object v1, p0, Ljcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_5c

    .line 153
    iget-object v3, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    monitor-enter v3

    .line 154
    :try_start_29
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iget v4, v2, Ljcifs/UniAddress$Sem;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Ljcifs/UniAddress$Sem;->count:I

    .line 155
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v3

    goto :goto_1f

    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw v2

    .line 150
    .end local v1           #uhe:Ljava/net/UnknownHostException;
    :catch_3b
    move-exception v0

    .line 151
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3c
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_5c

    .line 153
    iget-object v3, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    monitor-enter v3

    .line 154
    :try_start_4a
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iget v4, v2, Ljcifs/UniAddress$Sem;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Ljcifs/UniAddress$Sem;->count:I

    .line 155
    iget-object v2, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v3

    goto :goto_1f

    :catchall_59
    move-exception v2

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_59

    throw v2

    .line 153
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_5c
    move-exception v2

    iget-object v3, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    monitor-enter v3

    .line 154
    :try_start_60
    iget-object v4, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    iget v5, v4, Ljcifs/UniAddress$Sem;->count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Ljcifs/UniAddress$Sem;->count:I

    .line 155
    iget-object v4, p0, Ljcifs/UniAddress$QueryThread;->sem:Ljcifs/UniAddress$Sem;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_6f

    throw v2

    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2
.end method
