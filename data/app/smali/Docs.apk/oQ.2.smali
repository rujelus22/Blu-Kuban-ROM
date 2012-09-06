.class LoQ;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;",
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
    .line 458
    iput-object p1, p0, LoQ;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 461
    invoke-static {p1}, Lpa;->a(Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;)V

    .line 463
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 458
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;

    invoke-virtual {p0, p1}, LoQ;->a(Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;)V

    return-void
.end method
