.class Lcom/android/calendar/EditEvent$57;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 2614
    iput-object p1, p0, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->setParticipantsSchedule()V
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$6800(Lcom/android/calendar/EditEvent;)V

    .line 2617
    return-void
.end method