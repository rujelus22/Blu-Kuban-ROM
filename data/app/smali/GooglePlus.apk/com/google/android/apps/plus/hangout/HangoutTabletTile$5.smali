.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$5;
.super Ljava/lang/Object;
.source "HangoutTabletTile.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->registerInteractionHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 2
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$5;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .registers 3
    .parameter "isVisible"

    .prologue
    .line 725
    if-eqz p1, :cond_c

    .line 726
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$5;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBarDismissalTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 730
    :goto_b
    return-void

    .line 728
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$5;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBarDismissalTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_b
.end method
