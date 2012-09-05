.class public final Lq;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field private a:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lq;->a:Ljava/util/Calendar;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(IILjava/util/Locale;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq p3, v0, :cond_1c

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locale not yet supported in MyCalendar hack, only Locale.US is currently supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    .line 31
    :cond_1c
    packed-switch p2, :pswitch_data_170

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Calendar style value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    move v0, v2

    .line 48
    :goto_36
    sparse-switch p1, :sswitch_data_178

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field not yet supported in MyCalendar hack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 123
    :goto_50
    return-object v0

    :pswitch_51
    move v0, v2

    .line 39
    goto :goto_36

    .line 41
    :pswitch_53
    const/4 v0, 0x0

    .line 42
    goto :goto_36

    .line 51
    :sswitch_55
    iget-object v1, p0, Lq;->a:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 52
    packed-switch v1, :pswitch_data_186

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Calendar.DAY_OF_WEEK value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 70
    goto :goto_50

    .line 55
    :pswitch_77
    if-eqz v0, :cond_7c

    const-string v0, "Sun"

    goto :goto_50

    :cond_7c
    const-string v0, "Sunday"

    goto :goto_50

    .line 57
    :pswitch_7f
    if-eqz v0, :cond_84

    const-string v0, "Mon"

    goto :goto_50

    :cond_84
    const-string v0, "Monday"

    goto :goto_50

    .line 59
    :pswitch_87
    if-eqz v0, :cond_8c

    const-string v0, "Tue"

    goto :goto_50

    :cond_8c
    const-string v0, "Tuesday"

    goto :goto_50

    .line 61
    :pswitch_8f
    if-eqz v0, :cond_94

    const-string v0, "Wed"

    goto :goto_50

    :cond_94
    const-string v0, "Wednesday"

    goto :goto_50

    .line 63
    :pswitch_97
    if-eqz v0, :cond_9c

    const-string v0, "Thu"

    goto :goto_50

    :cond_9c
    const-string v0, "Thursday"

    goto :goto_50

    .line 65
    :pswitch_9f
    if-eqz v0, :cond_a4

    const-string v0, "Fri"

    goto :goto_50

    :cond_a4
    const-string v0, "Friday"

    goto :goto_50

    .line 67
    :pswitch_a7
    if-eqz v0, :cond_ac

    const-string v0, "Sat"

    goto :goto_50

    :cond_ac
    const-string v0, "Saturday"

    goto :goto_50

    .line 74
    :sswitch_af
    iget-object v1, p0, Lq;->a:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 75
    packed-switch v1, :pswitch_data_198

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Calendar.MONTH value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 104
    goto :goto_50

    .line 78
    :pswitch_d1
    if-eqz v0, :cond_d7

    const-string v0, "Jan"

    goto/16 :goto_50

    :cond_d7
    const-string v0, "January"

    goto/16 :goto_50

    .line 80
    :pswitch_db
    if-eqz v0, :cond_e1

    const-string v0, "Feb"

    goto/16 :goto_50

    :cond_e1
    const-string v0, "February"

    goto/16 :goto_50

    .line 82
    :pswitch_e5
    if-eqz v0, :cond_eb

    const-string v0, "Mar"

    goto/16 :goto_50

    :cond_eb
    const-string v0, "March"

    goto/16 :goto_50

    .line 84
    :pswitch_ef
    if-eqz v0, :cond_f5

    const-string v0, "Apr"

    goto/16 :goto_50

    :cond_f5
    const-string v0, "April"

    goto/16 :goto_50

    .line 86
    :pswitch_f9
    const-string v0, "May"

    goto/16 :goto_50

    .line 88
    :pswitch_fd
    if-eqz v0, :cond_103

    const-string v0, "Jun"

    goto/16 :goto_50

    :cond_103
    const-string v0, "June"

    goto/16 :goto_50

    .line 90
    :pswitch_107
    if-eqz v0, :cond_10d

    const-string v0, "Jul"

    goto/16 :goto_50

    :cond_10d
    const-string v0, "July"

    goto/16 :goto_50

    .line 92
    :pswitch_111
    if-eqz v0, :cond_117

    const-string v0, "Aug"

    goto/16 :goto_50

    :cond_117
    const-string v0, "August"

    goto/16 :goto_50

    .line 94
    :pswitch_11b
    if-eqz v0, :cond_121

    const-string v0, "Sep"

    goto/16 :goto_50

    :cond_121
    const-string v0, "September"

    goto/16 :goto_50

    .line 96
    :pswitch_125
    if-eqz v0, :cond_12b

    const-string v0, "Oct"

    goto/16 :goto_50

    :cond_12b
    const-string v0, "October"

    goto/16 :goto_50

    .line 98
    :pswitch_12f
    if-eqz v0, :cond_135

    const-string v0, "Nov"

    goto/16 :goto_50

    :cond_135
    const-string v0, "November"

    goto/16 :goto_50

    .line 100
    :pswitch_139
    if-eqz v0, :cond_13f

    const-string v0, "Dec"

    goto/16 :goto_50

    :cond_13f
    const-string v0, "December"

    goto/16 :goto_50

    .line 109
    :sswitch_143
    iget-object v0, p0, Lq;->a:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 110
    packed-switch v0, :pswitch_data_1b4

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Calendar.AM_PM value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 118
    goto/16 :goto_50

    .line 113
    :pswitch_167
    const-string v0, "AM"

    goto/16 :goto_50

    .line 115
    :pswitch_16b
    const-string v0, "PM"

    goto/16 :goto_50

    .line 31
    nop

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_51
        :pswitch_53
    .end packed-switch

    .line 48
    :sswitch_data_178
    .sparse-switch
        0x2 -> :sswitch_af
        0x7 -> :sswitch_55
        0x9 -> :sswitch_143
    .end sparse-switch

    .line 52
    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_77
        :pswitch_7f
        :pswitch_87
        :pswitch_8f
        :pswitch_97
        :pswitch_9f
        :pswitch_a7
    .end packed-switch

    .line 75
    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_db
        :pswitch_e5
        :pswitch_ef
        :pswitch_f9
        :pswitch_fd
        :pswitch_107
        :pswitch_111
        :pswitch_11b
        :pswitch_125
        :pswitch_12f
        :pswitch_139
    .end packed-switch

    .line 110
    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_167
        :pswitch_16b
    .end packed-switch
.end method
