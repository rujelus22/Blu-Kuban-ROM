.class LoR;
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
        "Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;",
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
    .line 466
    iput-object p1, p0, LoR;->a:LoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 469
    invoke-static {p1}, Lpc;->a(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)V

    .line 471
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 466
    check-cast p1, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-virtual {p0, p1}, LoR;->a(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)V

    return-void
.end method
