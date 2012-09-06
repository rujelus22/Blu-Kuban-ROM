.class LoS;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;",
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
    .line 474
    iput-object p1, p0, LoS;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    invoke-static {p1}, LoX;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)V

    .line 479
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 474
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-virtual {p0, p1}, LoS;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)V

    return-void
.end method
