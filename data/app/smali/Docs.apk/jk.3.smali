.class public Ljk;
.super Ljava/lang/Object;
.source "NavigationPathSerializerImpl.java"

# interfaces
.implements Lji;


# instance fields
.field private final a:LhZ;


# direct methods
.method public constructor <init>(LhZ;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljk;->a:LhZ;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pathEntry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 61
    return-object v1

    .line 43
    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 44
    if-nez v2, :cond_31

    .line 45
    new-instance v0, Ljj;

    const-string v1, "Error loading navigation path from bundle"

    invoke-direct {v0, v1}, Ljj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_31
    :try_start_31
    iget-object v3, p0, Ljk;->a:LhZ;

    invoke-interface {v3, v2}, LhZ;->a(Landroid/os/Bundle;)LhW;
    :try_end_36
    .catch Lia; {:try_start_31 .. :try_end_36} :catch_3d

    move-result-object v2

    .line 57
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_9

    .line 52
    :catch_3d
    move-exception v0

    .line 53
    new-instance v1, Ljj;

    const-string v2, "Error loading navigation path from bundle"

    invoke-direct {v1, v2, v0}, Ljj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pathEntry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 73
    iget-object v5, p0, Ljk;->a:LhZ;

    invoke-interface {v5, v4, v0}, LhZ;->a(Landroid/os/Bundle;LhW;)V

    .line 74
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 76
    goto :goto_c

    .line 77
    :cond_3c
    return-void
.end method
