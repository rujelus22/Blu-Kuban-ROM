.class public abstract Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "BaseSlidePickerFragment.java"


# instance fields
.field private a:LMA;

.field public a:LMD;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LNn;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 25
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMA;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 75
    new-instance v0, LMB;

    invoke-direct {v0, p0}, LMB;-><init>(Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMA;

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LNn;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMA;

    invoke-interface {v0, v1}, LNn;->a(LNo;)V

    .line 98
    return-void

    .line 74
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private p()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMA;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LNn;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMA;

    invoke-interface {v0, v1}, LNn;->b(LNo;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMA;

    .line 104
    return-void

    .line 101
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private q()V
    .registers 5

    .prologue
    .line 107
    new-instance v0, LMC;

    invoke-direct {v0, p0}, LMC;-><init>(Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;)V

    .line 115
    new-instance v1, LNu;

    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LNn;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, LNu;-><init>(LNn;Landroid/view/LayoutInflater;LNx;)V

    iput-object v1, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:Landroid/widget/BaseAdapter;

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a(Landroid/widget/ListAdapter;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/widget/ListAdapter;)V
.end method

.method public c()V
    .registers 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->c()V

    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->p()V

    .line 58
    return-void
.end method

.method public d_()V
    .registers 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->d_()V

    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->q()V

    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a()V

    .line 51
    return-void
.end method
