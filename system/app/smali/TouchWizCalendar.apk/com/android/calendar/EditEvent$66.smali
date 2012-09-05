.class Lcom/android/calendar/EditEvent$66;
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
    .line 3091
    iput-object p1, p0, Lcom/android/calendar/EditEvent$66;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/android/calendar/EditEvent$66;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$8100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/EditEvent$66;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$8100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3094
    return-void

    .line 3093
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method
