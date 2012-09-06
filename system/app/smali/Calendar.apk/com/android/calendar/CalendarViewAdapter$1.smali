.class Lcom/android/calendar/CalendarViewAdapter$1;
.super Ljava/lang/Object;
.source "CalendarViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarViewAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/calendar/CalendarViewAdapter$1;->this$0:Lcom/android/calendar/CalendarViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter$1;->this$0:Lcom/android/calendar/CalendarViewAdapter;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter$1;->this$0:Lcom/android/calendar/CalendarViewAdapter;

    iget-object v1, v1, Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 82
    return-void
.end method
