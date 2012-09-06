.class LnE;
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
        "Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LnD;


# direct methods
.method constructor <init>(LnD;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, LnE;->a:LnD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    invoke-static {p1}, LnJ;->a(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;)V

    .line 65
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    check-cast p1, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    invoke-virtual {p0, p1}, LnE;->a(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;)V

    return-void
.end method
