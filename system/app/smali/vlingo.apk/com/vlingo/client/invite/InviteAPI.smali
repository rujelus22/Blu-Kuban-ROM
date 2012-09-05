.class public Lcom/vlingo/client/invite/InviteAPI;
.super Ljava/lang/Object;
.source "InviteAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/invite/InviteAPI$1;,
        Lcom/vlingo/client/invite/InviteAPI$InviteCallback;,
        Lcom/vlingo/client/invite/InviteAPI$HttpCallback;
    }
.end annotation


# static fields
.field private static final TAF_TIMEOUT:I = 0x2710


# instance fields
.field private final callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

.field private curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

.field private curRequest:Lcom/vlingo/client/core/http/HttpRequest;

.field private final params:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vlingo/client/invite/InviteAPI$InviteCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;

    .line 42
    iput-object p1, p0, Lcom/vlingo/client/invite/InviteAPI;->callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/core/http/HttpRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vlingo/client/invite/InviteAPI;->getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAPI$InviteCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

    return-object v0
.end method

.method private declared-synchronized getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;
    .registers 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 50
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    .line 51
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 52
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    if-eqz v0, :cond_15

    .line 53
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->cancel()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 56
    :cond_15
    monitor-exit p0

    return-void

    .line 50
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getURL(Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/invite/InviteAPI;->cancel()V

    .line 61
    iput-object p1, p0, Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<toFriend><info phoneNum=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/></toFriend>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, body:Ljava/lang/String;
    const-string v1, "TellAFriend"

    new-instance v2, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;-><init>(Lcom/vlingo/client/invite/InviteAPI;Lcom/vlingo/client/invite/InviteAPI$1;)V

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getTAFURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Lcom/vlingo/client/core/http/URL;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/invite/InviteAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 68
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/http/HttpRequest;->setTimeout(I)V

    .line 69
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteAPI;->curRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/HttpRequest;->start()V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 70
    monitor-exit p0

    return-void

    .line 59
    .end local v0           #body:Ljava/lang/String;
    :catchall_45
    move-exception v1

    monitor-exit p0

    throw v1
.end method
