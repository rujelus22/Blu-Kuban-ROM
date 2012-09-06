.class Lcom/google/android/music/widgets/QuickContactBadgeComp$1;
.super Ljava/lang/Object;
.source "QuickContactBadgeComp.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPhoto:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/android/music/widgets/QuickContactBadgeComp;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/QuickContactBadgeComp;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->this$0:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    iput-object p2, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->this$0:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    iget-object v1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->val$url:Ljava/lang/String;

    const/4 v2, 0x1

    #calls: Lcom/google/android/music/widgets/QuickContactBadgeComp;->getPhoto(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->access$000(Lcom/google/android/music/widgets/QuickContactBadgeComp;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->mPhoto:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method

.method public taskCompleted()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->this$0:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    #getter for: Lcom/google/android/music/widgets/QuickContactBadgeComp;->mCurrentUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->access$100(Lcom/google/android/music/widgets/QuickContactBadgeComp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 74
    :goto_e
    return-void

    .line 69
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->mPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_19

    .line 70
    iget-object v0, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->this$0:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    invoke-virtual {v0}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageToDefault()V

    goto :goto_e

    .line 73
    :cond_19
    iget-object v0, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->this$0:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    iget-object v1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_e
.end method
