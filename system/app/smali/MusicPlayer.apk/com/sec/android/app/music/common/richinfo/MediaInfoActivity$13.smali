.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$13;
.super Ljava/lang/Object;
.source "MediaInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$13;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$13;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$900(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$13;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 490
    return-void
.end method
