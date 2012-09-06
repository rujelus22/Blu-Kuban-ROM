.class Lcom/android/calendar/event/EditEventView$3;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 1047
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView$3;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView$3;->this$0:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0, p2}, Lcom/android/calendar/event/EditEventView;->setAllDayViewsVisibility(Z)V

    .line 1051
    return-void
.end method
