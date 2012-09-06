.class Lfk;
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
        "Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;",
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
    .line 1704
    iput-object p1, p0, Lfk;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1707
    invoke-static {p1}, Lgu;->a(Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;)V

    .line 1709
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1704
    check-cast p1, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;

    invoke-virtual {p0, p1}, Lfk;->a(Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;)V

    return-void
.end method
