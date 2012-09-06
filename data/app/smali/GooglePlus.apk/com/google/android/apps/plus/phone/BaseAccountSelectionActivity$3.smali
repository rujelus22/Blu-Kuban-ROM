.class Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$3;
.super Ljava/lang/Object;
.source "BaseAccountSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$3;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$3;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->finish()V

    .line 415
    return-void
.end method
