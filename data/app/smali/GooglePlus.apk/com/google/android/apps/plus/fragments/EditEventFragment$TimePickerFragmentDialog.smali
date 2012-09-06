.class public Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragmentDialog"
.end annotation


# instance fields
.field private mCancelled:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1254
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 1250
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mType:I

    .line 1255
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1263
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 1250
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mType:I

    .line 1265
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mType:I

    .line 1266
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "button"

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .line 1312
    .local v0, target:Lcom/google/android/apps/plus/fragments/EditEventFragment;
    packed-switch p2, :pswitch_data_12

    .line 1318
    :goto_9
    return-void

    .line 1314
    :pswitch_a
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onEndTimeCleared()V

    .line 1315
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mCancelled:Z

    goto :goto_9

    .line 1312
    nop

    :pswitch_data_12
    .packed-switch -0x2
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 1273
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mType:I

    if-ne v1, v2, :cond_17

    .line 1274
    const-string v1, "type"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mType:I

    .line 1275
    const-string v1, "cancelled"

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mCancelled:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mCancelled:Z

    .line 1277
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "date_time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1278
    .local v7, time:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1279
    .local v6, cal:Ljava/util/Calendar;
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1280
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 1283
    .local v0, timePickerDialog:Landroid/app/TimePickerDialog;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mType:I

    if-nez v1, :cond_55

    .line 1284
    const/4 v1, -0x2

    const v2, 0x7f08020d

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1286
    :cond_55
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 1325
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1327
    const-string v0, "type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    const-string v0, "cancelled"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mCancelled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1329
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 1294
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mCancelled:Z

    if-eqz v1, :cond_5

    .line 1304
    :goto_4
    return-void

    .line 1298
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .line 1299
    .local v0, target:Lcom/google/android/apps/plus/fragments/EditEventFragment;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$TimePickerFragmentDialog;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 1300
    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onStartTimeSet(II)V

    goto :goto_4

    .line 1302
    :cond_14
    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onEndTimeSet(II)V

    goto :goto_4
.end method
