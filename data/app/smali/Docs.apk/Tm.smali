.class final LTm;
.super LTi;
.source "SingleFeedFilter.java"


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic a:Lle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Lle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p2, p0, LTm;->a:Ljava/util/Date;

    iput-object p3, p0, LTm;->a:Lle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LTi;-><init>(Ljava/lang/String;LTj;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .parameter

    .prologue
    .line 109
    if-nez p1, :cond_4

    .line 110
    const/4 v0, 0x0

    .line 118
    :goto_3
    return-object v0

    .line 112
    :cond_4
    const-wide/32 v1, 0x6ddd00

    .line 114
    iget-object v0, p0, LTm;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    sub-long/2addr v5, v1

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3d

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, LafQ;->a(Z)V

    .line 115
    iget-object v0, p0, LTm;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    add-long v0, v3, v1

    .line 116
    iget-object v2, p0, LTm;->a:Lle;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v3}, Lle;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "updated-max"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 114
    :cond_3d
    const/4 v0, 0x0

    goto :goto_18
.end method
