.class public final Lcom/dropbox/android/util/aX;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field protected static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, 0x7f090071

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    .line 98
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->a:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f09006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f090070

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->d:Lcom/dropbox/android/taskqueue/m;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f090072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->g:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f090073

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f090074

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->j:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f090075

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f090046

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->l:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f09011a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f090077

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->n:Lcom/dropbox/android/taskqueue/m;

    const v2, 0x7f090078

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static a(Ljava/util/Date;)J
    .registers 3
    .parameter

    .prologue
    .line 76
    if-eqz p0, :cond_e

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 79
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 81
    :goto_d
    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_d
.end method

.method public static a(J)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const-wide/32 v7, 0x36ee80

    const-wide/16 v5, 0x3c

    .line 36
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/32 v3, 0xea60

    div-long v3, p0, v3

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    div-long v3, p0, v3

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    div-long v1, p0, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_48

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p0, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_48
    return-object v0
.end method

.method public static a(Landroid/content/Context;IJ)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 87
    sub-long/2addr v2, p2

    .line 88
    cmp-long v4, v2, v0

    if-gez v4, :cond_10

    .line 92
    :goto_b
    invoke-static {p0, v0, v1, p1}, Lcom/dropbox/android/util/af;->b(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    move-wide v0, v2

    goto :goto_b
.end method

.method public static a(Lcom/dropbox/android/taskqueue/m;Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    if-nez p0, :cond_4

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/dropbox/android/util/aX;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Lcom/dropbox/android/util/Z;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/dropbox/android/util/Z;->c()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 29
    :cond_12
    const v0, 0x7f09000f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_19
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/dropbox/android/taskqueue/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 46
    sget-object v0, Lcom/dropbox/android/util/aZ;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 59
    const v0, 0x7f0900bc

    .line 63
    :goto_e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 66
    const v0, 0x7f09000e

    new-instance v2, Lcom/dropbox/android/util/aY;

    invoke-direct {v2}, Lcom/dropbox/android/util/aY;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 73
    return-void

    .line 48
    :pswitch_2b
    const v0, 0x7f0900bf

    .line 49
    goto :goto_e

    .line 51
    :pswitch_2f
    const v0, 0x7f0900be

    .line 52
    goto :goto_e

    .line 56
    :pswitch_33
    const v0, 0x7f0900bd

    .line 57
    goto :goto_e

    .line 46
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public static a(Landroid/widget/ListView;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 122
    if-ne v0, p1, :cond_10

    .line 123
    :goto_c
    invoke-virtual {p0, v0, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 124
    return-void

    .line 122
    :cond_10
    const/4 p2, 0x0

    goto :goto_c
.end method

.method private static a(II)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 127
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 131
    :cond_5
    :goto_5
    return v0

    .line 130
    :cond_6
    int-to-float v1, p1

    int-to-float v2, p0

    div-float/2addr v1, v2

    .line 131
    const/high16 v2, 0x4040

    cmpl-float v2, v1, v2

    if-gez v2, :cond_16

    const v2, 0x3eaaaaab

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    :cond_16
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static a(Landroid/graphics/Bitmap;)Z
    .registers 3
    .parameter

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/util/aX;->a(II)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 138
    if-eq v0, v2, :cond_d

    if-ne v1, v2, :cond_f

    .line 139
    :cond_d
    const/4 v0, 0x0

    .line 141
    :goto_e
    return v0

    :cond_f
    invoke-static {v0, v1}, Lcom/dropbox/android/util/aX;->a(II)Z

    move-result v0

    goto :goto_e
.end method
