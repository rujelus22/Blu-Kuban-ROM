.class public Lcom/sprint/w/installer/PackDetails;
.super Landroid/app/Activity;
.source "PackDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/PackDetails$DetailsAdapter;,
        Lcom/sprint/w/installer/PackDetails$TextItemView;,
        Lcom/sprint/w/installer/PackDetails$SeparatorView;,
        Lcom/sprint/w/installer/PackDetails$ClickableItem;,
        Lcom/sprint/w/installer/PackDetails$NonClickableItem;,
        Lcom/sprint/w/installer/PackDetails$Separator;,
        Lcom/sprint/w/installer/PackDetails$DetailsItem;
    }
.end annotation


# static fields
.field private static final DIALOG_CONFIRM_REMOVE:I = 0x64

.field private static final DIALOG_CURRENT_CANT_REMOVE:I = 0x65

.field static final REQUEST_INSTALL_PACK:I = 0x2

.field static final REQUEST_REMOVE:I = 0x3

.field static final REQUEST_REMOVE_CONTENT:I = 0x4

.field static final REQUEST_SWAP_PACK:I = 0x1

.field private static log:Lcom/sprint/id/logger/Logger;


# instance fields
.field mAdapter:Lcom/sprint/w/installer/PackDetails$DetailsAdapter;

.field final mCompleteInstall:Landroid/view/View$OnClickListener;

.field mCurrent:Z

.field final mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

.field mFromFile:Z

.field mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackDetails$DetailsItem;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mManageButton:Landroid/widget/Button;

.field mPackInfo:Lcom/sprint/w/installer/PackInfo;

.field final mReinstall:Landroid/view/View$OnClickListener;

.field mReinstallButton:Landroid/widget/Button;

.field mRemoveButton:Landroid/widget/Button;

.field mRemoveConfirmed:Landroid/content/DialogInterface$OnClickListener;

.field mShowReInstallButton:Z

.field mSwitchToOther:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/sprint/w/installer/PackDetails;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/PackDetails;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/w/installer/PackDetails;->mShowReInstallButton:Z

    .line 123
    new-instance v0, Lcom/sprint/w/installer/PackDetails$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackDetails$3;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mReinstall:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Lcom/sprint/w/installer/PackDetails$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackDetails$4;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 234
    new-instance v0, Lcom/sprint/w/installer/PackDetails$5;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackDetails$5;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveConfirmed:Landroid/content/DialogInterface$OnClickListener;

    .line 244
    new-instance v0, Lcom/sprint/w/installer/PackDetails$6;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackDetails$6;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mSwitchToOther:Landroid/content/DialogInterface$OnClickListener;

    .line 500
    new-instance v0, Lcom/sprint/w/installer/PackDetails$7;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackDetails$7;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mCompleteInstall:Landroid/view/View$OnClickListener;

    .line 512
    new-instance v0, Lcom/sprint/w/installer/PackDetails$8;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackDetails$8;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    return-void
.end method

.method static synthetic access$400()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/sprint/w/installer/PackDetails;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method private initListItems(Lcom/sprint/w/installer/PackInfo;)V
    .registers 10
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 256
    const/4 v6, 0x0

    .line 257
    .local v6, firstTime:Z
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    if-nez v0, :cond_10e

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;

    invoke-direct {v0, p0, v5}, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;-><init>(Lcom/sprint/w/installer/PackDetails;Lcom/sprint/w/installer/PackDetails$1;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mAdapter:Lcom/sprint/w/installer/PackDetails$DetailsAdapter;

    .line 260
    const/4 v6, 0x1

    .line 264
    :goto_15
    iget-object v7, p0, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    .line 265
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackDetails$DetailsItem;>;"
    new-instance v0, Lcom/sprint/w/installer/PackDetails$NonClickableItem;

    iget-object v1, p1, Lcom/sprint/w/installer/PackInfo;->description:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/sprint/w/installer/PackDetails$NonClickableItem;-><init>(Ljava/lang/String;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v0, Lcom/sprint/w/installer/PackDetails$Separator;

    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/sprint/w/installer/PackDetails$Separator;-><init>(Ljava/lang/String;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v0, Lcom/sprint/w/installer/PackDetails$NonClickableItem;

    iget-object v1, p1, Lcom/sprint/w/installer/PackInfo;->author:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/sprint/w/installer/PackDetails$NonClickableItem;-><init>(Ljava/lang/String;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p1, Lcom/sprint/w/installer/PackInfo;->contactUrl:Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 269
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p1, Lcom/sprint/w/installer/PackInfo;->contactUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 270
    .local v4, i:Landroid/content/Intent;
    new-instance v0, Lcom/sprint/w/installer/PackDetails$Separator;

    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/sprint/w/installer/PackDetails$Separator;-><init>(Ljava/lang/String;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v0, Lcom/sprint/w/installer/PackDetails$ClickableItem;

    const v1, 0x7f060062

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->contactUrl:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sprint/w/installer/PackDetails$ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v4           #i:Landroid/content/Intent;
    :cond_6c
    iget-object v0, p1, Lcom/sprint/w/installer/PackInfo;->contactEmail:Ljava/lang/String;

    if-eqz v0, :cond_bf

    .line 274
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->contactEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .restart local v4       #i:Landroid/content/Intent;
    const-string v0, "android.intent.extra.EMAIL"

    iget-object v1, p1, Lcom/sprint/w/installer/PackInfo;->contactEmail:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v1, p1, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    new-instance v0, Lcom/sprint/w/installer/PackDetails$Separator;

    const v1, 0x7f060063

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/sprint/w/installer/PackDetails$Separator;-><init>(Ljava/lang/String;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v0, Lcom/sprint/w/installer/PackDetails$ClickableItem;

    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->contactEmail:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sprint/w/installer/PackDetails$ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v4           #i:Landroid/content/Intent;
    :cond_bf
    iget-object v0, p1, Lcom/sprint/w/installer/PackInfo;->contactPhone:Ljava/lang/String;

    if-eqz v0, :cond_104

    .line 281
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    .restart local v4       #i:Landroid/content/Intent;
    new-instance v0, Lcom/sprint/w/installer/PackDetails$Separator;

    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/sprint/w/installer/PackDetails$Separator;-><init>(Ljava/lang/String;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v0, Lcom/sprint/w/installer/PackDetails$ClickableItem;

    const v1, 0x7f060069

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->contactPhone:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sprint/w/installer/PackDetails$ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/sprint/w/installer/PackDetails$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v4           #i:Landroid/content/Intent;
    :cond_104
    if-eqz v6, :cond_115

    .line 286
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails;->mAdapter:Lcom/sprint/w/installer/PackDetails$DetailsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    :goto_10d
    return-void

    .line 262
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackDetails$DetailsItem;>;"
    :cond_10e
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_15

    .line 288
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackDetails$DetailsItem;>;"
    :cond_115
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails;->mAdapter:Lcom/sprint/w/installer/PackDetails$DetailsAdapter;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackDetails$DetailsAdapter;->notifyDataSetChanged()V

    goto :goto_10d
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    if-ne v7, p1, :cond_31

    if-ne v4, p2, :cond_31

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/PackRemover;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sprint.w.installer.EXTRA_PACK_ID"

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "keepUserContent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const-string v1, "com.sprint.w.installer.EXTRA_LOAD_HOME"

    const-string v2, "com.sprint.w.installer.EXTRA_LOAD_HOME"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0, v6}, Lcom/sprint/w/installer/PackDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    .end local v0           #i:Landroid/content/Intent;
    :cond_31
    if-ne v5, p2, :cond_58

    .line 175
    if-ne v7, p1, :cond_59

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/PackRemover;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.sprint.w.installer.EXTRA_PACK_ID"

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "com.sprint.w.installer.EXTRA_LOAD_HOME"

    const-string v2, "com.sprint.w.installer.EXTRA_LOAD_HOME"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0, v6}, Lcom/sprint/w/installer/PackDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    .end local v0           #i:Landroid/content/Intent;
    :cond_58
    :goto_58
    return-void

    .line 182
    :cond_59
    if-ne v4, p1, :cond_95

    .line 183
    iget-boolean v1, p0, Lcom/sprint/w/installer/PackDetails;->mFromFile:Z

    if-eqz v1, :cond_63

    .line 184
    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackDetails;->showDialog(I)V

    goto :goto_58

    .line 185
    :cond_63
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v1, :cond_58

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sprint/w/installer/PackDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.sprint.ACTION_INSTALL_FROM_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 192
    const-string v1, "packName"

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_58

    .line 196
    .end local v0           #i:Landroid/content/Intent;
    :cond_95
    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->setResult(I)V

    .line 197
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackDetails;->finish()V

    goto :goto_58
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v5, 0x7f030019

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->setContentView(I)V

    .line 55
    const v5, 0x7f060018

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->setTitle(I)V

    .line 56
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackDetails;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "com.sprint.w.installer.EXTRA_PACK_ID"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, id:Ljava/lang/String;
    if-nez v2, :cond_21

    .line 58
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackDetails;->finish()V

    .line 121
    :goto_20
    return-void

    .line 61
    :cond_21
    invoke-static {p0, v2}, Lcom/sprint/w/installer/PackInfo;->loadPackDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    .line 62
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    if-nez v5, :cond_2f

    .line 63
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackDetails;->finish()V

    goto :goto_20

    .line 66
    :cond_2f
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v5, v5, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v5, :cond_130

    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v5, v5, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const-string v8, "file:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_130

    move v5, v6

    :goto_42
    iput-boolean v5, p0, Lcom/sprint/w/installer/PackDetails;->mFromFile:Z

    .line 67
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v5, v5, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v5, :cond_56

    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v5, v5, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 68
    :cond_56
    iput-boolean v7, p0, Lcom/sprint/w/installer/PackDetails;->mShowReInstallButton:Z

    .line 75
    :cond_58
    :goto_58
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->setResult(I)V

    .line 77
    const v5, 0x7f0c0042

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mListView:Landroid/widget/ListView;

    .line 78
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-direct {p0, v5}, Lcom/sprint/w/installer/PackDetails;->initListItems(Lcom/sprint/w/installer/PackInfo;)V

    .line 79
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sprint/w/installer/PackDetails;->mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    const v5, 0x7f0c000b

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v8, v8, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v5, 0x7f0c000a

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 82
    .local v4, version:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f060048

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v8, v8, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v5, v5, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    if-eqz v5, :cond_d3

    .line 86
    const v5, 0x7f0c0009

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 87
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v5, v5, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    iget-object v8, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v8, v8, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    array-length v8, v8

    invoke-static {v5, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    .end local v1           #icon:Landroid/widget/ImageView;
    :cond_d3
    const v5, 0x7f0c0043

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mManageButton:Landroid/widget/Button;

    .line 91
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mManageButton:Landroid/widget/Button;

    new-instance v7, Lcom/sprint/w/installer/PackDetails$1;

    invoke-direct {v7, p0}, Lcom/sprint/w/installer/PackDetails$1;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v5, 0x7f0c0045

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    .line 100
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v3

    .line 101
    .local v3, installed:Lcom/sprint/w/installer/PackInfo;
    iget-object v5, v3, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    iget-object v7, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v7, v7, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 102
    iput-boolean v6, p0, Lcom/sprint/w/installer/PackDetails;->mCurrent:Z

    .line 103
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    const v6, 0x7f060035

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 105
    :cond_10d
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/sprint/w/installer/PackDetails;->mReinstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v5, 0x7f0c0044

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveButton:Landroid/widget/Button;

    .line 107
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-virtual {v5}, Lcom/sprint/w/installer/PackInfo;->isDefaultPack()Z

    move-result v5

    if-eqz v5, :cond_146

    .line 108
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_20

    .end local v3           #installed:Lcom/sprint/w/installer/PackInfo;
    .end local v4           #version:Landroid/widget/TextView;
    :cond_130
    move v5, v7

    .line 66
    goto/16 :goto_42

    .line 69
    :cond_133
    iget-boolean v5, p0, Lcom/sprint/w/installer/PackDetails;->mFromFile:Z

    if-eqz v5, :cond_58

    .line 70
    new-instance v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    invoke-virtual {v0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadSD()Z

    move-result v5

    if-nez v5, :cond_58

    .line 72
    iput-boolean v7, p0, Lcom/sprint/w/installer/PackDetails;->mShowReInstallButton:Z

    goto/16 :goto_58

    .line 110
    .end local v0           #dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    .restart local v3       #installed:Lcom/sprint/w/installer/PackInfo;
    .restart local v4       #version:Landroid/widget/TextView;
    :cond_146
    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveButton:Landroid/widget/Button;

    new-instance v6, Lcom/sprint/w/installer/PackDetails$2;

    invoke-direct {v6, p0}, Lcom/sprint/w/installer/PackDetails$2;-><init>(Lcom/sprint/w/installer/PackDetails;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_20
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f060056

    const v1, 0x7f060055

    const v3, 0x7f060044

    const/high16 v2, 0x104

    .line 207
    packed-switch p1, :pswitch_data_4c

    .line 213
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_13
    return-object v0

    .line 209
    :pswitch_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveConfirmed:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_13

    .line 211
    :pswitch_30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails;->mSwitchToOther:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_13

    .line 207
    :pswitch_data_4c
    .packed-switch 0x64
        :pswitch_14
        :pswitch_30
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 9
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 220
    if-nez p1, :cond_4a

    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v4, v4, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v4, :cond_4a

    .line 221
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, dir:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, prefix:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v4, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    .line 224
    .local v2, file:Ljava/lang/String;
    const-string v4, "file:///sdcard/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 225
    const-string v4, "file:///sdcard/"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 229
    :cond_3e
    :goto_3e
    const v4, 0x7f0c002f

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 230
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #edit:Landroid/widget/EditText;
    .end local v2           #file:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    :cond_4a
    return-void

    .line 226
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/lang/String;
    .restart local v3       #prefix:Ljava/lang/String;
    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3e
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 469
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    if-nez v4, :cond_a

    .line 498
    :goto_9
    return-void

    .line 472
    :cond_a
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v4, v4, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v0, v4, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 473
    .local v0, id:Ljava/lang/String;
    :goto_14
    if-eqz v0, :cond_93

    .line 474
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    invoke-static {p0, v0, v4}, Lcom/sprint/w/installer/DownloadService;->addStatusListener(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)I

    move-result v1

    .line 475
    .local v1, sc:I
    if-ne v1, v2, :cond_3b

    .line 476
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 477
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    const v4, 0x7f060053

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 478
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_9

    .line 472
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #sc:I
    :cond_36
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v0, v4, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    goto :goto_14

    .line 480
    .restart local v0       #id:Ljava/lang/String;
    .restart local v1       #sc:I
    :cond_3b
    const/4 v4, 0x2

    if-ne v1, v4, :cond_67

    .line 481
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 482
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 483
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-virtual {v5}, Lcom/sprint/w/installer/PackInfo;->isDefaultPack()Z

    move-result v5

    if-nez v5, :cond_65

    :goto_52
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 484
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    const v3, 0x7f0600a9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 485
    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sprint/w/installer/PackDetails;->mCompleteInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :cond_65
    move v2, v3

    .line 483
    goto :goto_52

    .line 487
    :cond_67
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/sprint/w/installer/PackDetails;->mShowReInstallButton:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 488
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    const v5, 0x7f060035

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 489
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mReinstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 491
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-virtual {v5}, Lcom/sprint/w/installer/PackInfo;->isDefaultPack()Z

    move-result v5

    if-nez v5, :cond_91

    :goto_8c
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_91
    move v2, v3

    goto :goto_8c

    .line 494
    .end local v1           #sc:I
    :cond_93
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 495
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 496
    iget-object v4, p0, Lcom/sprint/w/installer/PackDetails;->mRemoveButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/sprint/w/installer/PackDetails;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-virtual {v5}, Lcom/sprint/w/installer/PackInfo;->isDefaultPack()Z

    move-result v5

    if-nez v5, :cond_ac

    :goto_a7
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_ac
    move v2, v3

    goto :goto_a7
.end method
