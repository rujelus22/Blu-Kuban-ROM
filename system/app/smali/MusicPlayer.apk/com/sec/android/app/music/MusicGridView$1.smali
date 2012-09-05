.class Lcom/sec/android/app/music/MusicGridView$1;
.super Ljava/lang/Object;
.source "MusicGridView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicGridView;->createContextMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicGridView;

.field final synthetic val$menuIndex:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicGridView;Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/android/app/music/MusicGridView$1;->this$0:Lcom/sec/android/app/music/MusicGridView;

    iput-object p2, p0, Lcom/sec/android/app/music/MusicGridView$1;->val$menuIndex:Ljava/util/HashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 137
    invoke-static {}, Lcom/sec/android/app/music/MusicGridView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridView$1;->this$0:Lcom/sec/android/app/music/MusicGridView;

    #getter for: Lcom/sec/android/app/music/MusicGridView;->mTabId:I
    invoke-static {v2}, Lcom/sec/android/app/music/MusicGridView;->access$100(Lcom/sec/android/app/music/MusicGridView;)I

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

    iget-object v2, p0, Lcom/sec/android/app/music/MusicGridView$1;->val$menuIndex:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/music/MusicGridView$1;->this$0:Lcom/sec/android/app/music/MusicGridView;

    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridView$1;->val$menuIndex:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/sec/android/app/music/MusicGridView;->contextItemSelected(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/music/MusicGridView;->access$200(Lcom/sec/android/app/music/MusicGridView;I)V

    .line 141
    return-void
.end method
