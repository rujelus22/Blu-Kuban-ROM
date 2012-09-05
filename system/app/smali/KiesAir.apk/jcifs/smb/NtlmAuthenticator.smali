.class public abstract Ljcifs/smb/NtlmAuthenticator;
.super Ljava/lang/Object;
.source "NtlmAuthenticator.java"


# static fields
.field private static auth:Ljcifs/smb/NtlmAuthenticator;


# instance fields
.field private sae:Ljcifs/smb/SmbAuthException;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 4
    .parameter "url"
    .parameter "sae"

    .prologue
    .line 61
    sget-object v0, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;

    if-nez v0, :cond_6

    .line 62
    const/4 v0, 0x0

    .line 67
    :goto_5
    return-object v0

    .line 64
    :cond_6
    sget-object v1, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;

    monitor-enter v1

    .line 65
    :try_start_9
    sget-object v0, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;

    iput-object p0, v0, Ljcifs/smb/NtlmAuthenticator;->url:Ljava/lang/String;

    .line 66
    sget-object v0, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;

    iput-object p1, v0, Ljcifs/smb/NtlmAuthenticator;->sae:Ljcifs/smb/SmbAuthException;

    .line 67
    sget-object v0, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;

    invoke-virtual {v0}, Ljcifs/smb/NtlmAuthenticator;->getNtlmPasswordAuthentication()Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    monitor-exit v1

    goto :goto_5

    .line 68
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Ljcifs/smb/NtlmAuthenticator;->url:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ljcifs/smb/NtlmAuthenticator;->sae:Ljcifs/smb/SmbAuthException;

    .line 35
    return-void
.end method

.method public static declared-synchronized setDefault(Ljcifs/smb/NtlmAuthenticator;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 42
    const-class v1, Ljcifs/smb/NtlmAuthenticator;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_9

    .line 46
    :goto_7
    monitor-exit v1

    return-void

    .line 45
    :cond_9
    :try_start_9
    sput-object p0, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    .line 42
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getNtlmPasswordAuthentication()Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingException()Ljcifs/smb/SmbAuthException;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Ljcifs/smb/NtlmAuthenticator;->sae:Ljcifs/smb/SmbAuthException;

    return-object v0
.end method

.method protected final getRequestingURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Ljcifs/smb/NtlmAuthenticator;->url:Ljava/lang/String;

    return-object v0
.end method
