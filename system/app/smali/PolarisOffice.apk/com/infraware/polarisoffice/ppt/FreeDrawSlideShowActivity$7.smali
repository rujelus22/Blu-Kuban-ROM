.class Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$7;
.super Ljava/lang/Object;
.source "FreeDrawSlideShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->makeFreeDrawSaveAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$7;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 235
    const/16 v0, 0x54

    if-ne p2, v0, :cond_c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
