.class Lcom/android/calendar/MonthActivity$14;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->setTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$14;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$14;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1333
    :goto_8
    return-void

    .line 1332
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$14;->this$0:Lcom/android/calendar/MonthActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthActivity;->showDialog(I)V

    goto :goto_8
.end method
