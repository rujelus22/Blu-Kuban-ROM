.class LoP;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;",
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
    .line 450
    iput-object p1, p0, LoP;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 453
    invoke-static {p1}, LoU;->a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)V

    .line 455
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 450
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-virtual {p0, p1}, LoP;->a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)V

    return-void
.end method
