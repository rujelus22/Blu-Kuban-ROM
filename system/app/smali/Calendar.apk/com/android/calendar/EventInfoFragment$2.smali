.class Lcom/android/calendar/EventInfoFragment$2;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 495
    .local v0, prevValue:Ljava/lang/Integer;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p3, :cond_1b

    .line 496
    :cond_e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    .line 497
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$2;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v2, 0x1

    #setter for: Lcom/android/calendar/EventInfoFragment;->mUserModifiedReminders:Z
    invoke-static {v1, v2}, Lcom/android/calendar/EventInfoFragment;->access$1702(Lcom/android/calendar/EventInfoFragment;Z)Z

    .line 499
    :cond_1b
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
