.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cookie2PortAttributeHandler"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .registers 2
    .parameter

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 824
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .registers 8
    .parameter "cookie"
    .parameter "origin"

    .prologue
    const/4 v2, 0x0

    .line 882
    if-nez p1, :cond_b

    .line 883
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :cond_b
    if-nez p2, :cond_15

    .line 886
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 888
    :cond_15
    instance-of v3, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v3, :cond_33

    move-object v0, p1

    .line 889
    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 890
    .local v0, cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getPort()I

    move-result v1

    .line 891
    .local v1, port:I
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 892
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v3

    if-nez v3, :cond_34

    .line 893
    sget-object v3, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Invalid cookie state: port not specified"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 902
    .end local v0           #cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v1           #port:I
    :cond_33
    :goto_33
    return v2

    .line 896
    .restart local v0       #cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    .restart local v1       #port:I
    :cond_34
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v4

    invoke-static {v3, v1, v4}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$1000(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;I[I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 900
    :cond_40
    const/4 v2, 0x1

    goto :goto_33
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .registers 8
    .parameter "cookie"
    .parameter "portValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 832
    if-nez p1, :cond_b

    .line 833
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    :cond_b
    instance-of v2, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v2, :cond_26

    move-object v0, p1

    .line 836
    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 837
    .local v0, cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 842
    :cond_20
    invoke-virtual {v0, v4}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPortAttributeBlank(Z)V

    .line 847
    :goto_23
    invoke-virtual {v0, v4}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPortAttributeSpecified(Z)V

    .line 849
    .end local v0           #cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_26
    return-void

    .line 844
    .restart local v0       #cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_27
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-static {v2, p2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$900(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Ljava/lang/String;)[I

    move-result-object v1

    .line 845
    .local v1, ports:[I
    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPorts([I)V

    goto :goto_23
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .registers 7
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 857
    if-nez p1, :cond_a

    .line 858
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    :cond_a
    if-nez p2, :cond_14

    .line 861
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 863
    :cond_14
    instance-of v2, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v2, :cond_39

    move-object v0, p1

    .line 864
    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 865
    .local v0, cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getPort()I

    move-result v1

    .line 866
    .local v1, port:I
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 867
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$1000(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;I[I)Z

    move-result v2

    if-nez v2, :cond_39

    .line 868
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    .end local v0           #cookie2:Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v1           #port:I
    :cond_39
    return-void
.end method