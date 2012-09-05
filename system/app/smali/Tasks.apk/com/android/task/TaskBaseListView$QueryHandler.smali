.class public Lcom/android/task/TaskBaseListView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TaskBaseListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskBaseListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskBaseListView;


# direct methods
.method public constructor <init>(Lcom/android/task/TaskBaseListView;)V
    .registers 3
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/task/TaskBaseListView$QueryHandler;->this$0:Lcom/android/task/TaskBaseListView;

    .line 222
    iget-object v0, p1, Lcom/android/task/TaskBaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 223
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 228
    const-string v0, "TaskBaseListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete - token= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/task/TaskBaseListView$QueryHandler;->this$0:Lcom/android/task/TaskBaseListView;

    if-eqz v0, :cond_21

    .line 231
    iget-object v0, p0, Lcom/android/task/TaskBaseListView$QueryHandler;->this$0:Lcom/android/task/TaskBaseListView;

    invoke-virtual {v0, p1, p3}, Lcom/android/task/TaskBaseListView;->update(ILandroid/database/Cursor;)V

    .line 234
    :cond_21
    return-void
.end method
