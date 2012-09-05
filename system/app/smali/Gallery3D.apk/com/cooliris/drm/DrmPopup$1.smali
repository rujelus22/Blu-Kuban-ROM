.class Lcom/cooliris/drm/DrmPopup$1;
.super Ljava/lang/Object;
.source "DrmPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopup;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopup;Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopup$1;->this$0:Lcom/cooliris/drm/DrmPopup;

    iput-object p2, p0, Lcom/cooliris/drm/DrmPopup$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopup$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    return-void
.end method
