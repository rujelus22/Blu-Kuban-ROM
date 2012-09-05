.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxOrder;
.super Ljava/lang/Object;
.source "UinboxOrder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOrderFromEmail(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)I
    .registers 7
    .parameter "context"
    .parameter "values"
    .parameter "email"

    .prologue
    .line 147
    const/4 v0, -0x1

    .line 149
    .local v0, order:I
    const-string v2, "real_email_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 151
    .local v1, real_id:I
    if-eqz p0, :cond_1d

    invoke-static {p0, v1}, Lcom/sec/android/socialhub/util/SocialHubUtil;->isEASAccounts(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 153
    const/4 v0, 0x2

    .line 154
    const-string v2, "account"

    const-string v3, "eas"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_1c
    return v0

    .line 158
    :cond_1d
    const-string v2, "@gmail."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "@google."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "@googlemail."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 160
    :cond_35
    const/4 v0, 0x5

    .line 161
    const-string v2, "account"

    const-string v3, "gmail"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 163
    :cond_3e
    const-string v2, "@msn."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "@hotmail."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 165
    :cond_4e
    const/4 v0, 0x3

    .line 166
    const-string v2, "account"

    const-string v3, "msn"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 168
    :cond_57
    const-string v2, "@yahoo."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "@ymail."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 170
    :cond_67
    const/4 v0, 0x6

    .line 171
    const-string v2, "account"

    const-string v3, "yahoo"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 175
    :cond_70
    const/16 v0, 0x8

    .line 176
    const-string v2, "account"

    const-string v3, "other"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private static getOrderFromSevenEmail(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 91
    const/4 v0, -0x1

    .line 93
    .local v0, order:I
    const-string v1, "gmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 95
    const/4 v0, 0x5

    .line 114
    :goto_a
    return v0

    .line 97
    :cond_b
    const-string v1, "msn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 99
    const/4 v0, 0x3

    goto :goto_a

    .line 101
    :cond_15
    const-string v1, "yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 103
    const/4 v0, 0x6

    goto :goto_a

    .line 105
    :cond_1f
    const-string v1, "work"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 107
    const/4 v0, 0x7

    goto :goto_a

    .line 111
    :cond_29
    const/16 v0, 0x8

    goto :goto_a
.end method

.method private static getOrderFromSevenIM(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 119
    const/4 v0, -0x1

    .line 121
    .local v0, order:I
    const-string v1, "gmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 123
    const/16 v0, 0x9

    .line 142
    :goto_b
    return v0

    .line 125
    :cond_c
    const-string v1, "msn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 127
    const/4 v0, 0x4

    goto :goto_b

    .line 129
    :cond_16
    const-string v1, "yahoo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 131
    const/16 v0, 0xa

    goto :goto_b

    .line 133
    :cond_21
    const-string v1, "aol"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "aim"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 135
    :cond_31
    const/16 v0, 0xb

    goto :goto_b

    .line 139
    :cond_34
    const/16 v0, 0xb

    goto :goto_b
.end method

.method public static makeOrder(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "context"
    .parameter "value"
    .parameter "email"
    .parameter "email_type"
    .parameter "type"

    .prologue
    .line 50
    const/4 v0, -0x1

    .line 52
    .local v0, order:I
    packed-switch p4, :pswitch_data_48

    .line 78
    :goto_4
    if-lez v0, :cond_3e

    .line 80
    const-string v1, "_order"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "UinboxOrder"

    const-string v2, "makeOrder()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "order = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_29
    return-void

    .line 55
    :pswitch_2a
    const/4 v0, 0x1

    .line 56
    goto :goto_4

    .line 59
    :pswitch_2c
    invoke-static {p0, p1, p2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxOrder;->getOrderFromEmail(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    .line 60
    goto :goto_4

    .line 63
    :pswitch_31
    invoke-static {p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxOrder;->getOrderFromSevenEmail(Ljava/lang/String;)I

    move-result v0

    .line 64
    goto :goto_4

    .line 67
    :pswitch_36
    invoke-static {p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxOrder;->getOrderFromSevenIM(Ljava/lang/String;)I

    move-result v0

    .line 68
    goto :goto_4

    .line 71
    :pswitch_3b
    const/16 v0, 0xc

    .line 72
    goto :goto_4

    .line 85
    :cond_3e
    const-string v1, "UinboxOrder"

    const-string v2, "makeOrder()"

    const-string v3, "order is -1!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 52
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_3b
    .end packed-switch
.end method
