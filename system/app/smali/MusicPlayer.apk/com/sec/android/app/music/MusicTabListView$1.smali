.class Lcom/sec/android/app/music/MusicTabListView$1;
.super Ljava/lang/Object;
.source "MusicTabListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicTabListView;->createContextMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicTabListView;

.field final synthetic val$id:J

.field final synthetic val$keyWord:Ljava/lang/String;

.field final synthetic val$menuIndex:Ljava/util/HashMap;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicTabListView;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView$1;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    iput-object p2, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$menuIndex:Ljava/util/HashMap;

    iput-wide p3, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$id:J

    iput-object p5, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$keyWord:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 583
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView$1;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {v2}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dialog clicked. which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$menuIndex:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView$1;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$menuIndex:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$id:J

    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/music/MusicTabListView$1;->val$keyWord:Ljava/lang/String;

    #calls: Lcom/sec/android/app/music/MusicTabListView;->contextItemSelected(IJLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/music/MusicTabListView;->access$200(Lcom/sec/android/app/music/MusicTabListView;IJLjava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method
