.class Lcom/estrongs/android/pop/view/lm;
.super Lcom/estrongs/android/pop/view/lv;


# instance fields
.field a:I

.field b:I

.field c:Ljava/util/Calendar;

.field final synthetic d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

.field private k:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Landroid/widget/Spinner;I)V
    .registers 6

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/view/lv;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Landroid/widget/Spinner;I)V

    const/16 v0, 0x7db

    iput v0, p0, Lcom/estrongs/android/pop/view/lm;->k:I

    iput v1, p0, Lcom/estrongs/android/pop/view/lm;->a:I

    iput v1, p0, Lcom/estrongs/android/pop/view/lm;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/lm;->c:Ljava/util/Calendar;

    return-void
.end method

.method private b()Ljava/util/Calendar;
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->c:Ljava/util/Calendar;

    if-nez v0, :cond_33

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/lm;->c:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/lm;->k:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/lm;->a:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/lm;->b:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->c:Ljava/util/Calendar;

    iget v1, p0, Lcom/estrongs/android/pop/view/lm;->k:I

    iget v2, p0, Lcom/estrongs/android/pop/view/lm;->a:I

    iget v3, p0, Lcom/estrongs/android/pop/view/lm;->b:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    :cond_33
    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->c:Ljava/util/Calendar;

    return-object v0
.end method


# virtual methods
.method a(ILjava/lang/Object;)V
    .registers 11

    const/4 v5, 0x5

    const/4 v4, 0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x6

    const-wide/32 v6, 0x5265c00

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/lm;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_131

    iput p1, p0, Lcom/estrongs/android/pop/view/lm;->i:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v2, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    iput-wide v2, v0, Lcom/estrongs/android/pop/l;->b:J

    if-eqz p1, :cond_46

    if-ne p1, v4, :cond_47

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    :cond_46
    :goto_46
    return-void

    :cond_47
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_46

    :cond_6c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9e

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_46

    :cond_9e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    goto/16 :goto_46

    :cond_d0
    if-ne p1, v5, :cond_101

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->a:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    goto/16 :goto_46

    :cond_101
    if-ne p1, v1, :cond_12a

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->a:J

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->b:J

    goto/16 :goto_46

    :cond_12a
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/view/lm;->a(Ljava/lang/String;)V

    goto/16 :goto_46

    :cond_131
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "search_days"

    invoke-static {v2}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    const v2, 0x7f090195

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16d

    const/16 v3, 0x2da

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/lm;->a([Ljava/lang/String;Ljava/lang/String;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_46
.end method

.method protected a(ILjava/lang/String;ILjava/lang/String;)V
    .registers 12

    const-wide/32 v5, 0x5265c00

    if-lez p1, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    int-to-long v3, p1

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->b:J

    :cond_18
    if-lez p3, :cond_2d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    int-to-long v3, p3

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/estrongs/android/pop/l;->a:J

    :cond_2d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/view/lv;->a(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/lm;->b(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->a:J

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/lm;->b(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->b:J

    :goto_3c
    return-void

    :cond_3d
    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/lm;->b(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->b:J

    goto :goto_3c

    :cond_5d
    iget-object v1, p0, Lcom/estrongs/android/pop/view/lm;->d:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/lm;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/lm;->b(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/android/pop/l;->a:J

    goto :goto_3c
.end method

.method b(Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11

    :cond_10
    :goto_10
    return-wide v0

    :cond_11
    const-string v2, "search_days"

    invoke-static {v2}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_26

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/a/h;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_10

    :cond_26
    const-string v2, "Weeks"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/a/h;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_10
.end method
