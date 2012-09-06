.class LFD;
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
        "Lcom/google/android/apps/docs/experiments/gview/GViewActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LFC;


# direct methods
.method constructor <init>(LFC;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, LFD;->a:LFC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    invoke-static {p1}, LFF;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)V

    .line 83
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    check-cast p1, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-virtual {p0, p1}, LFD;->a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)V

    return-void
.end method
