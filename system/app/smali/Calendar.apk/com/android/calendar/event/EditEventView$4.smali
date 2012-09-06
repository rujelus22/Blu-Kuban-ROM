.class Lcom/android/calendar/event/EditEventView$4;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventView;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventView;)V
    .registers 2
    .parameter

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$4;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$4;->this$0:Lcom/android/calendar/event/EditEventView;

    #calls: Lcom/android/calendar/event/EditEventView;->addReminder()V
    invoke-static {v0}, Lcom/android/calendar/event/EditEventView;->access$1100(Lcom/android/calendar/event/EditEventView;)V

    .line 1091
    return-void
.end method
