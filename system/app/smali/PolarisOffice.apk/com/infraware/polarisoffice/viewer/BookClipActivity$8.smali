.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$8;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;->showDuplicateMsgPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$8;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$8;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$1(Lcom/infraware/polarisoffice/viewer/BookClipActivity;Z)V

    .line 343
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    return-void
.end method
