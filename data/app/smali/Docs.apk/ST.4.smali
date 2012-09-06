.class public final LST;
.super Ljava/lang/Object;
.source "FeedSelectorImpl.java"

# interfaces
.implements LSS;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 44
    const-string v0, "https://docs.google.com/feeds/default/private/full?showdeleted=true&showroot=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "https://docs.google.com/feeds/default/private/full/-/folder?showdeleted=true&showroot=true"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LST;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, LST;->a:Landroid/net/Uri;

    .line 51
    iput-object p2, p0, LST;->b:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public a(LSR;)LTe;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSR;",
            ")",
            "LTe",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p1, LSR;->a:LTi;

    iget-object v1, p0, LST;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, LTi;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, LST;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    iget-object v1, p1, LSR;->b:LTi;

    iget-object v2, p0, LST;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, LTi;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, LST;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    new-instance v2, LTe;

    invoke-direct {v2, v0, v1}, LTe;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_4

    .line 91
    :goto_3
    return-object v0

    .line 70
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    const-string v1, "-"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 74
    if-ltz v1, :cond_3a

    .line 76
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 77
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    invoke-static {v3}, LST;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    :cond_3a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3e

    .line 84
    :cond_4e
    invoke-static {p1}, Laak;->a(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, LST;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, LST;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_72
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_72

    .line 91
    :cond_82
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_3
.end method
