.class Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$12;
.super Ljava/lang/Object;
.source "MXContentItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIconOverlay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$12;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    iput p2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$12;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$12;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->access$300(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$12;->val$id:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    return-void
.end method
