.class Lcom/android/calendar/EditEvent$30;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1493
    iput-object p1, p0, Lcom/android/calendar/EditEvent$30;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/calendar/EditEvent$30;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x1

    #setter for: Lcom/android/calendar/EditEvent;->mGoogleEventDialogChecked:Z
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$4202(Lcom/android/calendar/EditEvent;Z)Z

    .line 1496
    return-void
.end method
