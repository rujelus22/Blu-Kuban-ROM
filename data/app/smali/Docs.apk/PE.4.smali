.class LPE;
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
        "Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;",
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
    .line 563
    iput-object p1, p0, LPE;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 566
    invoke-static {p1}, LPL;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    .line 568
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 563
    check-cast p1, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-virtual {p0, p1}, LPE;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    return-void
.end method
