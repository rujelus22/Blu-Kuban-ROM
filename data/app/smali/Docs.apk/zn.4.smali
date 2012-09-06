.class Lzn;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lzl;


# direct methods
.method constructor <init>(Lzl;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lzn;->a:Lzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;
    .registers 2

    .prologue
    .line 87
    invoke-static {}, Lzo;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lzn;->a()Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 107
    invoke-static {}, Lzo;->a()V

    .line 108
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lzo;->a(LanD;)V

    .line 103
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    invoke-static {p1}, Lzo;->a(LanG;)V

    .line 93
    return-void
.end method
