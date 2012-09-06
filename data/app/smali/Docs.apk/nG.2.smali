.class LnG;
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
        "Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LnD;


# direct methods
.method constructor <init>(LnD;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, LnG;->a:LnD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-static {p1}, LnK;->a(Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;)V

    .line 81
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    check-cast p1, Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;

    invoke-virtual {p0, p1}, LnG;->a(Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;)V

    return-void
.end method
