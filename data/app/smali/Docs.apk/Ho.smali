.class LHo;
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
        "Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;",
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
    .line 460
    iput-object p1, p0, LHo;->a:LHc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 463
    invoke-static {p1}, LHx;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;)V

    .line 465
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 460
    check-cast p1, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;

    invoke-virtual {p0, p1}, LHo;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;)V

    return-void
.end method
