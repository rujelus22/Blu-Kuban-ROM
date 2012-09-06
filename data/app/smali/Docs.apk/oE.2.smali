.class LoE;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;",
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
    .line 482
    iput-object p1, p0, LoE;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 485
    invoke-static {p1}, LoZ;->a(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V

    .line 487
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 482
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    invoke-virtual {p0, p1}, LoE;->a(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V

    return-void
.end method
