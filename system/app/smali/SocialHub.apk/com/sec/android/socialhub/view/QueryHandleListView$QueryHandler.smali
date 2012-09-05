.class public Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryHandleListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/QueryHandleListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/QueryHandleListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/view/QueryHandleListView;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "resolver"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;->this$0:Lcom/sec/android/socialhub/view/QueryHandleListView;

    .line 74
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;->this$0:Lcom/sec/android/socialhub/view/QueryHandleListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/socialhub/view/QueryHandleListView;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 83
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 90
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
