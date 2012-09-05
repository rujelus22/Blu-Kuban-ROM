.class Lcom/cooliris/media/CropImage$21;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->SetWallpaperPopupView()Landroid/view/View;
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
    .line 876
    iput-object p1, p0, Lcom/cooliris/media/CropImage$21;->this$0:Lcom/cooliris/media/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .parameter "arg0"
    .parameter "isChacked"

    .prologue
    .line 879
    iget-object v2, p0, Lcom/cooliris/media/CropImage$21;->this$0:Lcom/cooliris/media/CropImage;

    #setter for: Lcom/cooliris/media/CropImage;->bLockScreenDialogOff:Z
    invoke-static {v2, p2}, Lcom/cooliris/media/CropImage;->access$2102(Lcom/cooliris/media/CropImage;Z)Z

    .line 880
    iget-object v2, p0, Lcom/cooliris/media/CropImage$21;->this$0:Lcom/cooliris/media/CropImage;

    const-string v3, "com.cooliris.media"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/CropImage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 881
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 882
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LockScreenDialogUse"

    iget-object v3, p0, Lcom/cooliris/media/CropImage$21;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->bLockScreenDialogOff:Z
    invoke-static {v3}, Lcom/cooliris/media/CropImage;->access$2100(Lcom/cooliris/media/CropImage;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 883
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 884
    return-void
.end method
