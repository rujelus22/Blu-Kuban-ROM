.class Lcom/cooliris/drm/DrmPopupCountInfo2$2;
.super Ljava/lang/Object;
.source "DrmPopupCountInfo2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupCountInfo2;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupCountInfo2;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupCountInfo2;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupCountInfo2$2;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupCountInfo2$2;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo2;

    invoke-virtual {v0}, Lcom/cooliris/drm/DrmPopupCountInfo2;->goBack()V

    .line 43
    return-void
.end method
