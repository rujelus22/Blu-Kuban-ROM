.class LoM;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;",
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
    .line 426
    iput-object p1, p0, LoM;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 429
    invoke-static {p1}, Lpb;->a(Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;)V

    .line 431
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;

    invoke-virtual {p0, p1}, LoM;->a(Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;)V

    return-void
.end method
