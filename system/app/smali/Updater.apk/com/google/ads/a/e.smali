.class public final Lcom/google/ads/a/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/ads/util/m;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;

.field private static final d:Lcom/google/ads/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/ads/a/e;

    invoke-direct {v0}, Lcom/google/ads/a/e;-><init>()V

    sput-object v0, Lcom/google/ads/a/e;->d:Lcom/google/ads/a/e;

    new-instance v0, Lcom/google/ads/a/g;

    invoke-direct {v0}, Lcom/google/ads/a/g;-><init>()V

    sput-object v0, Lcom/google/ads/a/e;->a:Lcom/google/ads/util/m;

    new-instance v0, Lcom/google/ads/a/h;

    invoke-direct {v0}, Lcom/google/ads/a/h;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/a/e;->b:Ljava/util/Map;

    new-instance v0, Lcom/google/ads/a/f;

    invoke-direct {v0}, Lcom/google/ads/a/f;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/a/e;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/ads/a/e;
    .registers 1

    sget-object v0, Lcom/google/ads/a/e;->d:Lcom/google/ads/a/e;

    return-object v0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    const-string v0, "onshow"

    const-string v1, "{\'version\': \'afma-sdk-a-v6.0.0\'}"

    invoke-static {p0, v0, v1}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending JS to a WebView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "AFMA_ReceiveMessage"

    if-eqz p2, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

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

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public static a(Landroid/webkit/WebView;Ljava/util/Map;)V
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openableURLs"

    invoke-static {p0, v1, v0}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/google/ads/a/q;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_d

    const-string v0, "An error occurred while parsing the message parameters."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    invoke-static {p2}, Lcom/google/ads/a/e;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    const-string v1, "An error occurred while parsing the AMSG parameters."

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    move-object v1, v0

    :goto_1f
    if-nez v1, :cond_8d

    const-string v0, "An error occurred while parsing the message."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_c

    :cond_27
    const-string v3, "launch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v0, "a"

    const-string v1, "intent"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u"

    const-string v1, "url"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/open"

    move-object v1, v0

    goto :goto_1f

    :cond_4a
    const-string v3, "closecanvas"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const-string v0, "/close"

    move-object v1, v0

    goto :goto_1f

    :cond_56
    const-string v3, "log"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v0, "/log"

    move-object v1, v0

    goto :goto_1f

    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "An error occurred while parsing the AMSG: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1f

    :cond_7a
    invoke-static {p2}, Lcom/google/ads/a/e;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1f

    :cond_86
    const-string v1, "Message was neither a GMSG nor an AMSG."

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1f

    :cond_8d
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/an;

    if-nez v0, :cond_af

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No AdResponse found, <message: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_af
    invoke-interface {v0, p0, v2, p3}, Lcom/google/ads/an;->a(Lcom/google/ads/a/q;Ljava/util/HashMap;Landroid/webkit/WebView;)V

    goto/16 :goto_c
.end method

.method public static a(Landroid/net/Uri;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Lcom/google/ads/a/e;->b(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p0}, Lcom/google/ads/a/e;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_16
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static b(Landroid/webkit/WebView;)V
    .registers 3

    const-string v0, "onhide"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

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
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "mobileads.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static c(Landroid/net/Uri;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

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
