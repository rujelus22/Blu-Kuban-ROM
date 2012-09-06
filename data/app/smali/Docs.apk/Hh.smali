.class LHh;
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
        "Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LHc;


# direct methods
.method constructor <init>(LHc;)V
    .registers 2
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, LHh;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    invoke-static {p1}, LHs;->a(Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;)V

    .line 409
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 404
    check-cast p1, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;

    invoke-virtual {p0, p1}, LHh;->a(Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;)V

    return-void
.end method
