.class Lcom/infraware/polarisoffice/ppt/SlideShowActivity$4;
.super Ljava/lang/Object;
.source "SlideShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->AlertErrorAndCloseDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    .line 372
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
    .line 375
    const/16 v0, 0x54

    if-ne p2, v0, :cond_c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
