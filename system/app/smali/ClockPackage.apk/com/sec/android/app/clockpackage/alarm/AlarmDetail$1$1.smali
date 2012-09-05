.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1$1;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1$1;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1$1;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->requestFocusOnEdit()V

    .line 246
    return-void
.end method
