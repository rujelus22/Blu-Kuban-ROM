.class public Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatePickerFragmentDialog"
.end annotation


# instance fields
.field private mCancelled:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1168
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 1164
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mType:I

    .line 1169
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1172
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 1164
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mType:I

    .line 1174
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mType:I

    .line 1175
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "button"

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .line 1222
    .local v0, target:Lcom/google/android/apps/plus/fragments/EditEventFragment;
    packed-switch p2, :pswitch_data_12

    .line 1228
    :goto_9
    return-void

    .line 1224
    :pswitch_a
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onEndDateCleared()V

    .line 1225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mCancelled:Z

    goto :goto_9

    .line 1222
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
    .line 1182
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 1183
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mType:I

    .line 1184
    const-string v1, "cancelled"

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mCancelled:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mCancelled:Z

    .line 1186
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "date_time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1187
    .local v7, time:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1188
    .local v6, cal:Ljava/util/Calendar;
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1189
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1192
    .local v0, datePickerDialog:Landroid/app/DatePickerDialog;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mType:I

    if-nez v1, :cond_50

    .line 1193
    const/4 v1, -0x2

    const v2, 0x7f08020d

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1195
    :cond_50
    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 8
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 1203
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mCancelled:Z

    if-eqz v1, :cond_5

    .line 1214
    :goto_4
    return-void

    .line 1207
    :cond_5
    iget v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 1208
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .line 1209
    .local v0, target:Lcom/google/android/apps/plus/fragments/EditEventFragment;
    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onStartDateSet(III)V

    goto :goto_4

    .line 1211
    .end local v0           #target:Lcom/google/android/apps/plus/fragments/EditEventFragment;
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .line 1212
    .restart local v0       #target:Lcom/google/android/apps/plus/fragments/EditEventFragment;
    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onEndDateSet(III)V

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 1235
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1237
    const-string v0, "type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1238
    const-string v0, "cancelled"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$DatePickerFragmentDialog;->mCancelled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1239
    return-void
.end method
