.class LwY;
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
        "Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LwU;


# direct methods
.method constructor <init>(LwU;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, LwY;->a:LwU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 541
    invoke-static {p1}, Lxg;->a(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;)V

    .line 543
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    check-cast p1, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    invoke-virtual {p0, p1}, LwY;->a(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;)V

    return-void
.end method
