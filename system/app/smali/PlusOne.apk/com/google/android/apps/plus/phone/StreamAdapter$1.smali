.class Lcom/google/android/apps/plus/phone/StreamAdapter$1;
.super Ljava/lang/Object;
.source "StreamAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/StreamAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/StreamAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mFooterView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$000(Lcom/google/android/apps/plus/phone/StreamAdapter;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_42

    .line 157
    const-string v0, "StreamAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 158
    const-string v0, "StreamAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMovedToScrapHeap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    move-object v0, p1

    .line 161
    check-cast v0, Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->clear()V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$100(Lcom/google/android/apps/plus/phone/StreamAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    :cond_42
    return-void
.end method
