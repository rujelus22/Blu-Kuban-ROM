.class Lcom/android/calendar/DayEventListActivity$10;
.super Ljava/lang/Object;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayEventListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$10;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$10;->this$0:Lcom/android/calendar/DayEventListActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayEventListActivity;->removeDialog(I)V

    .line 666
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$10;->this$0:Lcom/android/calendar/DayEventListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/calendar/DayEventListActivity;->access$202(Lcom/android/calendar/DayEventListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 667
    return-void
.end method
