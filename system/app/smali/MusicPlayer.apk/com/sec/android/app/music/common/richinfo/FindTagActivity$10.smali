.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$10;
.super Ljava/lang/Object;
.source "FindTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->makeFindTagResultItemView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$10;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 739
    .local v1, url:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$10;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    .line 740
    .local v0, saver:Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 741
    return-void
.end method
