.class Lcom/android/calendar/CalendarsListActivity$1;
.super Ljava/lang/Object;
.source "CalendarsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarsListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarsListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/calendar/CalendarsListActivity$1;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 435
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity$1;->this$0:Lcom/android/calendar/CalendarsListActivity;

    #calls: Lcom/android/calendar/CalendarsListActivity;->onRadioChecked(I)V
    invoke-static {v0, p3}, Lcom/android/calendar/CalendarsListActivity;->access$500(Lcom/android/calendar/CalendarsListActivity;I)V

    .line 437
    return-void
.end method
