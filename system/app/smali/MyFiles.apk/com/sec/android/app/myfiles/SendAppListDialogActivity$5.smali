.class Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;
.super Ljava/lang/Object;
.source "SendAppListDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/SendAppListDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mDisplayAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$000(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 199
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    const/4 v4, 0x0

    .line 202
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 203
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareAppList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$100(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 206
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 208
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 212
    :cond_52
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    #setter for: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v1, v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$202(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v6}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$200(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    #getter for: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mShareInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v8}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$200(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #setter for: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$302(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move v6, v5

    move-object v1, v2

    move-object v2, v4

    .line 215
    :goto_7e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_cd

    .line 217
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move v4, v5

    .line 219
    :goto_8b
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    if-ge v4, v8, :cond_c9

    .line 220
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    #calls: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, v2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$400(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 225
    :cond_ab
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15d

    .line 226
    iget-object v3, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    #calls: Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->access$400(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 219
    :goto_c3
    add-int/lit8 v4, v4, 0x1

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    goto :goto_8b

    .line 215
    :cond_c9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_7e

    .line 232
    :cond_cd
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_104

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_104

    .line 235
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    const-class v4, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    const-string v3, "FOLDERPATH"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v0, "USE_CURRENT_VIEW"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    :goto_103
    return-void

    .line 241
    :cond_104
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_12c

    .line 242
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    const-class v4, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    const-string v3, "FOLDERPATH"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v0, "USE_CURRENT_VIEW"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_103

    .line 247
    :cond_12c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_155

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 248
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    const-class v4, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const-string v3, "FOLDERPATH"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v0, "USE_CURRENT_VIEW"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$5;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_103

    .line 254
    :cond_155
    const-string v0, "SendAppListDialogActivity"

    const-string v1, "mShareListener - There is no action"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_103

    :cond_15d
    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto/16 :goto_c3
.end method
