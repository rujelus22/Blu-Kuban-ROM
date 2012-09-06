.class public abstract Ljcifs/smb/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljcifs/smb/r;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljcifs/smb/SmbAuthException;


# direct methods
.method public static a(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 4

    sget-object v0, Ljcifs/smb/r;->a:Ljcifs/smb/r;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v1, Ljcifs/smb/r;->a:Ljcifs/smb/r;

    monitor-enter v1

    :try_start_9
    sget-object v0, Ljcifs/smb/r;->a:Ljcifs/smb/r;

    iput-object p0, v0, Ljcifs/smb/r;->b:Ljava/lang/String;

    sget-object v0, Ljcifs/smb/r;->a:Ljcifs/smb/r;

    iput-object p1, v0, Ljcifs/smb/r;->c:Ljcifs/smb/SmbAuthException;

    sget-object v0, Ljcifs/smb/r;->a:Ljcifs/smb/r;

    invoke-virtual {v0}, Ljcifs/smb/r;->a()Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    monitor-exit v1

    goto :goto_5

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method protected a()Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
