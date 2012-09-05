.class Lcom/sec/android/app/music/common/richinfo/RichInfoView$2;
.super Ljava/lang/Object;
.source "RichInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeOneLineTextItemView(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V
    .registers 2
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$2;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 417
    const-string v1, "RichInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View\'s tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " View id ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ) Shop button was touched..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$2;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    #getter for: Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->access$100(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/sec/android/app/music/common/richinfo/RichInfoView;->startMusicHub(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    return-void
.end method
