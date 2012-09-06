.class LHj;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "Lcom/google/android/apps/docs/fragment/CommentStreamFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LHc;


# direct methods
.method constructor <init>(LHc;)V
    .registers 2
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, LHj;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 423
    invoke-static {p1}, LHp;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)V

    .line 425
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 420
    check-cast p1, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-virtual {p0, p1}, LHj;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)V

    return-void
.end method
