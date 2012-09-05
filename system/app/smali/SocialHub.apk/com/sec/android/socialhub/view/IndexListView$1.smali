.class Lcom/sec/android/socialhub/view/IndexListView$1;
.super Ljava/lang/Object;
.source "IndexListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/IndexListView;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/IndexListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/IndexListView;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/socialhub/view/IndexListView$1;->this$0:Lcom/sec/android/socialhub/view/IndexListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .registers 6
    .parameter "index"

    .prologue
    .line 129
    const-string v0, "QueryHandleListView"

    const-string v1, "onIndexSelected()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/socialhub/view/IndexListView$1;->this$0:Lcom/sec/android/socialhub/view/IndexListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/IndexListView;->onIndexSelected(I)V

    .line 131
    return-void
.end method
