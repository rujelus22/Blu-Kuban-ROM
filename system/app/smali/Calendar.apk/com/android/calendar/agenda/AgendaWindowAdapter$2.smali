.class Lcom/android/calendar/agenda/AgendaWindowAdapter$2;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
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
    .line 658
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 662
    return-void
.end method
