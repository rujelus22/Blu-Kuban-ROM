.class final Lcom/google/android/ytremote/b/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/b/e;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Lcom/google/android/ytremote/model/PairingCode;

.field private final synthetic d:Lcom/google/android/ytremote/logic/d;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/b/e;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/ytremote/logic/d;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    iput-object p3, p0, Lcom/google/android/ytremote/b/f;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/ytremote/b/f;->c:Lcom/google/android/ytremote/model/PairingCode;

    iput-object p5, p0, Lcom/google/android/ytremote/b/f;->d:Lcom/google/android/ytremote/logic/d;

    .line 110
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 113
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/google/android/ytremote/b/f;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    const-string v3, "text/plain; charset=\"utf-8\""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V

    .line 116
    :try_start_18
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pairingCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/ytremote/b/f;->c:Lcom/google/android/ytremote/model/PairingCode;

    invoke-virtual {v3}, Lcom/google/android/ytremote/model/PairingCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    iget-object v1, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v1}, Lcom/google/android/ytremote/b/e;->g(Lcom/google/android/ytremote/b/e;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_48} :catch_4d

    move-result v1

    .line 125
    sparse-switch v1, :sswitch_data_c4

    .line 149
    :goto_4c
    return-void

    .line 122
    :catch_4d
    move-exception v0

    iget-object v0, p0, Lcom/google/android/ytremote/b/f;->d:Lcom/google/android/ytremote/logic/d;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/ytremote/logic/d;->a(I)V

    goto :goto_4c

    .line 127
    :sswitch_55
    invoke-static {}, Lcom/google/android/ytremote/b/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting polling for online device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v1}, Lcom/google/android/ytremote/b/e;->h(Lcom/google/android/ytremote/b/e;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v1}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    iget-object v1, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/model/CloudScreen;)V

    .line 131
    iget-object v1, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    iget-object v2, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v2}, Lcom/google/android/ytremote/b/e;->d(Lcom/google/android/ytremote/b/e;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;J)V

    .line 132
    iget-object v1, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v1}, Lcom/google/android/ytremote/b/e;->f(Lcom/google/android/ytremote/b/e;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/google/android/ytremote/b/i;

    iget-object v3, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    iget-object v4, p0, Lcom/google/android/ytremote/b/f;->c:Lcom/google/android/ytremote/model/PairingCode;

    iget-object v5, p0, Lcom/google/android/ytremote/b/f;->d:Lcom/google/android/ytremote/logic/d;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/ytremote/b/i;-><init>(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/ytremote/logic/d;)V

    iget-object v3, p0, Lcom/google/android/ytremote/b/f;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v3}, Lcom/google/android/ytremote/b/e;->e(Lcom/google/android/ytremote/b/e;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 133
    const-string v1, "LOCATION"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 135
    const-string v1, "LOCATION"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 137
    :cond_ac
    iget-object v0, p0, Lcom/google/android/ytremote/b/f;->d:Lcom/google/android/ytremote/logic/d;

    goto :goto_4c

    .line 140
    :sswitch_af
    iget-object v0, p0, Lcom/google/android/ytremote/b/f;->d:Lcom/google/android/ytremote/logic/d;

    invoke-interface {v0, v4}, Lcom/google/android/ytremote/logic/d;->a(I)V

    goto :goto_4c

    .line 143
    :sswitch_b5
    iget-object v0, p0, Lcom/google/android/ytremote/b/f;->d:Lcom/google/android/ytremote/logic/d;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/ytremote/logic/d;->a(I)V

    goto :goto_4c

    .line 146
    :sswitch_bc
    iget-object v0, p0, Lcom/google/android/ytremote/b/f;->d:Lcom/google/android/ytremote/logic/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/ytremote/logic/d;->a(I)V

    goto :goto_4c

    .line 125
    nop

    :sswitch_data_c4
    .sparse-switch
        0xc9 -> :sswitch_55
        0x12f -> :sswitch_af
        0x194 -> :sswitch_b5
        0x1f7 -> :sswitch_bc
    .end sparse-switch
.end method
