.class Lcom/google/android/music/AudioPreview$1;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AudioPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/google/android/music/AudioPreview;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/music/AudioPreview$1;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 14
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 126
    if-eqz p3, :cond_6c

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 128
    const-string v7, "title"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 129
    .local v6, titleIdx:I
    const-string v7, "artist"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, artistIdx:I
    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 131
    .local v3, idIdx:I
    const-string v7, "_display_name"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 133
    .local v2, displaynameIdx:I
    if-ltz v3, :cond_2b

    .line 134
    iget-object v7, p0, Lcom/google/android/music/AudioPreview$1;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    #setter for: Lcom/google/android/music/AudioPreview;->mMediaId:J
    invoke-static {v7, v8, v9}, Lcom/google/android/music/AudioPreview;->access$102(Lcom/google/android/music/AudioPreview;J)J

    .line 137
    :cond_2b
    if-ltz v6, :cond_54

    .line 138
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/music/AudioPreview$1;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/google/android/music/AudioPreview;->access$200(Lcom/google/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    if-ltz v1, :cond_49

    .line 141
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, artist:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/music/AudioPreview$1;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/google/android/music/AudioPreview;->access$300(Lcom/google/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .end local v0           #artist:Ljava/lang/String;
    .end local v1           #artistIdx:I
    .end local v2           #displaynameIdx:I
    .end local v3           #idIdx:I
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #titleIdx:I
    :cond_49
    :goto_49
    if-eqz p3, :cond_4e

    .line 156
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_4e
    iget-object v7, p0, Lcom/google/android/music/AudioPreview$1;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-virtual {v7}, Lcom/google/android/music/AudioPreview;->setNames()V

    .line 159
    return-void

    .line 144
    .restart local v1       #artistIdx:I
    .restart local v2       #displaynameIdx:I
    .restart local v3       #idIdx:I
    .restart local v6       #titleIdx:I
    :cond_54
    if-ltz v2, :cond_64

    .line 145
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/music/AudioPreview$1;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/google/android/music/AudioPreview;->access$200(Lcom/google/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49

    .line 149
    .end local v4           #name:Ljava/lang/String;
    :cond_64
    const-string v7, "AudioPreview"

    const-string v8, "Cursor had no names for us"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 152
    .end local v1           #artistIdx:I
    .end local v2           #displaynameIdx:I
    .end local v3           #idIdx:I
    .end local v6           #titleIdx:I
    :cond_6c
    const-string v7, "AudioPreview"

    const-string v8, "empty cursor"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method
