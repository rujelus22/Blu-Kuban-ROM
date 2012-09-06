.class Lcom/android/athome/picker/media/MediaRouteButtonFallback$1;
.super Ljava/lang/Object;
.source "MediaRouteButtonFallback.java"

# interfaces
.implements Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/media/MediaRouteButtonFallback;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/MediaRouteButtonFallback;)V
    .registers 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$1;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetached(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V
    .registers 4
    .parameter "detachedFragment"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouteButtonFallback$1;->this$0:Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    const/4 v1, 0x0

    #setter for: Lcom/android/athome/picker/media/MediaRouteButtonFallback;->mDialogFragment:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;
    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->access$102(Lcom/android/athome/picker/media/MediaRouteButtonFallback;Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;

    .line 344
    return-void
.end method
