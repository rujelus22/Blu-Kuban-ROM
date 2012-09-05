.class Lcom/android/calendar/DayActivity$5;
.super Ljava/lang/Object;
.source "DayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/calendar/DayActivity$5;->this$0:Lcom/android/calendar/DayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/calendar/DayActivity$5;->this$0:Lcom/android/calendar/DayActivity;

    invoke-virtual {v0}, Lcom/android/calendar/DayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 212
    :goto_8
    return-void

    .line 211
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/DayActivity$5;->this$0:Lcom/android/calendar/DayActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayActivity;->showDialog(I)V

    goto :goto_8
.end method
