.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$13;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$13;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$13;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$1(Lcom/infraware/polarisoffice/viewer/BookClipActivity;Z)V

    .line 487
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 488
    return-void
.end method
