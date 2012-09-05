.class Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;
.super Ljava/lang/Object;
.source "AlarmSnooze.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 120
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mDurationAry:[I

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->getCheckedButtonIndexFromArray([II)I
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;[II)I

    move-result v0

    .line 123
    .local v0, duration:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mRepeatAry:[I

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mRepeat:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->getCheckedButtonIndexFromArray([II)I
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;[II)I

    move-result v1

    .line 126
    .local v1, repeat:I
    const/4 v2, 0x1

    .line 128
    .local v2, result:I
    shl-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xf00

    or-int/2addr v2, v3

    .line 130
    shl-int/lit8 v3, v1, 0x4

    and-int/lit16 v3, v3, 0xf0

    or-int/2addr v2, v3

    .line 132
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->access$300()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 134
    const-string v3, "AlarmSnooze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snooze result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_51
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->setResult(I)V

    .line 138
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->finish()V

    .line 140
    return-void
.end method
