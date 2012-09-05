.class Lcom/android/calendar/AgendaActivity$6;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$6;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$6;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaActivity;->removeDialog(I)V

    .line 752
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$6;->this$0:Lcom/android/calendar/AgendaActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaActivity;->access$402(Lcom/android/calendar/AgendaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 753
    return-void
.end method
