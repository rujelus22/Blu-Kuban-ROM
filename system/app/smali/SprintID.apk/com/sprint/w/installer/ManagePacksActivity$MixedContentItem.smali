.class Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;
.super Ljava/lang/Object;
.source "ManagePacksActivity.java"

# interfaces
.implements Lcom/sprint/w/installer/ManagePacksActivity$Listable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ManagePacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MixedContentItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ManagePacksActivity;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "title"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;->title:Ljava/lang/String;

    .line 241
    return-void
.end method


# virtual methods
.method public clicked()V
    .registers 5

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-virtual {v1}, Lcom/sprint/w/installer/ManagePacksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-virtual {v1}, Lcom/sprint/w/installer/ManagePacksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sprint.w.installer.EXTRA_EXCLUDE_PACK_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 247
    const-string v1, "com.sprint.w.installer.EXTRA_EXCLUDE_PACK_ID"

    iget-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-virtual {v2}, Lcom/sprint/w/installer/ManagePacksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sprint.w.installer.EXTRA_EXCLUDE_PACK_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :cond_2c
    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/ManagePacksActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    return-void
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x2

    return v0
.end method
