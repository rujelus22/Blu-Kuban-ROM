.class public LZH;
.super Ljava/lang/Object;
.source "PinUtilities.java"


# direct methods
.method public static a(Lcom/google/android/apps/docs/view/CustomButton;Lcom/google/android/apps/docs/view/ProgressButton;LTE;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_a

    if-eqz p1, :cond_28

    :cond_a
    move v0, v2

    :goto_b
    invoke-static {v0}, LafQ;->a(Z)V

    .line 31
    if-eqz p2, :cond_2a

    :goto_10
    invoke-static {v2}, LafQ;->a(Z)V

    .line 34
    if-eqz p0, :cond_2c

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/CustomButton;->getContext()Landroid/content/Context;

    .line 40
    :goto_18
    sget-object v0, LZI;->a:[I

    invoke-virtual {p2}, LTE;->a()LTD;

    move-result-object v2

    invoke-virtual {v2}, LTD;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_68

    .line 70
    :cond_27
    :goto_27
    return-void

    :cond_28
    move v0, v1

    .line 30
    goto :goto_b

    :cond_2a
    move v2, v1

    .line 31
    goto :goto_10

    .line 37
    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/apps/docs/view/ProgressButton;->getContext()Landroid/content/Context;

    goto :goto_18

    .line 42
    :pswitch_30
    if-eqz p0, :cond_35

    .line 43
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/view/CustomButton;->setVisibility(I)V

    .line 45
    :cond_35
    if-eqz p1, :cond_27

    .line 46
    invoke-virtual {p1, v3}, Lcom/google/android/apps/docs/view/ProgressButton;->setVisibility(I)V

    goto :goto_27

    .line 50
    :pswitch_3b
    if-eqz p0, :cond_40

    .line 51
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/view/CustomButton;->setVisibility(I)V

    .line 53
    :cond_40
    if-eqz p1, :cond_27

    .line 54
    invoke-virtual {p1, v1}, Lcom/google/android/apps/docs/view/ProgressButton;->setVisibility(I)V

    .line 56
    invoke-virtual {p2}, LTE;->a()J

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 57
    invoke-virtual {p2}, LTE;->b()J

    move-result-wide v2

    .line 59
    invoke-static {v0, v1}, LXR;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 60
    cmp-long v5, v2, v5

    if-lez v5, :cond_64

    .line 61
    long-to-double v0, v0

    const-wide/high16 v5, 0x4059

    mul-double/2addr v0, v5

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 62
    invoke-virtual {p1, v4, v0}, Lcom/google/android/apps/docs/view/ProgressButton;->setProgress(Ljava/lang/String;I)V

    goto :goto_27

    .line 64
    :cond_64
    invoke-virtual {p1, v4}, Lcom/google/android/apps/docs/view/ProgressButton;->setIndeterminate(Ljava/lang/String;)V

    goto :goto_27

    .line 40
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_30
        :pswitch_3b
    .end packed-switch
.end method
