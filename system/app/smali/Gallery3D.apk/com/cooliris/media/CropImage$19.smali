.class Lcom/cooliris/media/CropImage$19;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;)V
    .registers 2
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/cooliris/media/CropImage$19;->this$0:Lcom/cooliris/media/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    .line 836
    iget-object v2, p0, Lcom/cooliris/media/CropImage$19;->this$0:Lcom/cooliris/media/CropImage;

    #setter for: Lcom/cooliris/media/CropImage;->bLockScreen:Z
    invoke-static {v2, v4}, Lcom/cooliris/media/CropImage;->access$1902(Lcom/cooliris/media/CropImage;Z)Z

    .line 837
    iget-object v2, p0, Lcom/cooliris/media/CropImage$19;->this$0:Lcom/cooliris/media/CropImage;

    const-string v3, "com.cooliris.media"

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/CropImage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 839
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 840
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LockScreenSave"

    iget-object v3, p0, Lcom/cooliris/media/CropImage$19;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->bLockScreen:Z
    invoke-static {v3}, Lcom/cooliris/media/CropImage;->access$1900(Lcom/cooliris/media/CropImage;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 841
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 842
    iget-object v2, p0, Lcom/cooliris/media/CropImage$19;->this$0:Lcom/cooliris/media/CropImage;

    #calls: Lcom/cooliris/media/CropImage;->wallpaperSave()V
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$2000(Lcom/cooliris/media/CropImage;)V

    .line 843
    return-void
.end method
