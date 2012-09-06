.class Lfq;
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
        "Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfe;


# direct methods
.method constructor <init>(Lfe;)V
    .registers 2
    .parameter

    .prologue
    .line 1608
    iput-object p1, p0, Lfq;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1611
    invoke-static {p1}, Lgr;->a(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)V

    .line 1613
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1608
    check-cast p1, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-virtual {p0, p1}, Lfq;->a(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)V

    return-void
.end method
