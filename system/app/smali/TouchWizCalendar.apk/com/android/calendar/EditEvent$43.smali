.class Lcom/android/calendar/EditEvent$43;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createAlarmCustomizeDialog()Landroid/app/Dialog;
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
    .line 1721
    iput-object p1, p0, Lcom/android/calendar/EditEvent$43;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/calendar/EditEvent$43;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->hideSoftInput()V
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1600(Lcom/android/calendar/EditEvent;)V

    .line 1724
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1725
    return-void
.end method