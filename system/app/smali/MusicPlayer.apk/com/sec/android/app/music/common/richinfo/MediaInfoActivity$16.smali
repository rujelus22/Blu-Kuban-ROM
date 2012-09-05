.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$16;
.super Ljava/lang/Object;
.source "MediaInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 626
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$16;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$16;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->parsingRichInfoData()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$800(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    .line 631
    return-void
.end method
