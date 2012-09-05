.class Lcom/google/android/apps/plus/hangout/HermesActivity$6;
.super Ljava/lang/Object;
.source "HermesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 735
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 738
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsSpeakerphoneOn:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3700(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_b
    #setter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsSpeakerphoneOn:Z
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3702(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)Z

    .line 739
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsSpeakerphoneOn:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3700(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSpeakerPhone(Z)V

    .line 740
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mToggleSpeakerphoneMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3800(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$6;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsSpeakerphoneOn:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3700(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z

    move-result v0

    if-eqz v0, :cond_34

    const v0, 0x7f020051

    :goto_2e
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 743
    return-void

    .line 738
    :cond_32
    const/4 v0, 0x0

    goto :goto_b

    .line 740
    :cond_34
    const v0, 0x7f020050

    goto :goto_2e
.end method
