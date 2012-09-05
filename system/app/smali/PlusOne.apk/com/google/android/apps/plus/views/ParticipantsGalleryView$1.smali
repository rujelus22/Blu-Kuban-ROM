.class Lcom/google/android/apps/plus/views/ParticipantsGalleryView$1;
.super Ljava/lang/Object;
.source "ParticipantsGalleryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/ParticipantsGalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$1;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$1;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$1;->this$0:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    #getter for: Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->access$000(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;->onShowParticipantList()V

    .line 245
    :cond_11
    return-void
.end method
