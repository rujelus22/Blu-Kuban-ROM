.class Lcom/android/calendar/EditEvent$45;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1733
    iput-object p1, p0, Lcom/android/calendar/EditEvent$45;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/calendar/EditEvent$45;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->removeDialog(I)V

    .line 1737
    return-void
.end method
