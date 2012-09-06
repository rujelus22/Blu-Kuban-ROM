.class final LVW;
.super Ljava/lang/Object;
.source "SyncAlgorithms.java"

# interfaces
.implements LVT;


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "LVT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "LVT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LVW;->a:Ljava/util/Collection;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;LVV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, LVW;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a(LTM;LkG;Landroid/content/SyncResult;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LVW;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVT;

    .line 32
    invoke-interface {v0, p1, p2, p3}, LVT;->a(LTM;LkG;Landroid/content/SyncResult;)V

    goto :goto_6

    .line 34
    :cond_16
    return-void
.end method

.method public a(Landroid/content/SyncResult;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, LVW;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVT;

    .line 39
    invoke-interface {v0, p1, p2}, LVT;->a(Landroid/content/SyncResult;Z)V

    goto :goto_6

    .line 41
    :cond_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45
    const-string v0, "CompositeSyncAlgorithm[delegates=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LVW;->a:Ljava/util/Collection;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
