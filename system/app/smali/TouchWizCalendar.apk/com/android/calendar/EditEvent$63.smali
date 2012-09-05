.class Lcom/android/calendar/EditEvent$63;
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
    .line 3002
    iput-object p1, p0, Lcom/android/calendar/EditEvent$63;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/calendar/EditEvent$63;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, -0x1

    const/4 v2, 0x1

    #calls: Lcom/android/calendar/EditEvent;->addReminder(IZ)Z
    invoke-static {v0, v1, v2}, Lcom/android/calendar/EditEvent;->access$7900(Lcom/android/calendar/EditEvent;IZ)Z

    .line 3006
    return-void
.end method
