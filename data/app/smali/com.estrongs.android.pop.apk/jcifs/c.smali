.class Ljcifs/c;
.super Ljava/lang/Thread;


# instance fields
.field a:Ljcifs/d;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljcifs/netbios/g;

.field f:Ljava/net/InetAddress;

.field g:Ljava/net/UnknownHostException;


# direct methods
.method constructor <init>(Ljcifs/d;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V
    .registers 8

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

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/c;->e:Ljcifs/netbios/g;

    iput-object p1, p0, Ljcifs/c;->a:Ljcifs/d;

    iput-object p2, p0, Ljcifs/c;->b:Ljava/lang/String;

    iput p3, p0, Ljcifs/c;->d:I

    iput-object p4, p0, Ljcifs/c;->c:Ljava/lang/String;

    iput-object p5, p0, Ljcifs/c;->f:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Ljcifs/c;->b:Ljava/lang/String;

    iget v1, p0, Ljcifs/c;->d:I

    iget-object v2, p0, Ljcifs/c;->c:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/c;->f:Ljava/net/InetAddress;

    invoke-static {v0, v1, v2, v3}, Ljcifs/netbios/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v0

    iput-object v0, p0, Ljcifs/c;->e:Ljcifs/netbios/g;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_5c
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_e} :catch_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_3b

    iget-object v1, p0, Ljcifs/c;->a:Ljcifs/d;

    monitor-enter v1

    :try_start_11
    iget-object v0, p0, Ljcifs/c;->a:Ljcifs/d;

    iget v2, v0, Ljcifs/d;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Ljcifs/d;->a:I

    iget-object v0, p0, Ljcifs/c;->a:Ljcifs/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :goto_1f
    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v0

    :catch_23
    move-exception v0

    :try_start_24
    iput-object v0, p0, Ljcifs/c;->g:Ljava/net/UnknownHostException;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_5c

    iget-object v1, p0, Ljcifs/c;->a:Ljcifs/d;

    monitor-enter v1

    :try_start_29
    iget-object v0, p0, Ljcifs/c;->a:Ljcifs/d;

    iget v2, v0, Ljcifs/d;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Ljcifs/d;->a:I

    iget-object v0, p0, Ljcifs/c;->a:Ljcifs/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_1f

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw v0

    :catch_3b
    move-exception v0

    :try_start_3c
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljcifs/c;->g:Ljava/net/UnknownHostException;
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_5c

    iget-object v1, p0, Ljcifs/c;->a:Ljcifs/d;

    monitor-enter v1

    :try_start_4a
    iget-object v0, p0, Ljcifs/c;->a:Ljcifs/d;

    iget v2, v0, Ljcifs/d;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Ljcifs/d;->a:I

    iget-object v0, p0, Ljcifs/c;->a:Ljcifs/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_1f

    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_59

    throw v0

    :catchall_5c
    move-exception v0

    iget-object v1, p0, Ljcifs/c;->a:Ljcifs/d;

    monitor-enter v1

    :try_start_60
    iget-object v2, p0, Ljcifs/c;->a:Ljcifs/d;

    iget v3, v2, Ljcifs/d;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ljcifs/d;->a:I

    iget-object v2, p0, Ljcifs/c;->a:Ljcifs/d;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_6f

    throw v0

    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0
.end method
