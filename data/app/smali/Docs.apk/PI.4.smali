.class LPI;
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
        "Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;",
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
    .line 595
    iput-object p1, p0, LPI;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 598
    invoke-static {p1}, LPR;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;)V

    .line 600
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 595
    check-cast p1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;

    invoke-virtual {p0, p1}, LPI;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;)V

    return-void
.end method
