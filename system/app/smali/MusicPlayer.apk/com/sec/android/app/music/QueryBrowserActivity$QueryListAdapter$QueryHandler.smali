.class Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "res"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    .line 586
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 587
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;

    #getter for: Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;
    invoke-static {v0}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->access$300(Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;)Lcom/sec/android/app/music/QueryBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 592
    return-void
.end method
