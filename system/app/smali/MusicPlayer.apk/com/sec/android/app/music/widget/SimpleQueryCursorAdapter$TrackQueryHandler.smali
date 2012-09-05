.class public Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SimpleQueryCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "res"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->this$0:Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;

    .line 102
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 103
    return-void
.end method


# virtual methods
.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .registers 18
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "async"

    .prologue
    .line 112
    invoke-static {}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doQuery() async : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz p6, :cond_4b

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v5, "50"

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 120
    .local v4, limituri:Landroid/net/Uri;
    new-instance v3, Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {v3}, Lcom/sec/android/app/music/MusicUtils$QueryArgs;-><init>()V

    .line 121
    .local v3, args:Lcom/sec/android/app/music/MusicUtils$QueryArgs;
    iput-object p1, v3, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 122
    iput-object p2, v3, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 123
    iput-object p3, v3, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 124
    iput-object p4, v3, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 125
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 127
    const/4 v2, 0x0

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    .line 131
    .end local v3           #args:Lcom/sec/android/app/music/MusicUtils$QueryArgs;
    .end local v4           #limituri:Landroid/net/Uri;
    :goto_4a
    return-object v1

    :cond_4b
    iget-object v1, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->this$0:Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;

    iget-object v5, v1, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContext:Landroid/content/Context;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/sec/android/app/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_4a
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 13
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 138
    if-eqz p3, :cond_53

    .line 139
    invoke-static {}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete() query complete cursor count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_20
    iget-object v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->this$0:Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;

    #getter for: Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->access$100(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/music/widget/OnCursorChangeListener;

    if-eqz v0, :cond_2f

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->this$0:Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->onCursorChanged(Landroid/database/Cursor;)V

    .line 158
    :cond_2f
    if-nez p1, :cond_52

    if-eqz p2, :cond_52

    if-eqz p3, :cond_52

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->access$200()I

    move-result v1

    if-lt v0, v1, :cond_52

    move-object v8, p2

    .line 160
    check-cast v8, Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    .line 161
    .local v8, args:Lcom/sec/android/app/music/MusicUtils$QueryArgs;
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, v8, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, v8, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v8, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v8, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v8           #args:Lcom/sec/android/app/music/MusicUtils$QueryArgs;
    :cond_52
    return-void

    .line 142
    :cond_53
    invoke-static {}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onQueryComplete() query complete cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method
