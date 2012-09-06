.class public LPO;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 525
    invoke-static {p0}, LPS;->a(Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;)V

    .line 527
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LPr;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->b:LanD;

    .line 533
    return-void
.end method
