.class Lcom/sec/android/app/music/QueryBrowserActivity$2;
.super Landroid/os/Handler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/QueryBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sec/android/app/music/QueryBrowserActivity$2;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$2;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity;

    #getter for: Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->access$100(Lcom/sec/android/app/music/QueryBrowserActivity;)Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$2;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity;

    iget-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity$2;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity;

    #getter for: Lcom/sec/android/app/music/QueryBrowserActivity;->mAdapter:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/music/QueryBrowserActivity;->access$100(Lcom/sec/android/app/music/QueryBrowserActivity;)Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/sec/android/app/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/QueryBrowserActivity;->access$200(Lcom/sec/android/app/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 339
    :cond_18
    return-void
.end method
