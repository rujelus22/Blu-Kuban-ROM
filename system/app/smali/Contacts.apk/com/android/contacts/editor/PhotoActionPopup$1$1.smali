.class Lcom/android/contacts/editor/PhotoActionPopup$1$1;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PhotoActionPopup$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoActionPopup$1;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$1;->this$0:Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoActionPopup$1$1;->this$0:Lcom/android/contacts/editor/PhotoActionPopup$1;

    iget-object v0, v0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    .line 101
    return-void
.end method
