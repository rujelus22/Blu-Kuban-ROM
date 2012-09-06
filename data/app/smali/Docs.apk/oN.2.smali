.class LoN;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;",
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
    .line 434
    iput-object p1, p0, LoN;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 437
    invoke-static {p1}, LoV;->a(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;)V

    .line 439
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 434
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;

    invoke-virtual {p0, p1}, LoN;->a(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;)V

    return-void
.end method
