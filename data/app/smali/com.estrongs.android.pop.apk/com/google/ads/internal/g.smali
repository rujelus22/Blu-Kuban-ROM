.class public Lcom/google/ads/internal/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/ads/util/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/j",
            "<",
            "Lcom/google/ads/internal/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/ai;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/ai;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/ads/internal/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/ads/internal/g;

    invoke-direct {v0}, Lcom/google/ads/internal/g;-><init>()V

    sput-object v0, Lcom/google/ads/internal/g;->d:Lcom/google/ads/internal/g;

    new-instance v0, Lcom/google/ads/internal/h;

    invoke-direct {v0}, Lcom/google/ads/internal/h;-><init>()V

    sput-object v0, Lcom/google/ads/internal/g;->a:Lcom/google/ads/util/j;

    new-instance v0, Lcom/google/ads/internal/a$3;

    invoke-direct {v0}, Lcom/google/ads/internal/a$3;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/internal/g;->b:Ljava/util/Map;

    new-instance v0, Lcom/google/ads/internal/a$1;

    invoke-direct {v0}, Lcom/google/ads/internal/a$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/internal/g;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/ads/internal/g;
    .registers 1

    sget-object v0, Lcom/google/ads/internal/g;->d:Lcom/google/ads/internal/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/google/ads/internal/g;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "An error occurred while parsing the AMSG parameters."

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :goto_12
    return-object v0

    :cond_13
    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v0, "a"

    const-string v1, "intent"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u"

    const-string v1, "url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/open"

    goto :goto_12

    :cond_35
    const-string v2, "closecanvas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v0, "/close"

    goto :goto_12

    :cond_40
    const-string v2, "log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v0, "/log"

    goto :goto_12

    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while parsing the AMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_12

    :cond_66
    invoke-virtual {p0, p1}, Lcom/google/ads/internal/g;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_71
    const-string v1, "Message was neither a GMSG nor an AMSG."

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 4

    const-string v0, "onshow"

    const-string v1, "{\'version\': \'afma-sdk-a-v6.0.1\'}"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending JS to a WebView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "AFMA_ReceiveMessage"

    if-eqz p3, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_2e
    return-void

    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public a(Landroid/webkit/WebView;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openableURLs"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/ads/internal/m;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/ai;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v0, "An error occurred while parsing the message parameters."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p3, v1}, Lcom/google/ads/internal/g;->a(Landroid/net/Uri;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v0, "An error occurred while parsing the message."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ai;

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No AdResponse found, <message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_b

    :cond_3d
    invoke-interface {v0, p1, v1, p4}, Lcom/google/ads/ai;->a(Lcom/google/ads/internal/m;Ljava/util/HashMap;Landroid/webkit/WebView;)V

    goto :goto_b
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/ads/internal/g;->b(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0, p1}, Lcom/google/ads/internal/g;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_16
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public b(Landroid/webkit/WebView;)V
    .registers 4

    const-string v0, "onhide"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/net/Uri;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "gmsg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "mobileads.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method public c(Landroid/net/Uri;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method
