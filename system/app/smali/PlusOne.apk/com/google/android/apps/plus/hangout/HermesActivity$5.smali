.class Lcom/google/android/apps/plus/hangout/HermesActivity$5;
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
    .line 727
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$5;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$5;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$5;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 731
    return-void

    .line 730
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method
