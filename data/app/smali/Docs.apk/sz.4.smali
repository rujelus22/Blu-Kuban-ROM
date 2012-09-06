.class public Lsz;
.super LrL;
.source "WebDriveAppOpenerOption.java"


# direct methods
.method public constructor <init>(Lss;Landroid/content/Context;LrN;LSE;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p4}, LSE;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, LrL;-><init>(Lss;Landroid/content/Context;LrN;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static a(LkR;Landroid/content/Context;LrR;LrN;)Ljava/util/List;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkR;",
            "Landroid/content/Context;",
            "LrR;",
            "LrN;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, LkR;->c()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, LkR;->a()LkG;

    move-result-object v1

    invoke-virtual {v1}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-interface {p2, v1}, LrR;->a(Ljava/lang/String;)LrQ;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 54
    invoke-virtual {p0}, LkR;->g()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {v1, v3}, LrQ;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 56
    if-eqz v0, :cond_2d

    .line 57
    invoke-interface {v1, v0}, LrQ;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_2d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcR;->ic_drive_app_web_launcher:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 62
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSE;

    .line 63
    sget v4, LcY;->open_with_web_app_item_subtitle:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    new-instance v5, Lss;

    invoke-virtual {v0}, LSE;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6, v4}, Lss;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 65
    new-instance v4, Lsz;

    invoke-direct {v4, v5, p1, p3, v0}, Lsz;-><init>(Lss;Landroid/content/Context;LrN;LSE;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 67
    :cond_63
    return-object v3
.end method


# virtual methods
.method protected a(LkR;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, LkR;->a()LkG;

    move-result-object v0

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, LkR;->c()Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method
