.class Lcom/sec/android/app/camera/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$2;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$2;->this$0:Lcom/sec/android/app/camera/CropImage;

    #calls: Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$000(Lcom/sec/android/app/camera/CropImage;)V

    .line 228
    return-void
.end method
