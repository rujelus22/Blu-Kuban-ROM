.class final LTn;
.super LTi;
.source "SingleFeedFilter.java"


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p2, p0, LTn;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LTi;-><init>(Ljava/lang/String;LTj;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 135
    if-nez p1, :cond_4

    .line 136
    const/4 v0, 0x0

    .line 143
    :goto_3
    return-object v0

    .line 138
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string v2, "-"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 140
    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    :cond_19
    iget-object v1, p0, LTn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3
.end method
