.class public Lcom/google/android/apps/plus/phone/CommentsAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/CommentsAdapter$CommentsQuery;
    }
.end annotation


# instance fields
.field private final mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private final mPlusOnePeopleClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/CommentRowView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;)V
    .registers 8
    .parameter "context"
    .parameter "listView"
    .parameter "account"
    .parameter "cursor"
    .parameter "clickListener"
    .parameter "plusOnePeopleClickHandler"

    .prologue
    .line 75
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mViews:Ljava/util/List;

    .line 77
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 78
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mPlusOnePeopleClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;

    .line 80
    new-instance v0, Lcom/google/android/apps/plus/phone/CommentsAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/CommentsAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/CommentsAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/CommentsAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mViews:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v6, 0x1

    .line 168
    move-object v2, p1

    check-cast v2, Lcom/google/android/apps/plus/views/CommentRowView;

    .line 170
    .local v2, commentRowView:Lcom/google/android/apps/plus/views/CommentRowView;
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mViews:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 171
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mViews:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_13
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CommentRowView;->clear()V

    .line 176
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-virtual {v2, v7}, Lcom/google/android/apps/plus/views/CommentRowView;->setClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V

    .line 177
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mPlusOnePeopleClickHandler:Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;

    invoke-virtual {v2, v7}, Lcom/google/android/apps/plus/views/CommentRowView;->setPlusOnePeopleClickHandler(Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;)V

    .line 178
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/apps/plus/views/CommentRowView;->setPosition(I)V

    .line 180
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 181
    .local v0, authorId:J
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v1, v7}, Lcom/google/android/apps/plus/views/CommentRowView;->setAuthor(JLjava/lang/String;)V

    .line 183
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {p2, v7, v8}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/apps/plus/views/CommentRowView;->setTime(Ljava/lang/String;)V

    .line 186
    const/4 v7, 0x4

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v6, :cond_65

    :goto_4e
    invoke-virtual {v2, v7, v6}, Lcom/google/android/apps/plus/views/CommentRowView;->setContent(Ljava/lang/String;Z)V

    .line 189
    invoke-interface {p3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_67

    const/4 v4, 0x0

    .line 191
    .local v4, plusOneBlob:[B
    :goto_58
    if-eqz v4, :cond_61

    .line 193
    :try_start_5a
    invoke-static {v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v5

    .line 194
    .local v5, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/CommentRowView;->setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    :try_end_61
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_61} :catch_6c

    .line 201
    .end local v5           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_61
    :goto_61
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CommentRowView;->requestLayout()V

    .line 202
    return-void

    .line 186
    .end local v4           #plusOneBlob:[B
    :cond_65
    const/4 v6, 0x0

    goto :goto_4e

    .line 189
    :cond_67
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    goto :goto_58

    .line 195
    .restart local v4       #plusOneBlob:[B
    :catch_6c
    move-exception v3

    .line 196
    .local v3, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v6, "CommentsAdapter"

    invoke-static {v6, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 197
    const-string v6, "CommentsAdapter"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61
.end method

.method public getAuthorId()J
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentHtml()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x7

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 132
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v2, v3

    .line 135
    .local v2, plusOneBlob:[B
    :goto_d
    if-eqz v2, :cond_13

    .line 137
    :try_start_f
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_12
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_12} :catch_19

    move-result-object v3

    .line 144
    :cond_13
    :goto_13
    return-object v3

    .line 132
    .end local v2           #plusOneBlob:[B
    :cond_14
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    goto :goto_d

    .line 138
    .restart local v2       #plusOneBlob:[B
    :catch_19
    move-exception v1

    .line 139
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v4, "CommentsAdapter"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 140
    const-string v4, "CommentsAdapter"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 209
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 211
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    return-void
.end method
