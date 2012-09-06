.class public Lcom/google/android/apps/docs/app/BaseDialogActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "BaseDialogActivity.java"

# interfaces
.implements LgT;


# instance fields
.field private final a:I

.field private a:Loi;

.field public a:Loj;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;-><init>(I)V

    .line 59
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 50
    iput p1, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:I

    .line 51
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You must override this method to handle unmanaged dialog id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Lof;)LpB;
    .registers 4
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    const-string v1, "null dialogRegistry. Did you call this from onCreate() *after* calling super.onCreate()?"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(Lof;)LpB;

    move-result-object v0

    return-object v0

    .line 132
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected a(ILandroid/app/Dialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loj;

    iget v1, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:I

    invoke-interface {v0, p0, v1}, Loj;->a(Landroid/app/Activity;I)Loi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    .line 65
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(I)Landroid/app/Dialog;

    move-result-object v0

    .line 93
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_13
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    .line 70
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 71
    return-void
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    invoke-interface {v0, p1, p2}, Loi;->a(ILandroid/app/Dialog;)V

    .line 114
    :goto_12
    return-void

    .line 112
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a(ILandroid/app/Dialog;)V

    goto :goto_12
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 76
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->b(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(Landroid/os/Bundle;)V

    .line 84
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 139
    const-string v0, "DialogActivity[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loi;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
