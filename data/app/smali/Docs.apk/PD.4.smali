.class LPD;
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
        "Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;",
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
    .line 555
    iput-object p1, p0, LPD;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 558
    invoke-static {p1}, LPQ;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;)V

    .line 560
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 555
    check-cast p1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;

    invoke-virtual {p0, p1}, LPD;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;)V

    return-void
.end method
