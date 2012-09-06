.class Lfw;
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
        "Lcom/google/android/apps/docs/app/CreateNewDocActivity;",
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
    .line 1792
    iput-object p1, p0, Lfw;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1795
    invoke-static {p1}, Lgd;->a(Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V

    .line 1797
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1792
    check-cast p1, Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-virtual {p0, p1}, Lfw;->a(Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V

    return-void
.end method
