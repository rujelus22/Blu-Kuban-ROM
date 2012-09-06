.class Lcom/android/calendar/agenda/AgendaAdapter$1;
.super Ljava/lang/Object;
.source "AgendaAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter$1;->this$0:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method
