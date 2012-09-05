.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$8;
.super Ljava/lang/Object;
.source "MusicBarViewGroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->dismissVolumeDialog(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$10(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;Z)V

    .line 428
    return-void
.end method
