.class final Lcom/twitter/android/network/m;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .registers 8

    new-instance v2, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v0, "Keep-Alive"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    :cond_b
    :goto_b
    invoke-interface {v2}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v3, "timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_27
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2a} :catch_39

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_b

    :goto_34
    return-wide v0

    :cond_35
    const-wide/32 v0, 0xea60

    goto :goto_34

    :catch_39
    move-exception v0

    goto :goto_b
.end method
