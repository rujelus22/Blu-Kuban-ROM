.class Lcom/android/calendar/EventInfoActivity$3;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1407
    const/4 v1, 0x1

    .line 1412
    .local v1, isRepeat:Z
    if-nez p2, :cond_c

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I
    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$500(Lcom/android/calendar/EventInfoActivity;)I

    move-result v2

    if-nez v2, :cond_c

    .line 1413
    const/4 v1, 0x0

    .line 1419
    :cond_c
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z
    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$600(Lcom/android/calendar/EventInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1420
    const/4 v1, 0x0

    .line 1426
    :cond_15
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I
    invoke-static {v3}, Lcom/android/calendar/EventInfoActivity;->access$700(Lcom/android/calendar/EventInfoActivity;)I

    move-result v3

    #calls: Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I
    invoke-static {v2, v3}, Lcom/android/calendar/EventInfoActivity;->access$800(Lcom/android/calendar/EventInfoActivity;I)I

    move-result v0

    .line 1427
    .local v0, index:I
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I
    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$500(Lcom/android/calendar/EventInfoActivity;)I

    move-result v2

    add-int/2addr v2, v0

    if-ne p2, v2, :cond_2b

    .line 1428
    const/4 v1, 0x0

    .line 1431
    :cond_2b
    if-nez v1, :cond_48

    .line 1432
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mResponseTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1000(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mResponseValues:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$900(Lcom/android/calendar/EventInfoActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #setter for: Lcom/android/calendar/EventInfoActivity;->mResponseType:I
    invoke-static {v2, p2}, Lcom/android/calendar/EventInfoActivity;->access$1102(Lcom/android/calendar/EventInfoActivity;I)I

    .line 1451
    :goto_47
    return-void

    .line 1437
    :cond_48
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #setter for: Lcom/android/calendar/EventInfoActivity;->mTempResponseType:I
    invoke-static {v2, p2}, Lcom/android/calendar/EventInfoActivity;->access$1202(Lcom/android/calendar/EventInfoActivity;I)I

    .line 1442
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;
    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1300(Lcom/android/calendar/EventInfoActivity;)Lcom/android/calendar/EditResponseHelper;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EventInfoActivity$3$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/EventInfoActivity$3$1;-><init>(Lcom/android/calendar/EventInfoActivity$3;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/EditResponseHelper;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1450
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;
    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$1300(Lcom/android/calendar/EventInfoActivity;)Lcom/android/calendar/EditResponseHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$3;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;
    invoke-static {v3}, Lcom/android/calendar/EventInfoActivity;->access$1300(Lcom/android/calendar/EventInfoActivity;)Lcom/android/calendar/EditResponseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_47
.end method
