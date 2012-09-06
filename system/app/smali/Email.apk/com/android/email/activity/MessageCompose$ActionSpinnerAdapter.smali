.class Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 1872
    const v0, 0x1090009

    const v1, 0x1020014

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.email.intent.action.REPLY"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.android.email.intent.action.REPLY_ALL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "com.android.email.intent.action.FORWARD"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 1876
    return-void
.end method

.method public static getAction(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 1906
    packed-switch p0, :pswitch_data_14

    .line 1914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action type for spinner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1908
    :pswitch_b
    const-string v0, "com.android.email.intent.action.REPLY"

    .line 1912
    :goto_d
    return-object v0

    .line 1910
    :pswitch_e
    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    goto :goto_d

    .line 1912
    :pswitch_11
    const-string v0, "com.android.email.intent.action.FORWARD"

    goto :goto_d

    .line 1906
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static getActionPosition(Ljava/lang/String;)I
    .registers 3
    .parameter "action"

    .prologue
    .line 1919
    const-string v0, "com.android.email.intent.action.REPLY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1920
    const/4 v0, 0x0

    .line 1924
    :goto_9
    return v0

    .line 1921
    :cond_a
    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1922
    const/4 v0, 0x1

    goto :goto_9

    .line 1923
    :cond_14
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1924
    const/4 v0, 0x2

    goto :goto_9

    .line 1926
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action type for spinner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDisplayValue(I)Ljava/lang/String;
    .registers 4
    .parameter "position"

    .prologue
    .line 1893
    packed-switch p1, :pswitch_data_30

    .line 1901
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action type for spinner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1895
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1899
    :goto_16
    return-object v0

    .line 1897
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1899
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1893
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_b
        :pswitch_17
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1880
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1881
    .local v0, result:Landroid/view/View;
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getDisplayValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1882
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1887
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1888
    .local v0, result:Landroid/view/View;
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getDisplayValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1889
    return-object v0
.end method
