.class Lfp;
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
        "Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;",
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
    .line 1744
    iput-object p1, p0, Lfp;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1747
    invoke-static {p1}, Lgq;->a(Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;)V

    .line 1749
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1744
    check-cast p1, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;

    invoke-virtual {p0, p1}, Lfp;->a(Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;)V

    return-void
.end method
