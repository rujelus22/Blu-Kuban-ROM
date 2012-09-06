.class LoO;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;",
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
    .line 442
    iput-object p1, p0, LoO;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 445
    invoke-static {p1}, LoW;->a(Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;)V

    .line 447
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;

    invoke-virtual {p0, p1}, LoO;->a(Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;)V

    return-void
.end method
