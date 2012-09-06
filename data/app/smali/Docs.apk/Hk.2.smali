.class LHk;
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
        "Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;",
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
    .line 428
    iput-object p1, p0, LHk;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    invoke-static {p1}, LHt;->a(Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;)V

    .line 433
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 428
    check-cast p1, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;

    invoke-virtual {p0, p1}, LHk;->a(Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;)V

    return-void
.end method
