.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$10;
.super Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;
.source "HangoutPhoneTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setAndShowParticipantsInGreenRoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 911
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;-><init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V

    return-void
.end method


# virtual methods
.method public onShowParticipantList()V
    .registers 4

    .prologue
    .line 914
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->greenRoomParticipants:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->getGreenRoomParticipantListActivityIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 916
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 917
    return-void
.end method
