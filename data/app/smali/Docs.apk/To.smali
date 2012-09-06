.class final LTo;
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
    .line 156
    iput-object p2, p0, LTo;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LTi;-><init>(Ljava/lang/String;LTj;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 159
    if-nez p1, :cond_7

    move-object v0, v1

    .line 178
    :goto_6
    return-object v0

    .line 163
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 164
    const-string v0, "-"

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 165
    if-ne v0, v7, :cond_17

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    :cond_17
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 169
    invoke-interface {v2, v6, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 170
    invoke-static {v1, v3}, LTi;->a(Landroid/net/Uri$Builder;Ljava/util/List;)V

    .line 171
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, LTo;->a:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "contents"

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 173
    invoke-static {v3, v4}, Ljava/util/Collections;->indexOfSubList(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    if-ne v3, v7, :cond_3f

    .line 174
    invoke-static {v1, v4}, LTi;->a(Landroid/net/Uri$Builder;Ljava/util/List;)V

    .line 176
    :cond_3f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-static {v1, v0}, LTi;->a(Landroid/net/Uri$Builder;Ljava/util/List;)V

    .line 178
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_6
.end method
