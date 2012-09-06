.class public Lcom/google/ads/a/x;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final c:Lcom/google/ads/a/e;


# instance fields
.field protected a:Lcom/google/ads/a/q;

.field protected b:Z

.field private d:Ljava/util/Map;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/ads/a/e;->a:Lcom/google/ads/util/m;

    invoke-interface {v0}, Lcom/google/ads/util/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/e;

    sput-object v0, Lcom/google/ads/a/x;->c:Lcom/google/ads/a/e;

    return-void
.end method

.method protected constructor <init>(Lcom/google/ads/a/q;Ljava/util/Map;ZZ)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/q;

    iput-object p2, p0, Lcom/google/ads/a/x;->d:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/ads/a/x;->e:Z

    iput-boolean p4, p0, Lcom/google/ads/a/x;->f:Z

    iput-boolean v0, p0, Lcom/google/ads/a/x;->b:Z

    iput-boolean v0, p0, Lcom/google/ads/a/x;->g:Z

    iput-boolean v0, p0, Lcom/google/ads/a/x;->h:Z

    return-void
.end method

.method public static a(Lcom/google/ads/a/q;Ljava/util/Map;ZZ)Lcom/google/ads/a/x;
    .registers 6

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/google/ads/util/w;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/util/w;-><init>(Lcom/google/ads/a/q;Ljava/util/Map;ZZ)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/ads/a/x;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/a/x;-><init>(Lcom/google/ads/a/q;Ljava/util/Map;ZZ)V

    goto :goto_b
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/x;->b:Z

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/x;->f:Z

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/x;->g:Z

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/x;->h:Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/ads/a/x;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->h()Lcom/google/ads/a/j;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/google/ads/a/j;->a()V

    :goto_10
    iput-boolean v1, p0, Lcom/google/ads/a/x;->g:Z

    :cond_12
    iget-boolean v0, p0, Lcom/google/ads/a/x;->h:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/ads/a/x;->c:Lcom/google/ads/a/e;

    invoke-static {p1}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lcom/google/ads/a/x;->h:Z

    :cond_1d
    return-void

    :cond_1e
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading(\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v3, "ai"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/q;

    invoke-virtual {v3}, Lcom/google/ads/a/q;->k()Lcom/google/ads/a/v;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/ads/a/v;->a(Ljava/lang/String;)V

    :cond_36
    sget-object v0, Lcom/google/ads/a/x;->c:Lcom/google/ads/a/e;

    invoke-static {v2}, Lcom/google/ads/a/e;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/google/ads/a/x;->c:Lcom/google/ads/a/e;

    iget-object v0, p0, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/q;

    iget-object v3, p0, Lcom/google/ads/a/x;->d:Ljava/util/Map;

    invoke-static {v0, v3, v2, p1}, Lcom/google/ads/a/e;->a(Lcom/google/ads/a/q;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v1

    :goto_48
    return v0

    :cond_49
    iget-boolean v0, p0, Lcom/google/ads/a/x;->f:Z

    if-eqz v0, :cond_70

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_48

    :cond_58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "u"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/q;

    new-instance v3, Lcom/google/ads/a/r;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/a/r;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/a/q;Lcom/google/ads/a/r;)V

    move v0, v1

    goto :goto_48

    :cond_70
    iget-boolean v0, p0, Lcom/google/ads/a/x;->e:Z

    if-eqz v0, :cond_90

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/q;

    new-instance v3, Lcom/google/ads/a/r;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/a/r;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/a/q;Lcom/google/ads/a/r;)V

    move v0, v1

    goto :goto_48

    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "URL is not a GMSG and can\'t handle URL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_48
.end method
