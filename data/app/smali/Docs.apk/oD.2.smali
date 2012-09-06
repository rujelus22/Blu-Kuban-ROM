.class LoD;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LoC;


# direct methods
.method constructor <init>(LoC;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, LoD;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 413
    invoke-static {p1}, LoT;->a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;)V

    .line 415
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    invoke-virtual {p0, p1}, LoD;->a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;)V

    return-void
.end method
