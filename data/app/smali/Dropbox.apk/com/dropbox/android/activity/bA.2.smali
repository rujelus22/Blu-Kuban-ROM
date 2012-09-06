.class final Lcom/dropbox/android/activity/bA;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/TourPageFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/TourPageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/dropbox/android/activity/bA;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/android/activity/bA;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/TourPageFragment;->a(Lcom/dropbox/android/activity/TourPageFragment;)Lcom/dropbox/android/activity/bT;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 114
    iget-object v0, p0, Lcom/dropbox/android/activity/bA;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/TourPageFragment;->a(Lcom/dropbox/android/activity/TourPageFragment;)Lcom/dropbox/android/activity/bT;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/bA;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/TourPageFragment;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARG_INDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/bT;->b(I)V

    .line 116
    :cond_1d
    return-void
.end method
