.class Lcom/sprint/w/installer/ManagePacksActivity$PackItem;
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
    name = "PackItem"
.end annotation


# instance fields
.field icon:Landroid/graphics/Bitmap;

.field iconBytes:[B

.field id:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprint/w/installer/ManagePacksActivity;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "version"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->id:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->name:Ljava/lang/String;

    .line 212
    iput-object p4, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->version:Ljava/lang/String;

    .line 213
    return-void
.end method


# virtual methods
.method public clicked()V
    .registers 4

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-virtual {v1}, Lcom/sprint/w/installer/ManagePacksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/PackDetails;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sprint.w.installer.EXTRA_PACK_ID"

    iget-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/ManagePacksActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    return-void
.end method

.method getIconBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->iconBytes:[B

    if-eqz v0, :cond_14

    .line 217
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->iconBytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->iconBytes:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->icon:Landroid/graphics/Bitmap;

    .line 219
    :cond_14
    iget-object v0, p0, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method
