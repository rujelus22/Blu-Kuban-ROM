.class Lcom/android/calendar/AgendaDeleteActivity$2;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$200(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v0, 0x1

    .line 335
    .local v0, checked:Z
    :goto_d
    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$200(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v1, v0}, Lcom/android/calendar/AgendaDeleteActivity;->setAllBeforeItemChecked(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #calls: Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V
    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$300(Lcom/android/calendar/AgendaDeleteActivity;)V

    .line 338
    return-void

    .line 334
    .end local v0           #checked:Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_d
.end method
