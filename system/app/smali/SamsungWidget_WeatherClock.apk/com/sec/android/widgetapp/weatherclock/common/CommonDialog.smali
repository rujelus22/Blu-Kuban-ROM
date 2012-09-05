.class public Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# static fields
.field public static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static hide(Landroid/app/AlertDialog;ILcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)Landroid/app/AlertDialog;
    .registers 7
    .parameter "dialog"
    .parameter "time"
    .parameter "interaction"

    .prologue
    .line 78
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$2;-><init>(Landroid/app/AlertDialog;Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-object p0
.end method

.method private static makeBasicDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;
    .registers 5
    .parameter "context"
    .parameter "stringID"
    .parameter "dialogID"

    .prologue
    .line 109
    invoke-static {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method

.method private static makeBasicDialog(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/AlertDialog;
    .registers 5
    .parameter "context"
    .parameter "message"
    .parameter "dialogID"

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method

.method public static makeBasicDialogBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .registers 3
    .parameter "context"
    .parameter "dialogID"

    .prologue
    .line 182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    return-object v0
.end method

.method public static makeBasicDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;
    .registers 5
    .parameter "context"
    .parameter "stringID"
    .parameter "dialogID"

    .prologue
    .line 145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 158
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$3;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    return-object v0
.end method

.method public static makeBasicDialogBuilder(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/AlertDialog$Builder;
    .registers 4
    .parameter "context"
    .parameter "message"
    .parameter "dialogID"

    .prologue
    .line 173
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 177
    return-object v0
.end method

.method private static show(Landroid/app/AlertDialog$Builder;Z)Landroid/app/AlertDialog;
    .registers 4
    .parameter "builder"
    .parameter "isShow"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 104
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog;Z)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private static show(Landroid/app/AlertDialog;Z)Landroid/app/AlertDialog;
    .registers 4
    .parameter "dialog"
    .parameter "isShow"

    .prologue
    .line 52
    if-eqz p1, :cond_e

    .line 54
    if-eqz p0, :cond_e

    .line 56
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_e
    return-object p0
.end method

.method public static showDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .registers 4
    .parameter "context"
    .parameter "dialogID"

    .prologue
    const/4 v1, 0x0

    .line 189
    const/4 v0, 0x1

    invoke-static {p0, v1, v1, p1, v0}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;IZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;
    .registers 5
    .parameter "context"
    .parameter "dialogID"
    .parameter "interaction"

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p1, v1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;IZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;IZ)Landroid/app/Dialog;
    .registers 15
    .parameter "context"
    .parameter "interaction"
    .parameter "closedInteraction"
    .parameter "dialogID"
    .parameter "isShow"

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f090065

    const/4 v6, 0x1

    const v7, 0x7f09000b

    const/16 v9, 0x7d0

    .line 213
    const/4 v2, 0x0

    .line 216
    .local v2, dialog:Landroid/app/AlertDialog;
    packed-switch p3, :pswitch_data_1f0

    .line 506
    :goto_e
    :pswitch_e
    return-object v4

    .line 219
    :pswitch_f
    const v5, 0x7f090067

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v2

    .line 220
    invoke-static {v2, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog;Z)Landroid/app/AlertDialog;

    .line 221
    invoke-static {v2, v9, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->hide(Landroid/app/AlertDialog;ILcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)Landroid/app/AlertDialog;

    move-object v4, v2

    .line 222
    goto :goto_e

    .line 225
    :pswitch_1e
    const v5, 0x7f090068

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v2

    .line 226
    invoke-static {v2, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog;Z)Landroid/app/AlertDialog;

    .line 227
    invoke-static {v2, v9, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->hide(Landroid/app/AlertDialog;ILcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)Landroid/app/AlertDialog;

    move-object v4, v2

    .line 228
    goto :goto_e

    .line 231
    :pswitch_2d
    const v5, 0x7f090020

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v2

    .line 232
    invoke-static {v2, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog;Z)Landroid/app/AlertDialog;

    .line 233
    invoke-static {v2, v9, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->hide(Landroid/app/AlertDialog;ILcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)Landroid/app/AlertDialog;

    move-object v4, v2

    .line 234
    goto :goto_e

    .line 237
    :pswitch_3c
    const v5, 0x7f090021

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialog(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v2

    .line 238
    invoke-static {v2, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog;Z)Landroid/app/AlertDialog;

    .line 239
    invoke-static {v2, v9, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->hide(Landroid/app/AlertDialog;ILcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)Landroid/app/AlertDialog;

    move-object v4, v2

    .line 240
    goto :goto_e

    .line 243
    :pswitch_5e
    const v5, 0x7f09001a

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v2

    .line 244
    invoke-static {v2, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog;Z)Landroid/app/AlertDialog;

    .line 245
    invoke-static {v2, v9, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->hide(Landroid/app/AlertDialog;ILcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)Landroid/app/AlertDialog;

    move-object v4, v2

    .line 246
    goto :goto_e

    .line 249
    :pswitch_6d
    const v5, 0x7f090019

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v2

    .line 250
    invoke-static {v2, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog;Z)Landroid/app/AlertDialog;

    .line 251
    invoke-static {v2, v9, p2}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->hide(Landroid/app/AlertDialog;ILcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)Landroid/app/AlertDialog;

    move-object v4, v2

    .line 252
    goto :goto_e

    .line 255
    :pswitch_7c
    const v5, 0x7f090069

    const/16 v6, 0x3ee

    invoke-static {p0, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 257
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$4;

    invoke-direct {v5, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_e

    .line 276
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_93
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 277
    .local v4, loadingdialog:Landroid/app/ProgressDialog;
    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 278
    const v5, 0x7f09001b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 280
    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 281
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$5;

    invoke-direct {v5, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_e

    .line 293
    .end local v4           #loadingdialog:Landroid/app/ProgressDialog;
    :pswitch_b6
    const v5, 0x7f09001d

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 295
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09006c

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$6;

    invoke-direct {v6, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$7;

    invoke-direct {v5, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-static {v0, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog$Builder;Z)Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_e

    .line 322
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_d6
    invoke-static {p0, v8, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 324
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const/high16 v5, 0x7f03

    invoke-static {p0, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 326
    .local v3, dst_view:Landroid/view/View;
    const v5, 0x7f0c0001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$8;

    invoke-direct {v6}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$8;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v5, 0x7f0c0002

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$9;

    invoke-direct {v6}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$9;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 344
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$10;

    invoke-direct {v5, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$10;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    const v5, 0x7f090066

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$11;

    invoke-direct {v6, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$11;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-static {v0, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog$Builder;Z)Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_e

    .line 371
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v3           #dst_view:Landroid/view/View;
    :pswitch_120
    invoke-static {p0, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 373
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09002e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 374
    const v5, 0x1080027

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 375
    const/high16 v5, 0x7f03

    invoke-static {p0, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 377
    .local v1, confirm_view:Landroid/view/View;
    const/high16 v5, 0x7f0c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09002c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 379
    const v5, 0x7f0c0001

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$12;

    invoke-direct {v6}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$12;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const v5, 0x7f0c0002

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$13;

    invoke-direct {v6}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$13;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 397
    const v5, 0x7f09000a

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$14;

    invoke-direct {v6, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$14;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$15;

    invoke-direct {v5, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$15;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-static {v0, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog$Builder;Z)Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_e

    .line 425
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v1           #confirm_view:Landroid/view/View;
    :pswitch_186
    const v5, 0x7f090030

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 427
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09002f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 428
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$16;

    invoke-direct {v5, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$16;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 440
    const v5, 0x7f090066

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$17;

    invoke-direct {v6, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$17;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-static {v0, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog$Builder;Z)Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_e

    .line 457
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_1ac
    const v5, 0x7f09002a

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 459
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090029

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 461
    const v5, 0x7f09000a

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$18;

    invoke-direct {v6, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$18;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 473
    invoke-static {v0, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog$Builder;Z)Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_e

    .line 477
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_1ca
    const v5, 0x7f09002b

    invoke-static {p0, v5, p3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->makeBasicDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 479
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090029

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 481
    const v5, 0x7f09006c

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$19;

    invoke-direct {v6, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$19;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 492
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$20;

    invoke-direct {v5, p1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$20;-><init>(Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)V

    invoke-virtual {v0, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    invoke-static {v0, p4}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->show(Landroid/app/AlertDialog$Builder;Z)Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_e

    .line 216
    :pswitch_data_1f0
    .packed-switch 0x3e9
        :pswitch_f
        :pswitch_1e
        :pswitch_2d
        :pswitch_3c
        :pswitch_e
        :pswitch_7c
        :pswitch_93
        :pswitch_b6
        :pswitch_5e
        :pswitch_6d
        :pswitch_d6
        :pswitch_120
        :pswitch_186
        :pswitch_1ac
        :pswitch_1ca
    .end packed-switch
.end method
