.class LMr;
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
        "Lcom/google/android/apps/docs/providers/DocListProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LMq;


# direct methods
.method constructor <init>(LMq;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, LMr;->a:LMq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/providers/DocListProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, LMu;->a(Lcom/google/android/apps/docs/providers/DocListProvider;)V

    .line 106
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    check-cast p1, Lcom/google/android/apps/docs/providers/DocListProvider;

    invoke-virtual {p0, p1}, LMr;->a(Lcom/google/android/apps/docs/providers/DocListProvider;)V

    return-void
.end method
