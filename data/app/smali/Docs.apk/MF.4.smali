.class LMF;
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
        "Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LME;


# direct methods
.method constructor <init>(LME;)V
    .registers 2
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, LMF;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 594
    invoke-static {p1}, LMW;->a(Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;)V

    .line 596
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 591
    check-cast p1, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    invoke-virtual {p0, p1}, LMF;->a(Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;)V

    return-void
.end method
