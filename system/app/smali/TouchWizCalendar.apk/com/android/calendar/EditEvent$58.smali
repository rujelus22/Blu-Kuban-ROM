.class Lcom/android/calendar/EditEvent$58;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/android/calendar/EditEvent$58;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 2867
    iget-object v2, p0, Lcom/android/calendar/EditEvent$58;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->populateRepeats()V
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)V

    .line 2868
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/calendar/EditEvent$58;->this$0:Lcom/android/calendar/EditEvent;

    const v3, 0x7f030031

    iget-object v4, p0, Lcom/android/calendar/EditEvent$58;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$5900(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2870
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$58;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EditEvent$58;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$5800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/EditEvent$58;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatSelection:I
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$5400(Lcom/android/calendar/EditEvent;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    new-instance v4, Lcom/android/calendar/EditEvent$58$2;

    invoke-direct {v4, p0}, Lcom/android/calendar/EditEvent$58$2;-><init>(Lcom/android/calendar/EditEvent$58;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0077

    new-instance v4, Lcom/android/calendar/EditEvent$58$1;

    invoke-direct {v4, p0}, Lcom/android/calendar/EditEvent$58$1;-><init>(Lcom/android/calendar/EditEvent$58;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2909
    .local v1, dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/calendar/EditEvent$58;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v2}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 2912
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2913
    :cond_5b
    return-void
.end method
