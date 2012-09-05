.class public Lcom/google/googlenav/ui/view/android/i;
.super Lcom/google/googlenav/ui/view/android/ay;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private b:Landroid/widget/Spinner;

.field private final c:Ljava/util/Calendar;

.field private d:Ljava/text/DateFormat;

.field private k:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 4

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->k:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/i;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/i;->k:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/i;)Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/i;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->b:Landroid/widget/Spinner;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->d:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/i;->requestWindowFeature(I)Z

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->a:Lbb/f;

    iget-object v0, v0, Lbb/f;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/i;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method protected a(I)Landroid/app/Dialog;
    .registers 8

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_44

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    new-instance v0, Landroid/app/DatePickerDialog;

    sget-object v1, Lcom/google/googlenav/ui/view/android/i;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_5

    :pswitch_23
    new-instance v0, Landroid/app/TimePickerDialog;

    sget-object v1, Lcom/google/googlenav/ui/view/android/i;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/M;->c()Z

    move-result v2

    if-nez v2, :cond_42

    :goto_3d
    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_5

    :cond_42
    const/4 v5, 0x0

    goto :goto_3d

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
        :pswitch_23
    .end packed-switch
.end method

.method protected a(ILandroid/app/Dialog;)V
    .registers 7

    packed-switch p1, :pswitch_data_36

    :goto_3
    return-void

    :pswitch_4
    check-cast p2, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_3

    :pswitch_1f
    check-cast p2, Landroid/app/TimePickerDialog;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_3

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1f
    .end packed-switch
.end method

.method protected a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V
    .registers 6

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p3, :cond_e

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_14

    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13
.end method

.method protected c()Landroid/view/View;
    .registers 9

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_d1

    const v0, 0x7f03004a

    :goto_d
    sget-object v1, Lcom/google/googlenav/ui/view/android/i;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/i;->h()Lbb/i;

    move-result-object v2

    const v0, 0x7f0f02ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v2, Lbb/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    iget-object v3, v2, Lbb/i;->i:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->d:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->d:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->g:Lcom/google/googlenav/ui/view/android/aB;

    const v0, 0x7f0f012b

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/i;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/view/android/j;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/android/j;-><init>(Lcom/google/googlenav/ui/view/android/i;)V

    invoke-static {v0, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/aB;->a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->g:Lcom/google/googlenav/ui/view/android/aB;

    const v0, 0x7f0f012c

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/i;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/view/android/k;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/android/k;-><init>(Lcom/google/googlenav/ui/view/android/i;)V

    invoke-static {v0, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/aB;->a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->g:Lcom/google/googlenav/ui/view/android/aB;

    const v0, 0x7f0f012e

    iget-object v4, v2, Lbb/i;->k:Lcom/google/googlenav/ui/bl;

    iget-object v4, v4, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    new-instance v5, Lcom/google/googlenav/ui/view/android/l;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/view/android/l;-><init>(Lcom/google/googlenav/ui/view/android/i;)V

    invoke-static {v0, v4, v5, v1}, Lcom/google/googlenav/ui/view/android/aB;->a(ILjava/util/List;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->g:Lcom/google/googlenav/ui/view/android/aB;

    const v0, 0x7f0f012f

    iget-object v4, v2, Lbb/i;->l:Lcom/google/googlenav/ui/bl;

    iget-object v4, v4, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/i;->g:Lcom/google/googlenav/ui/view/android/aB;

    iget-object v6, v2, Lbb/i;->l:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v5

    invoke-static {v0, v4, v5, v1}, Lcom/google/googlenav/ui/view/android/aB;->a(ILjava/util/List;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->g:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aB;->a()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_a4

    const v0, 0x7f0f0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a4
    const v0, 0x7f0f0129

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->b:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->b:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/googlenav/ui/view/android/an;

    sget-object v5, Lcom/google/googlenav/ui/view/android/i;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v6, v2, Lbb/i;->h:Lbb/o;

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/i;->f:Lcom/google/googlenav/ui/p;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/googlenav/ui/view/android/an;-><init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->b:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/googlenav/ui/view/android/m;

    invoke-direct {v4, p0, v3}, Lcom/google/googlenav/ui/view/android/m;-><init>(Lcom/google/googlenav/ui/view/android/i;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->b:Landroid/widget/Spinner;

    iget v2, v2, Lbb/i;->j:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-object v1

    :cond_d1
    const v0, 0x7f030049

    goto/16 :goto_d
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_10
    return-void
.end method

.method public h()Lbb/i;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->a:Lbb/f;

    check-cast v0, Lbb/i;

    return-object v0
.end method

.method public synthetic i()Lbb/f;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/i;->h()Lbb/i;

    move-result-object v0

    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    const v1, 0x7f0f012b

    const v0, 0x7f0f012a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/view/android/i;->a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    const v1, 0x7f0f012c

    const v0, 0x7f0f012a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/i;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/view/android/i;->a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V

    return-void
.end method
