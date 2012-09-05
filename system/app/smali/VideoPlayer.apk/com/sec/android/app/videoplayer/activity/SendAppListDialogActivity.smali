.class public Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;
.super Landroid/app/Activity;
.source "SendAppListDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;,
        Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppListAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_SEND_APPLIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SendAppListDialogActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareAppListBackup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShareListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$3;-><init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addList(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, listResolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    if-nez v1, :cond_38

    .line 156
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppListBackup:Ljava/util/List;

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppListBackup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 159
    const-string v2, "SendAppListDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppListBackup:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 164
    .end local v0           #i:I
    :cond_38
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 166
    :cond_4b
    return-void
.end method

.method private getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "action"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 171
    .local v1, mPackageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 173
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const v2, 0x10060

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .registers 7
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 193
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    const/4 v2, 0x1

    .line 196
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private setDisplayedList()V
    .registers 4

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppListBackup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppListBackup:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppListBackup:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 189
    :cond_2e
    return-void
.end method

.method private setSendIntentList()V
    .registers 3

    .prologue
    .line 146
    const-string v0, "android.intent.action.SEND"

    const-string v1, "video/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->addList(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 149
    const-string v0, "SendAppListDialogActivity"

    const-string v1, "AllFileBrowser : SendMenu - No Intent => SEND"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1a
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->setDisplayedList()V

    .line 152
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mContext:Landroid/content/Context;

    .line 43
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->setSendIntentList()V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->showDialog(I)V

    .line 46
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_66

    .line 96
    const/4 v6, 0x0

    :goto_4
    return-object v6

    .line 56
    :pswitch_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v5, sendAppListAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;>;"
    const v6, 0x7f08000d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 64
    const v6, 0x7f080024

    invoke-virtual {p0, v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$1;-><init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4e

    .line 72
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 73
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v7, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, p0, v8, v6}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppItem;-><init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 76
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4e
    new-instance v4, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppListAdapter;

    invoke-direct {v4, p0, p0, v0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppListAdapter;-><init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 78
    .local v4, sendAppListAdapter:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$SendAppListAdapter;
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    new-instance v6, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$2;-><init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_4

    .line 53
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 50
    return-void
.end method
