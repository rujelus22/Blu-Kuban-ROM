.class Lcom/android/calendar/DeleteEventHelper$4;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$4;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/calendar/DeleteEventHelper$4;->this$0:Lcom/android/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$4;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/calendar/DeleteEventHelper;->access$1000(Lcom/android/calendar/DeleteEventHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I
    invoke-static {v2, v1}, Lcom/android/calendar/DeleteEventHelper;->access$202(Lcom/android/calendar/DeleteEventHelper;I)I

    .line 177
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$4;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/calendar/DeleteEventHelper;->access$1100(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 178
    .local v0, ok:Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    return-void
.end method
