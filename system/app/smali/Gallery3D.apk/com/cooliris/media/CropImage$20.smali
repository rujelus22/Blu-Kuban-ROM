.class Lcom/cooliris/media/CropImage$20;
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
    .line 824
    iput-object p1, p0, Lcom/cooliris/media/CropImage$20;->this$0:Lcom/cooliris/media/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 826
    iget-object v2, p0, Lcom/cooliris/media/CropImage$20;->this$0:Lcom/cooliris/media/CropImage;

    const/4 v3, 0x1

    #setter for: Lcom/cooliris/media/CropImage;->bLockScreen:Z
    invoke-static {v2, v3}, Lcom/cooliris/media/CropImage;->access$1902(Lcom/cooliris/media/CropImage;Z)Z

    .line 827
    iget-object v2, p0, Lcom/cooliris/media/CropImage$20;->this$0:Lcom/cooliris/media/CropImage;

    const-string v3, "com.cooliris.media"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/CropImage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 829
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 830
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LockScreenSave"

    iget-object v3, p0, Lcom/cooliris/media/CropImage$20;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->bLockScreen:Z
    invoke-static {v3}, Lcom/cooliris/media/CropImage;->access$1900(Lcom/cooliris/media/CropImage;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 831
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 832
    iget-object v2, p0, Lcom/cooliris/media/CropImage$20;->this$0:Lcom/cooliris/media/CropImage;

    #calls: Lcom/cooliris/media/CropImage;->wallpaperSave()V
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$2000(Lcom/cooliris/media/CropImage;)V

    .line 833
    return-void
.end method
