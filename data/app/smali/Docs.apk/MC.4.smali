.class public LMC;
.super Ljava/lang/Object;
.source "BaseSlidePickerFragment.java"

# interfaces
.implements LNx;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, LMC;->a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, LMC;->a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMD;

    if-eqz v0, :cond_d

    .line 111
    iget-object v0, p0, LMC;->a:Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->a:LMD;

    invoke-interface {v0, p1}, LMD;->b_(I)V

    .line 113
    :cond_d
    return-void
.end method
