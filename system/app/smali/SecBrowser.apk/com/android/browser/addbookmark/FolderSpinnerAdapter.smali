.class public Lcom/android/browser/addbookmark/FolderSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderSpinnerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIncludeHomeScreen:Z

.field private mIncludesRecentFolder:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOtherFolderDisplayText:Ljava/lang/String;

.field private mRecentFolderId:J

.field private mRecentFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "includeHomeScreen"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-boolean p2, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludeHomeScreen:Z

    .line 51
    iput-object p1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    return-void
.end method

.method private bindView(ILandroid/view/View;Z)V
    .registers 10
    .parameter "position"
    .parameter "view"
    .parameter "isDropDown"

    .prologue
    const/4 v5, 0x0

    .line 66
    iget-boolean v4, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludeHomeScreen:Z

    if-nez v4, :cond_7

    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 69
    :cond_7
    packed-switch p1, :pswitch_data_52

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, labelResource:I
    const/4 v1, 0x0

    .local v1, drawableResource:I
    :goto_c
    move-object v3, p2

    .line 90
    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, textView:Landroid/widget/TextView;
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3f

    .line 92
    iget-object v4, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mRecentFolderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_17
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    iget-object v4, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void

    .line 71
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableResource:I
    .end local v2           #labelResource:I
    .end local v3           #textView:Landroid/widget/TextView;
    :pswitch_2a
    const v2, 0x7f0c0034

    .line 72
    .restart local v2       #labelResource:I
    const v1, 0x7f02005a

    .line 73
    .restart local v1       #drawableResource:I
    goto :goto_c

    .line 75
    .end local v1           #drawableResource:I
    .end local v2           #labelResource:I
    :pswitch_31
    const v2, 0x7f0c0033

    .line 76
    .restart local v2       #labelResource:I
    const v1, 0x7f020046

    .line 77
    .restart local v1       #drawableResource:I
    goto :goto_c

    .line 81
    .end local v1           #drawableResource:I
    .end local v2           #labelResource:I
    :pswitch_38
    const v2, 0x7f0c0035

    .line 82
    .restart local v2       #labelResource:I
    const v1, 0x7f020051

    .line 83
    .restart local v1       #drawableResource:I
    goto :goto_c

    .line 93
    .restart local v3       #textView:Landroid/widget/TextView;
    :cond_3f
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4e

    if-nez p3, :cond_4e

    iget-object v4, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mOtherFolderDisplayText:Ljava/lang/String;

    if-eqz v4, :cond_4e

    .line 95
    iget-object v4, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mOtherFolderDisplayText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 97
    :cond_4e
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17

    .line 69
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_31
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public addRecentFolder(JLjava/lang/String;)V
    .registers 5
    .parameter "folderId"
    .parameter "folderName"

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludesRecentFolder:Z

    .line 57
    iput-wide p1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mRecentFolderId:J

    .line 58
    iput-object p3, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mRecentFolderName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public clearRecentFolder()V
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludesRecentFolder:Z

    if-eqz v0, :cond_a

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludesRecentFolder:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->notifyDataSetChanged()V

    .line 162
    :cond_a
    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x2

    .line 128
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludeHomeScreen:Z

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_7
    iget-boolean v1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludesRecentFolder:Z

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_d
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    if-nez p2, :cond_c

    .line 108
    iget-object v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->bindView(ILandroid/view/View;Z)V

    .line 112
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 6
    .parameter "position"

    .prologue
    .line 140
    int-to-long v0, p1

    .line 141
    .local v0, id:J
    iget-boolean v2, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mIncludeHomeScreen:Z

    if-nez v2, :cond_8

    .line 142
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 144
    :cond_8
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 117
    if-nez p2, :cond_c

    .line 118
    iget-object v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090008

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 121
    :cond_c
    invoke-direct {p0, p1, p2, v2}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->bindView(ILandroid/view/View;Z)V

    .line 122
    return-object p2
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public recentFolderId()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mRecentFolderId:J

    return-wide v0
.end method

.method public setOtherFolderDisplayText(Ljava/lang/String;)V
    .registers 2
    .parameter "parentTitle"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->mOtherFolderDisplayText:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/android/browser/addbookmark/FolderSpinnerAdapter;->notifyDataSetChanged()V

    .line 155
    return-void
.end method
