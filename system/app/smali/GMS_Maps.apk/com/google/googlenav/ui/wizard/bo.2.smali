.class public Lcom/google/googlenav/ui/wizard/bO;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bM;

.field private b:Landroid/widget/Spinner;

.field private final c:Ljava/util/Calendar;

.field private d:Ljava/text/DateFormat;

.field private e:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/bM;)V
    .registers 3
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bO;->a:Lcom/google/googlenav/ui/wizard/bM;

    .line 188
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->e:Landroid/app/Dialog;

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bO;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bO;->e:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bO;)Ljava/util/Calendar;
    .registers 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->d:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 213
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_10

    .line 215
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bO;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 217
    :cond_10
    return-void
.end method

.method public N_()V
    .registers 2

    .prologue
    .line 204
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bO;->requestWindowFeature(I)Z

    .line 209
    :cond_a
    return-void
.end method

.method public O_()Z
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected a(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 336
    packed-switch p1, :pswitch_data_44

    .line 344
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 338
    :pswitch_6
    new-instance v0, Landroid/app/DatePickerDialog;

    sget-object v1, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_5

    .line 341
    :pswitch_23
    new-instance v0, Landroid/app/TimePickerDialog;

    sget-object v1, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/K;->c()Z

    move-result v2

    if-nez v2, :cond_42

    :goto_3d
    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_5

    :cond_42
    const/4 v5, 0x0

    goto :goto_3d

    .line 336
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
        :pswitch_23
    .end packed-switch
.end method

.method protected a(ILandroid/app/Dialog;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_36

    .line 360
    :goto_3
    return-void

    .line 350
    :pswitch_4
    check-cast p2, Landroid/app/DatePickerDialog;

    .line 351
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_3

    .line 355
    :pswitch_1f
    check-cast p2, Landroid/app/TimePickerDialog;

    .line 356
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_3

    .line 348
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1f
    .end packed-switch
.end method

.method protected a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 387
    if-eqz p3, :cond_e

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 388
    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :goto_13
    return-void

    .line 390
    :cond_14
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13
.end method

.method protected c()Landroid/view/View;
    .registers 10

    .prologue
    const/16 v3, 0x5be

    const/4 v8, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 224
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 225
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bO;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    :goto_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->a:Lcom/google/googlenav/ui/wizard/bM;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/bM;->a(Lcom/google/googlenav/ui/wizard/bM;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 232
    invoke-static {v8}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->d:Ljava/text/DateFormat;

    .line 233
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->d:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 236
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->h:Lcom/google/googlenav/ui/view/android/ak;

    const v0, 0x7f100156

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bO;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/bP;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/bP;-><init>(Lcom/google/googlenav/ui/wizard/bO;)V

    invoke-static {v0, v2, v3, v1}, Lcom/google/googlenav/ui/view/android/ak;->a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->h:Lcom/google/googlenav/ui/view/android/ak;

    const v0, 0x7f100157

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bO;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/bQ;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/bQ;-><init>(Lcom/google/googlenav/ui/wizard/bO;)V

    invoke-static {v0, v2, v3, v1}, Lcom/google/googlenav/ui/view/android/ak;->a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v2

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->h:Lcom/google/googlenav/ui/view/android/ak;

    const v0, 0x7f100159

    const/16 v3, 0x5f6

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/wizard/bR;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/bR;-><init>(Lcom/google/googlenav/ui/wizard/bO;)V

    invoke-static {v0, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/ak;->a(ILcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    .line 270
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->h:Lcom/google/googlenav/ui/view/android/ak;

    const v0, 0x7f10015a

    const/16 v3, 0x6b

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/wizard/bS;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/bS;-><init>(Lcom/google/googlenav/ui/wizard/bO;)V

    invoke-static {v0, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/ak;->a(ILcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    .line 279
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->h:Lcom/google/googlenav/ui/view/android/ak;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ak;->a()V

    .line 281
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 284
    const v0, 0x7f100033

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 285
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    :cond_a6
    const v0, 0x7f100154

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Landroid/widget/Spinner;

    .line 291
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bO;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0xe7

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x3c

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const/16 v7, 0x21c

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 299
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 300
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 301
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Landroid/widget/Spinner;

    new-instance v3, Lcom/google/googlenav/ui/wizard/bT;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/ui/wizard/bT;-><init>(Lcom/google/googlenav/ui/wizard/bO;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bO;->a:Lcom/google/googlenav/ui/wizard/bM;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/bM;->b(Lcom/google/googlenav/ui/wizard/bM;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 317
    return-object v1

    .line 227
    :cond_fb
    const v0, 0x7f100354

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 364
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 365
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 366
    const v1, 0x7f100156

    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bO;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/wizard/bO;->a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V

    .line 368
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 372
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 373
    const v1, 0x7f100157

    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bO;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/wizard/bO;->a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V

    .line 375
    return-void
.end method
