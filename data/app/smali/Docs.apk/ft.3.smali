.class Lft;
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
        "Lcom/google/android/apps/docs/app/HomeScreenActivity;",
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
    .line 1768
    iput-object p1, p0, Lft;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1771
    invoke-static {p1}, Lgj;->a(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V

    .line 1773
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1768
    check-cast p1, Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-virtual {p0, p1}, Lft;->a(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V

    return-void
.end method
