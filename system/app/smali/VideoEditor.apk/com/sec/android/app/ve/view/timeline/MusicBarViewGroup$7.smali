.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$7;
.super Ljava/lang/Object;
.source "MusicBarViewGroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->createVolumeBGMDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dismissVolumeDialog(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$10(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;Z)V

    .line 417
    return-void
.end method
