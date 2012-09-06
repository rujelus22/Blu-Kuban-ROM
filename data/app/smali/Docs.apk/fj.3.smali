.class Lfj;
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
        "Lcom/google/android/apps/docs/app/DocumentOpenerActivity;",
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
    .line 1696
    iput-object p1, p0, Lfj;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1699
    invoke-static {p1}, Lgf;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;)V

    .line 1701
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1696
    check-cast p1, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {p0, p1}, Lfj;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;)V

    return-void
.end method
