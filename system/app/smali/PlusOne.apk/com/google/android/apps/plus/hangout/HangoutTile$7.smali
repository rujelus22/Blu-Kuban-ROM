.class Lcom/google/android/apps/plus/hangout/HangoutTile$7;
.super Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;
.source "HangoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;->setAndShowParticipantsInGreenRoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 833
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;-><init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V

    return-void
.end method


# virtual methods
.method public onShowParticipantList()V
    .registers 3

    .prologue
    .line 836
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->getParticipantListActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 838
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$7;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 839
    return-void
.end method
