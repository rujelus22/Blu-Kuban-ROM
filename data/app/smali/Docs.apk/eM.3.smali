.class public LeM;
.super LcI;
.source "DocumentOpenerActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

.field final synthetic a:LpQ;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LpQ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, LeM;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iput-object p2, p0, LeM;->a:LpQ;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 678
    iget-object v0, p0, LeM;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 679
    iget-object v0, p0, LeM;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a()Lx;

    move-result-object v0

    iget-object v1, p0, LeM;->a:LpQ;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a(Lx;LpQ;)V

    .line 685
    :goto_13
    return-void

    .line 683
    :cond_14
    iget-object v0, p0, LeM;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->finish()V

    goto :goto_13
.end method
