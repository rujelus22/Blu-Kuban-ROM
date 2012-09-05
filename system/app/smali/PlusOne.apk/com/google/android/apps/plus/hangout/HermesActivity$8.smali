.class Lcom/google/android/apps/plus/hangout/HermesActivity$8;
.super Ljava/lang/Object;
.source "HermesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$8;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$8;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->upgradeToHangout()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3200(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    .line 880
    return-void
.end method
