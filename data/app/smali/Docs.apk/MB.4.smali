.class public LMB;
.super LMA;
.source "BaseSlidePickerFragment.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, LMB;->a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    invoke-direct {p0}, LMA;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(I)V
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, LMB;->a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, LMB;->a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, LMB;->a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method protected h()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, LMB;->a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method
