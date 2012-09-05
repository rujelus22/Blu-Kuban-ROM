.class public Lcom/google/android/apps/plus/fragments/FaviconLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "FaviconLoader.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mDomains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 35
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->FAVICONS_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "domain"

    aput-object v0, v3, v5

    const/4 v0, 0x1

    const-string v1, "icon"

    aput-object v1, v3, v0

    invoke-static {p3}, Lcom/google/android/apps/plus/fragments/FaviconLoader;->buildSelection(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_25

    move-object v5, v6

    :goto_1b
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/FaviconLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 42
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/FaviconLoader;->mDomains:Ljava/util/ArrayList;

    .line 43
    return-void

    .line 35
    :cond_25
    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    goto :goto_1b
.end method

.method private static buildSelection(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 47
    :cond_8
    const-string v2, "0"

    .line 56
    :goto_a
    return-object v2

    .line 49
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 52
    const-string v2, "?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 54
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 55
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 66
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/FaviconLoader;->mDomains:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 82
    :cond_7
    return-void

    .line 70
    :cond_8
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/FaviconLoader;->mDomains:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    .local v2, missingDomains:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_25

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 73
    :cond_17
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_17

    .line 79
    :cond_25
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, domain:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/FaviconLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/FaviconLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/plus/service/EsService;->getFavicon(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/FaviconLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method
