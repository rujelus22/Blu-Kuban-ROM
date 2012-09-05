.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$19;
.super Ljava/lang/Object;
.source "MediaInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;
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
    .line 819
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$19;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 822
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$19;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->showSearchPopup(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$1100(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;I)V

    .line 823
    return-void
.end method
