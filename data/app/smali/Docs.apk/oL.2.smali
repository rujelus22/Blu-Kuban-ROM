.class LoL;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;",
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
    .line 418
    iput-object p1, p0, LoL;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 421
    invoke-static {p1}, LoY;->a(Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;)V

    .line 423
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 418
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;

    invoke-virtual {p0, p1}, LoL;->a(Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;)V

    return-void
.end method
