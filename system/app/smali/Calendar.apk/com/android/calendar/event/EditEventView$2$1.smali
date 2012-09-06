.class Lcom/android/calendar/event/EditEventView$2$1;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/EditEventView$2;

.field final synthetic val$row:I


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventView$2;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$2$1;->this$1:Lcom/android/calendar/event/EditEventView$2;

    iput p2, p0, Lcom/android/calendar/event/EditEventView$2$1;->val$row:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$2$1;->this$1:Lcom/android/calendar/event/EditEventView$2;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$2;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$800(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/EditEventView$2$1;->val$row:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 389
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$2$1;->this$1:Lcom/android/calendar/event/EditEventView$2;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView$2;->this$0:Lcom/android/calendar/event/EditEventView;

    #getter for: Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$800(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/EditEventView$2$1;->val$row:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 390
    return-void
.end method
