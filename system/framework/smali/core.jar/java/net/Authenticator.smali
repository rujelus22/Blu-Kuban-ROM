.class public abstract Ljava/net/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Authenticator$RequestorType;
    }
.end annotation


# static fields
.field private static final requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

.field private static final setDefaultAuthenticatorPermission:Ljava/net/NetPermission;

.field private static thisAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private host:Ljava/lang/String;

.field private port:I

.field private prompt:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private rt:Ljava/net/Authenticator$RequestorType;

.field private scheme:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "requestPasswordAuthentication"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/Authenticator;->requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

    .line 39
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setDefaultAuthenticator"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/Authenticator;->setDefaultAuthenticatorPermission:Ljava/net/NetPermission;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 286
    return-void
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .registers 9
    .parameter "rHost"
    .parameter "rAddr"
    .parameter "rPort"
    .parameter "rProtocol"
    .parameter "rPrompt"
    .parameter "rScheme"

    .prologue
    .line 190
    const-class v1, Ljava/net/Authenticator;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2f

    if-nez v0, :cond_a

    .line 191
    const/4 v0, 0x0

    .line 205
    :goto_8
    monitor-exit v1

    return-object v0

    .line 195
    :cond_a
    :try_start_a
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    .line 196
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p1, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 197
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p2, v0, Ljava/net/Authenticator;->port:I

    .line 198
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 199
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 200
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p5, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 201
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v2, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 205
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2f

    move-result-object v0

    goto :goto_8

    .line 190
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .registers 9
    .parameter "rHost"
    .parameter "rAddr"
    .parameter "rPort"
    .parameter "rProtocol"
    .parameter "rPrompt"
    .parameter "rScheme"
    .parameter "rURL"
    .parameter "reqType"

    .prologue
    .line 245
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    if-nez v0, :cond_6

    .line 246
    const/4 v0, 0x0

    .line 261
    :goto_5
    return-object v0

    .line 250
    :cond_6
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    .line 251
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p1, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 252
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p2, v0, Ljava/net/Authenticator;->port:I

    .line 253
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 254
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 255
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p5, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 256
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p6, v0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    .line 257
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p7, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 261
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;

    move-result-object v0

    goto :goto_5
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .registers 8
    .parameter "rAddr"
    .parameter "rPort"
    .parameter "rProtocol"
    .parameter "rPrompt"
    .parameter "rScheme"

    .prologue
    .line 140
    const-class v1, Ljava/net/Authenticator;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-nez v0, :cond_a

    .line 141
    const/4 v0, 0x0

    .line 154
    :goto_8
    monitor-exit v1

    return-object v0

    .line 145
    :cond_a
    :try_start_a
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 146
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p1, v0, Ljava/net/Authenticator;->port:I

    .line 147
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p2, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 148
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 149
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 150
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v2, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 154
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2b

    move-result-object v0

    goto :goto_8

    .line 140
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefault(Ljava/net/Authenticator;)V
    .registers 1
    .parameter "a"

    .prologue
    .line 165
    sput-object p0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    .line 166
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingPort()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Ljava/net/Authenticator;->port:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getRequestingURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    return-object v0
.end method

.method protected getRequestorType()Ljava/net/Authenticator$RequestorType;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
