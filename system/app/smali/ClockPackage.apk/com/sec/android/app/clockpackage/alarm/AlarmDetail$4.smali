.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 786
    check-cast p1, Landroid/widget/Button;

    .end local p1
    const v0, 0x7f0b0027

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 791
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTimeTitle()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    .line 792
    return-void

    .line 787
    .restart local p1
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 789
    check-cast p1, Landroid/widget/Button;

    .end local p1
    const v0, 0x7f0b0026

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_17
.end method
