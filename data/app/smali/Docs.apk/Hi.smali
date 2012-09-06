.class LHi;
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
        "Lcom/google/android/apps/docs/fragment/PreviewFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LHc;


# direct methods
.method constructor <init>(LHc;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, LHi;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 415
    invoke-static {p1}, LHw;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    .line 417
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    check-cast p1, Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {p0, p1}, LHi;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    return-void
.end method
