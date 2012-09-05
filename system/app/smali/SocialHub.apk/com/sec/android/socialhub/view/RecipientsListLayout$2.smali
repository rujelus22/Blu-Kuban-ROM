.class Lcom/sec/android/socialhub/view/RecipientsListLayout$2;
.super Ljava/lang/Object;
.source "RecipientsListLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/RecipientsListLayout;
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
    .line 211
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$2;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$2;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    iget-boolean v0, v0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->isOpenedPopup:Z

    if-nez v0, :cond_b

    .line 216
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$2;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    #calls: Lcom/sec/android/socialhub/view/RecipientsListLayout;->showAlertDialog(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$200(Lcom/sec/android/socialhub/view/RecipientsListLayout;Landroid/view/View;)V

    .line 217
    :cond_b
    return-void
.end method
