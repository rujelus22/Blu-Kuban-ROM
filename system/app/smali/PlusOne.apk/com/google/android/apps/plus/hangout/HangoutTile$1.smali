.class Lcom/google/android/apps/plus/hangout/HangoutTile$1;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 485
    return-void

    .line 480
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method
