.class public Lpb;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 304
    invoke-static {p0}, Lga;->a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V

    .line 306
    invoke-static {}, Lpf;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LoC;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->b:LanD;

    .line 312
    return-void
.end method
