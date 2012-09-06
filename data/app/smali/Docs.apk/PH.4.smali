.class LPH;
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
        "Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LPr;


# direct methods
.method constructor <init>(LPr;)V
    .registers 2
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, LPH;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 590
    invoke-static {p1}, LPS;->a(Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;)V

    .line 592
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 587
    check-cast p1, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;

    invoke-virtual {p0, p1}, LPH;->a(Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;)V

    return-void
.end method
