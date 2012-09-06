.class Lff;
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
        "Lcom/google/android/apps/docs/app/NewMainProxyActivity;",
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
    .line 1600
    iput-object p1, p0, Lff;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1603
    invoke-static {p1}, Lgn;->a(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V

    .line 1605
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1600
    check-cast p1, Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-virtual {p0, p1}, Lff;->a(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V

    return-void
.end method
