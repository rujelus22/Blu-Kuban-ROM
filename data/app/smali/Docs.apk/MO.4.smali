.class LMO;
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
        "Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;",
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
    .line 599
    iput-object p1, p0, LMO;->a:LME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 602
    invoke-static {p1}, LMX;->a(Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;)V

    .line 604
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 599
    check-cast p1, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

    invoke-virtual {p0, p1}, LMO;->a(Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;)V

    return-void
.end method
