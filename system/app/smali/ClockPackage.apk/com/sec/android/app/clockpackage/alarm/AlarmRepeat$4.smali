.class Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$4;
.super Ljava/lang/Object;
.source "AlarmRepeat.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckChanged(Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;)V
    .registers 4
    .parameter "g"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0e0048

    if-ne v0, v1, :cond_24

    .line 290
    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v0

    const v1, 0x1111111

    if-ne v0, v1, :cond_25

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v0

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 296
    :cond_24
    :goto_24
    return-void

    .line 292
    :cond_25
    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v0

    const v1, 0x111110

    if-ne v0, v1, :cond_24

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v0

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    goto :goto_24
.end method
