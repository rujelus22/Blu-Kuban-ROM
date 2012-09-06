.class Ljcifs/smb/cd;
.super Ljcifs/smb/ar;


# instance fields
.field private a:Ljcifs/smb/bf;


# direct methods
.method constructor <init>(Ljcifs/smb/bf;)V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/ar;-><init>()V

    iput-object p1, p0, Ljcifs/smb/cd;->a:Ljcifs/smb/bf;

    return-void
.end method


# virtual methods
.method a([BII)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method b([BII)I
    .registers 6

    iget-object v0, p0, Ljcifs/smb/cd;->a:Ljcifs/smb/bf;

    iget-object v0, v0, Ljcifs/smb/bf;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljcifs/smb/cd;->a:Ljcifs/smb/bf;

    iget-object v0, v0, Ljcifs/smb/bf;->p:Ljava/io/InputStream;

    check-cast v0, Ljcifs/smb/ck;

    iget-object v1, v0, Ljcifs/smb/ck;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/ck;->b([BII)I

    iget-object v0, v0, Ljcifs/smb/ck;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :cond_18
    return p3

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransCallNamedPipeResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
