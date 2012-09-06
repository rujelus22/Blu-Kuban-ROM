.class public Lcom/google/android/apps/docs/editors/EditorsApplication;
.super Lcom/google/android/apps/docs/DocsApplication;
.source "EditorsApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/docs/DocsApplication;-><init>()V

    .line 31
    return-void
.end method

.method static b(Landroid/app/Application;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lanz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, LaiA;->a()LaiB;

    move-result-object v0

    new-instance v1, Lub;

    invoke-direct {v1}, Lub;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lko;

    invoke-direct {v1}, Lko;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lvm;

    invoke-direct {v1}, Lvm;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lyd;

    invoke-direct {v1}, Lyd;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    invoke-virtual {v0}, LaiB;->a()LaiA;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lanz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, LaiA;->a()LaiB;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Iterable;)LaiB;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/docs/editors/EditorsApplication;->b(Landroid/app/Application;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Iterable;)LaiB;

    move-result-object v0

    invoke-virtual {v0}, LaiB;->a()LaiA;

    move-result-object v0

    return-object v0
.end method
