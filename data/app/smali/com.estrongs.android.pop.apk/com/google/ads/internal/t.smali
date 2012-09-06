.class public Lcom/google/ads/internal/t;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final c:Lcom/google/ads/internal/g;


# instance fields
.field protected a:Lcom/google/ads/internal/m;

.field protected b:Z

.field private d:Ljava/util/Map;
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

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/ads/internal/g;->a:Lcom/google/ads/util/j;

    invoke-interface {v0}, Lcom/google/ads/util/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/g;

    sput-object v0, Lcom/google/ads/internal/t;->c:Lcom/google/ads/internal/g;

    return-void
.end method

.method protected constructor <init>(Lcom/google/ads/internal/m;Ljava/util/Map;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/ai;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/t;->a:Lcom/google/ads/internal/m;

    iput-object p2, p0, Lcom/google/ads/internal/t;->d:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/ads/internal/t;->e:Z

    iput-boolean p4, p0, Lcom/google/ads/internal/t;->f:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/t;->b:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/t;->g:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/t;->h:Z

    return-void
.end method

.method public static a(Lcom/google/ads/internal/m;Ljava/util/Map;ZZ)Lcom/google/ads/internal/t;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/ai;",
            ">;ZZ)",
            "Lcom/google/ads/internal/t;"
        }
    .end annotation

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    new-instance v0, Lcom/google/ads/util/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/util/t;-><init>(Lcom/google/ads/internal/m;Ljava/util/Map;ZZ)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/ads/internal/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/internal/t;-><init>(Lcom/google/ads/internal/m;Ljava/util/Map;ZZ)V

    goto :goto_b
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/internal/t;->b:Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/internal/t;->f:Z

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/internal/t;->g:Z

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/internal/t;->h:Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/ads/internal/t;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->h()Lcom/google/ads/internal/c;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/google/ads/internal/c;->b()V

    :goto_10
    iput-boolean v1, p0, Lcom/google/ads/internal/t;->g:Z

    :cond_12
    iget-boolean v0, p0, Lcom/google/ads/internal/t;->h:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/ads/internal/t;->c:Lcom/google/ads/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lcom/google/ads/internal/t;->h:Z

    :cond_1d
    return-void

    :cond_1e
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading(\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v3, "ai"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v3, p0, Lcom/google/ads/internal/t;->a:Lcom/google/ads/internal/m;

    invoke-virtual {v3}, Lcom/google/ads/internal/m;->k()Lcom/google/ads/internal/r;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/ads/internal/r;->a(Ljava/lang/String;)V

    :cond_3a
    sget-object v0, Lcom/google/ads/internal/t;->c:Lcom/google/ads/internal/g;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/g;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/google/ads/internal/t;->c:Lcom/google/ads/internal/g;

    iget-object v3, p0, Lcom/google/ads/internal/t;->a:Lcom/google/ads/internal/m;

    iget-object v4, p0, Lcom/google/ads/internal/t;->d:Ljava/util/Map;

    invoke-virtual {v0, v3, v4, v2, p1}, Lcom/google/ads/internal/g;->a(Lcom/google/ads/internal/m;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v1

    :goto_4c
    return v0

    :cond_4d
    iget-boolean v0, p0, Lcom/google/ads/internal/t;->f:Z

    if-eqz v0, :cond_74

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_4c

    :cond_5c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "u"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/internal/t;->a:Lcom/google/ads/internal/m;

    new-instance v3, Lcom/google/ads/internal/n;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/internal/n;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/m;Lcom/google/ads/internal/n;)V

    move v0, v1

    goto :goto_4c

    :cond_74
    iget-boolean v0, p0, Lcom/google/ads/internal/t;->e:Z

    if-eqz v0, :cond_94

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/internal/t;->a:Lcom/google/ads/internal/m;

    new-instance v3, Lcom/google/ads/internal/n;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/internal/n;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/m;Lcom/google/ads/internal/n;)V

    move v0, v1

    goto :goto_4c

    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is not a GMSG and can\'t handle URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_4c
.end method
