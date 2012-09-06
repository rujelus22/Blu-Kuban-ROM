.class LPK;
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
        "Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;",
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
    .line 611
    iput-object p1, p0, LPK;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 614
    invoke-static {p1}, LPO;->a(Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;)V

    .line 616
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 611
    check-cast p1, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;

    invoke-virtual {p0, p1}, LPK;->a(Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;)V

    return-void
.end method
