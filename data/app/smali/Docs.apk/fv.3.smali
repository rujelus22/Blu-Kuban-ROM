.class Lfv;
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
        "Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;",
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
    .line 1784
    iput-object p1, p0, Lfv;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1787
    invoke-static {p1}, Lgt;->a(Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;)V

    .line 1789
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1784
    check-cast p1, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;

    invoke-virtual {p0, p1}, Lfv;->a(Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;)V

    return-void
.end method
