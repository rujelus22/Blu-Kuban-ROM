.class final Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$2;
.super Ljava/lang/Object;
.source "SocialHubDatePickerDialog.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->getListener()Landroid/app/DatePickerDialog$OnDateSetListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 9
    .parameter "picker"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 105
    const-string v0, "SocialHubDatePickerDialog"

    const-string v1, "onDateSet()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->access$000()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 109
    invoke-static {}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->access$100()Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 111
    invoke-static {}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->access$100()Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->access$000()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;->onDateChanged(J)V

    .line 113
    :cond_44
    return-void
.end method
