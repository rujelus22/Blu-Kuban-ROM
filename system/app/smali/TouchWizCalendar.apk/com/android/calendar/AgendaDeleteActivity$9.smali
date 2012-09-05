.class Lcom/android/calendar/AgendaDeleteActivity$9;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$9;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$9;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaDeleteActivity;->showDialog(I)V

    .line 1001
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1002
    return-void
.end method
