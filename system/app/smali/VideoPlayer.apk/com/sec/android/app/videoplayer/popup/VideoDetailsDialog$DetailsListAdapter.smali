.class Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoDetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 190
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 193
    move-object v7, p2

    .line 194
    .local v7, v:Landroid/view/View;
    if-nez v7, :cond_17

    .line 195
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    iget-object v9, v9, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 196
    .local v8, vi:Landroid/view/LayoutInflater;
    const v9, 0x7f030006

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 199
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :cond_17
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;

    .line 201
    .local v4, ti:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;
    const v9, 0x7f0a000b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 202
    .local v5, title:Landroid/widget/TextView;
    const v9, 0x7f0a000c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    .local v0, content:Landroid/widget/TextView;
    const v9, 0x7f0a000d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 204
    .local v3, roCnt:Landroid/widget/TextView;
    const v9, 0x7f0a000e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 205
    .local v6, useType:Landroid/widget/TextView;
    const v9, 0x7f0a000f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 206
    .local v1, drmType:Landroid/widget/TextView;
    const v9, 0x7f0a0010

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 208
    .local v2, drmValidity:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ba

    .line 209
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_64
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getContent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c0

    .line 215
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :goto_75
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getRoCnt()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c6

    .line 221
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getRoCnt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_86
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getUsesType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_cc

    .line 227
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getUsesType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_97
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getDrmType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d2

    .line 233
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getDrmType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_a8
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getDrmValidity()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d8

    .line 239
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->getDrmValidity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_b9
    return-object v7

    .line 212
    :cond_ba
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_64

    .line 218
    :cond_c0
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_75

    .line 224
    :cond_c6
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_86

    .line 230
    :cond_cc
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_97

    .line 236
    :cond_d2
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a8

    .line 242
    :cond_d8
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b9
.end method
