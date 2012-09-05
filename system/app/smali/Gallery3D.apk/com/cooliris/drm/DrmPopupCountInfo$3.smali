.class Lcom/cooliris/drm/DrmPopupCountInfo$3;
.super Ljava/lang/Object;
.source "DrmPopupCountInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupCountInfo;->getKeyListener()Landroid/content/DialogInterface$OnKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupCountInfo;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupCountInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupCountInfo$3;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 68
    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    .line 71
    if-eqz p1, :cond_8

    .line 72
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupCountInfo$3;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    invoke-virtual {v0}, Lcom/cooliris/drm/DrmPopupCountInfo;->goBack()V

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
