.class Lfr;
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
        "Lcom/google/android/apps/docs/app/CheckStatusActivity;",
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
    .line 1752
    iput-object p1, p0, Lfr;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1755
    invoke-static {p1}, Lgb;->a(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V

    .line 1757
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1752
    check-cast p1, Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-virtual {p0, p1}, Lfr;->a(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V

    return-void
.end method
