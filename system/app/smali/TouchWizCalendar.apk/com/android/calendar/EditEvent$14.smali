.class Lcom/android/calendar/EditEvent$14;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1255
    iput-object p1, p0, Lcom/android/calendar/EditEvent$14;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/calendar/EditEvent$14;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/EnterActionMultiEdit;->requestFocus()Z

    .line 1258
    return-void
.end method
