.class Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$1;
.super Ljava/lang/Object;
.source "SlideNoteActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 119
    const/4 v0, 0x6

    if-ne p2, v0, :cond_14

    .line 120
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/office/util/EvUtil;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
