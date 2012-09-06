.class LLm;
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
        "Lcom/google/android/apps/docs/openurl/OpenUrlActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LLl;


# direct methods
.method constructor <init>(LLl;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, LLm;->a:LLl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    invoke-static {p1}, LLq;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V

    .line 184
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    check-cast p1, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-virtual {p0, p1}, LLm;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V

    return-void
.end method
