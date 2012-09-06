.class LaaG;
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
        "Lcom/google/android/apps/docs/view/DocListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LaaB;


# direct methods
.method constructor <init>(LaaB;)V
    .registers 2
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, LaaG;->a:LaaB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/view/DocListView;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    invoke-static {p1}, LaaK;->a(Lcom/google/android/apps/docs/view/DocListView;)V

    .line 268
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 263
    check-cast p1, Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {p0, p1}, LaaG;->a(Lcom/google/android/apps/docs/view/DocListView;)V

    return-void
.end method
