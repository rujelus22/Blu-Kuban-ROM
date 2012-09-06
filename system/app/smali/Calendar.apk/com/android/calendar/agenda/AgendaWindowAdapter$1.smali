.class Lcom/android/calendar/agenda/AgendaWindowAdapter$1;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 196
    return-void
.end method
