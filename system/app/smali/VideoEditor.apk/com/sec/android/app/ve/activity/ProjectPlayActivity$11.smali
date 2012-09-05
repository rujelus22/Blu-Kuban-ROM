.class Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;
.super Ljava/lang/Object;
.source "ProjectPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->bitmapCreated(Lcom/samsung/app/video/editor/external/Element;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1634
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mDrawingImg:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$41(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1635
    .local v1, ld:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v0, 0x0

    .line 1636
    .local v0, lPrev:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_13

    .line 1637
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1639
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;->val$bitmap:Landroid/graphics/Bitmap;

    if-ne v0, v3, :cond_27

    .line 1642
    const-string v3, "Inside bitmapCreated and bitmap is already set"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1650
    :goto_1c
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mDrawingImg:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$41(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1651
    return-void

    .line 1646
    :cond_27
    const-string v3, "Inside bitmapCreated and different bitmap compared to previous"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1647
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1648
    .local v2, mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;->this$0:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mDrawingImg:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->access$41(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c
.end method
