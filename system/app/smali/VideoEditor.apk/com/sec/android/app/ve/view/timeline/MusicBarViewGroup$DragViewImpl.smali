.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;
.super Ljava/lang/Object;
.source "MusicBarViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->view:Landroid/view/View;

    return-object v0
.end method

.method public viewDelete()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->musicDelete()V

    .line 276
    return-void
.end method

.method public viewDragging(FFLandroid/graphics/Paint;)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 290
    return-void
.end method

.method public viewDropped(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 279
    const-string v0, "Music bar text dropped"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$DragViewImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$5(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 286
    return-void
.end method
