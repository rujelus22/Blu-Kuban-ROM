.class Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingListAdapter;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 98
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 101
    move-object v3, p2

    .line 103
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_17

    .line 104
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingListAdapter;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;

    iget-object v5, v5, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 105
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 108
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_17
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;

    .line 110
    .local v0, item:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;
    const v5, 0x7f0a0012

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, settingItem:Landroid/widget/TextView;
    const v5, 0x7f0a0013

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    .local v2, settingValue:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->getItem()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 114
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_3c
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 118
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_49
    return-object v3
.end method
