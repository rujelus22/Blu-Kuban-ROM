.class LHd;
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
        "Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;",
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
    .line 396
    iput-object p1, p0, LHd;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 399
    invoke-static {p1}, LHq;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    .line 401
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    check-cast p1, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;

    invoke-virtual {p0, p1}, LHd;->a(Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;)V

    return-void
.end method
