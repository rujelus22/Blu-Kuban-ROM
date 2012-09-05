.class public Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;
.super Landroid/app/DialogFragment;
.source "LiveWallpaperActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperDialog"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

.field private mEmbedded:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private generateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 143
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, layout:Landroid/view/View;
    new-instance v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mAdapter:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    .line 146
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 148
    .local v0, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<Landroid/widget/BaseAdapter;>;"
    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mAdapter:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 149
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 151
    return-object v1
.end method

.method public static newInstance()Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;
    .registers 2

    .prologue
    .line 83
    new-instance v0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;

    invoke-direct {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;-><init>()V

    .line 84
    .local v0, dialog:Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->setCancelable(Z)V

    .line 85
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    if-eqz p1, :cond_16

    const-string v0, "com.android.wallpaper.livepicker.LiveWallpaperActivity$WallpaperDialog.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 92
    const-string v0, "com.android.wallpaper.livepicker.LiveWallpaperActivity$WallpaperDialog.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mEmbedded:Z

    .line 96
    :goto_15
    return-void

    .line 94
    :cond_16
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mEmbedded:Z

    goto :goto_15
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 119
    .local v2, contentInset:I
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->generateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f07000e

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v3, 0x7f070001

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mEmbedded:Z

    if-eqz v0, :cond_9

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->generateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 138
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_9

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 113
    :cond_9
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mAdapter:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    .line 163
    .local v1, wallpaperInfo:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    iget-object v2, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    if-nez v2, :cond_2b

    .line 165
    const-string v2, "LiveWallpapersPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LiveWallpaper list position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has wrong wallpaperinfo, so we do nothing for wrong live wallpaper info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_2a
    return-void

    .line 170
    :cond_2b
    iget-object v0, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    .line 171
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    sput-object v2, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    .line 172
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x64

    sget-object v4, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    invoke-static {v2, v3, v0, v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->showPreview(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/WallpaperInfo;)V

    goto :goto_2a
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 100
    const-string v0, "com.android.wallpaper.livepicker.LiveWallpaperActivity$WallpaperDialog.EMBEDDED_KEY"

    iget-boolean v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->mEmbedded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method
