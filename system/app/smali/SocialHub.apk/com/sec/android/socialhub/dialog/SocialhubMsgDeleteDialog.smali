.class public Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;
.super Landroid/app/AlertDialog$Builder;
.source "SocialhubMsgDeleteDialog.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private hasLockedMessage:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, "SocialhubMsgDeleteDialog"

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->TAG:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->hasLockedMessage(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->hasLockedMessage:Z

    .line 31
    invoke-virtual {p0}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->setLayout()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, threadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, "SocialhubMsgDeleteDialog"

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->hasLockedMessage(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->hasLockedMessage:Z

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->setLayout()V

    .line 40
    return-void
.end method


# virtual methods
.method public hasLocked()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->hasLockedMessage:Z

    return v0
.end method

.method public hasLockedMessage(Ljava/lang/String;)Z
    .registers 10
    .parameter "threadId"

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v7, 0x0

    .line 106
    .local v7, ret:Z
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 107
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 108
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 111
    :cond_14
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "locked"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_37

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_35

    .line 121
    const/4 v7, 0x1

    .line 125
    :goto_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    :goto_34
    return v7

    .line 123
    :cond_35
    const/4 v7, 0x0

    goto :goto_31

    .line 129
    :cond_37
    const/4 v7, 0x0

    goto :goto_34
.end method

.method public hasLockedMessage(Ljava/util/ArrayList;)Z
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, threadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 136
    const/4 v9, 0x0

    .line 137
    .local v9, ret:Z
    const/4 v6, 0x1

    .line 139
    .local v6, bFirst:Z
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v0, "thread_id in ( "

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 141
    .local v10, selection:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 143
    .local v11, threadId:Ljava/lang/String;
    if-eqz v6, :cond_21

    .line 144
    const/4 v6, 0x0

    .line 148
    :goto_1d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 146
    :cond_21
    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 150
    .end local v11           #threadId:Ljava/lang/String;
    :cond_27
    const-string v0, " )"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "locked"

    aput-object v5, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 159
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_54

    .line 161
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_52

    .line 162
    const/4 v9, 0x1

    .line 166
    :goto_4e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 173
    :goto_51
    return v9

    .line 164
    :cond_52
    const/4 v9, 0x0

    goto :goto_4e

    .line 170
    :cond_54
    const/4 v9, 0x0

    goto :goto_51
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->hasLockedMessage:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public setLayout()V
    .registers 11

    .prologue
    const/16 v9, 0x14

    const/4 v5, 0x5

    const/high16 v8, 0x4180

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, customLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    invoke-virtual {v2, v6, v5, v9, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, v9, v6, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 51
    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    iget-boolean v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->hasLockedMessage:Z

    if-eqz v4, :cond_8a

    .line 56
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, checkLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    new-instance v4, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 60
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, checkTextview:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 63
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 65
    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 66
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 75
    new-instance v4, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog$1;

    invoke-direct {v4, p0}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog$1;-><init>(Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .end local v0           #checkLayout:Landroid/widget/LinearLayout;
    .end local v1           #checkTextview:Landroid/widget/TextView;
    :cond_8a
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 85
    const v4, 0x7f08000a

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 86
    const v4, 0x1080027

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 87
    return-void
.end method

.method public show()Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
