.class LPJ;
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
        "Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;",
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
    .line 603
    iput-object p1, p0, LPJ;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 606
    invoke-static {p1}, LPM;->a(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)V

    .line 608
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 603
    check-cast p1, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;

    invoke-virtual {p0, p1}, LPJ;->a(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)V

    return-void
.end method
