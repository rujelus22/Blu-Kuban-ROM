.class Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;
.super Ljava/lang/Object;
.source "MXListPlayerItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setIconOverlay(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    if-eqz v0, :cond_47

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-boolean v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->isSetDrawable:Z

    if-eqz v0, :cond_21

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iput-boolean v2, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->isSetDrawable:Z

    .line 111
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mDrawableHeight:I
    invoke-static {v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->access$100(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->postInvalidate()V

    .line 118
    :goto_3c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setScroll(Z)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    #setter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->bSelected:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->access$002(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;Z)Z

    .line 120
    return-void

    .line 115
    :cond_47
    const-string v0, "[MyFiles]"

    const-string v1, "MXListPlayerItem : setStop : mProgressBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
