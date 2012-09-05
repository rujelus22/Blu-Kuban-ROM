.class Lcom/sec/android/socialhub/view/RecipientsListLayout$4;
.super Ljava/lang/Object;
.source "RecipientsListLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/RecipientsListLayout;->showAlertDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$4;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$4;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->isOpenedPopup:Z

    .line 250
    return-void
.end method
