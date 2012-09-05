.class public Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
.super Ljava/lang/Object;
.source "ExchangeStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ExchangeStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExchangeTransport"
.end annotation


# static fields
.field private static final sUriToInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDomain:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->sUriToInstanceMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;Landroid/content/Context;)V
    .registers 4
    .parameter "uri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mContext:Landroid/content/Context;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->setUri(Ljava/net/URI;)V

    .line 227
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/net/URI;Landroid/content/Context;)Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    .registers 7
    .parameter "uri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 207
    const-class v3, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "eas"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "eas+ssl+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "eas+ssl+trustallcerts"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 209
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid scheme"

    invoke-direct {v2, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2f

    .line 207
    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 212
    :cond_32
    :try_start_32
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, key:Ljava/lang/String;
    sget-object v2, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->sUriToInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    .line 214
    .local v1, transport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    if-nez v1, :cond_4a

    .line 215
    new-instance v1, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;

    .end local v1           #transport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    invoke-direct {v1, p0, p1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;-><init>(Ljava/net/URI;Landroid/content/Context;)V

    .line 216
    .restart local v1       #transport:Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;
    sget-object v2, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->sUriToInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_2f

    .line 218
    :cond_4a
    monitor-exit v3

    return-object v1
.end method

.method private setUri(Ljava/net/URI;)V
    .registers 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 236
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mHost:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mHost:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 238
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "host not specified"

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_14
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mDomain:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mDomain:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 243
    iget-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mDomain:Ljava/lang/String;

    .line 246
    :cond_2a
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, userInfo:Ljava/lang/String;
    if-nez v1, :cond_38

    .line 248
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "user information not specifed"

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_38
    const-string v2, ":"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, uinfo:[Ljava/lang/String;
    array-length v2, v0

    if-eq v2, v4, :cond_49

    .line 252
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "user name and password not specified"

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_49
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mUsername:Ljava/lang/String;

    .line 255
    aget-object v2, v0, v3

    iput-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mPassword:Ljava/lang/String;

    .line 256
    return-void
.end method


# virtual methods
.method public checkSettings(Ljava/net/URI;)Landroid/os/Bundle;
    .registers 13
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->setUri(Ljava/net/URI;)V

    .line 266
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+ssl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 267
    .local v7, ssl:Z
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+trustallcerts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 269
    .local v8, tssl:Z
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, alias:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, username:Ljava/lang/String;
    if-eqz v7, :cond_57

    const/16 v6, 0x1bb

    .line 274
    .local v6, port:I
    :goto_38
    :try_start_38
    iget-object v2, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 278
    .local v1, svc:Lcom/android/emailcommon/service/IEmailService;
    instance-of v2, v1, Lcom/android/emailcommon/service/EmailServiceProxy;

    if-eqz v2, :cond_4c

    .line 279
    move-object v0, v1

    check-cast v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    move-object v2, v0

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;

    .line 281
    :cond_4c
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/mail/store/ExchangeStore$ExchangeTransport;->mPassword:Ljava/lang/String;

    invoke-interface/range {v1 .. v8}, Lcom/android/emailcommon/service/IEmailService;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_55} :catch_5a

    move-result-object v2

    return-object v2

    .line 273
    .end local v1           #svc:Lcom/android/emailcommon/service/IEmailService;
    .end local v6           #port:I
    :cond_57
    const/16 v6, 0x50

    goto :goto_38

    .line 283
    .restart local v6       #port:I
    :catch_5a
    move-exception v10

    .line 284
    .local v10, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Call to validate generated an exception"

    invoke-direct {v2, v3, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
