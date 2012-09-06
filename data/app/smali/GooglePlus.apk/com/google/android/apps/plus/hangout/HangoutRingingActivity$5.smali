.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$5;
.super Ljava/lang/Object;
.source "HangoutRingingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$5;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$5;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$5;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 672
    return-void

    .line 667
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method
