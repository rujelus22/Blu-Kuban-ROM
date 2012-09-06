.class LnF;
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
        "Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;",
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
    .line 68
    iput-object p1, p0, LnF;->a:LnD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    invoke-static {p1}, LnI;->a(Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;)V

    .line 73
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    check-cast p1, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;

    invoke-virtual {p0, p1}, LnF;->a(Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;)V

    return-void
.end method
