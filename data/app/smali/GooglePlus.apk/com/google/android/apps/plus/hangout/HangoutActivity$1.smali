.class Lcom/google/android/apps/plus/hangout/HangoutActivity$1;
.super Ljava/lang/Object;
.source "HangoutActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutActivity;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 119
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 123
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 115
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->finish()V

    .line 111
    return-void
.end method
