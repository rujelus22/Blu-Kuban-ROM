.class Lfo;
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
        "Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfe;


# direct methods
.method constructor <init>(Lfe;)V
    .registers 2
    .parameter

    .prologue
    .line 1736
    iput-object p1, p0, Lfo;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1739
    invoke-static {p1}, Lgl;->a(Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;)V

    .line 1741
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1736
    check-cast p1, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;

    invoke-virtual {p0, p1}, Lfo;->a(Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;)V

    return-void
.end method
