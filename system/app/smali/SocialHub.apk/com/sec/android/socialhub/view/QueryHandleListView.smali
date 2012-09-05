.class public Lcom/sec/android/socialhub/view/QueryHandleListView;
.super Landroid/widget/ListView;
.source "QueryHandleListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;
    }
.end annotation


# instance fields
.field protected mQueryHandler:Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/QueryHandleListView;->mQueryHandler:Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;

    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/QueryHandleListView;->initialize(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/QueryHandleListView;->mQueryHandler:Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;

    .line 28
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/QueryHandleListView;->initialize(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/QueryHandleListView;->mQueryHandler:Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;

    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/QueryHandleListView;->initialize(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 39
    new-instance v0, Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;-><init>(Lcom/sec/android/socialhub/view/QueryHandleListView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/QueryHandleListView;->mQueryHandler:Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;

    .line 40
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 62
    const-string v0, "QueryHandleListView"

    const-string v1, "onQueryComplete()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/socialhub/view/QueryHandleListView;->mQueryHandler:Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;

    if-eqz v0, :cond_42

    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/view/QueryHandleListView;->mQueryHandler:Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/view/QueryHandleListView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "QueryHandleListView"

    const-string v1, "startQuery()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , selection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , order_by = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_42
    return-void
.end method
