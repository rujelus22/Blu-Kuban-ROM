.class public Lcom/google/android/apps/googlevoice/ContactActionAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactActionAdapter.java"


# static fields
.field public static final ACTION_CALL:I = 0x0

.field public static final ACTION_CONTACT:I = 0x2

.field public static final ACTION_SMS:I = 0x1


# instance fields
.field private actions:[I

.field private contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/core/ContactInfo;Z)V
    .registers 4
    .parameter "contactInfo"
    .parameter "hasTelephony"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 30
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->initActions(Z)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->actions:[I

    .line 31
    return-void
.end method

.method private initActions(Z)[I
    .registers 3
    .parameter "hasTelephony"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasUsablePhoneNumber()Z

    move-result v0

    if-nez v0, :cond_c

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 40
    :goto_b
    return-object v0

    .line 37
    :cond_c
    if-eqz p1, :cond_15

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    goto :goto_b

    .line 40
    :cond_15
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    goto :goto_b

    .line 38
    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_26
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->actions:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .registers 3
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->actions:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->actions:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "reuseView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 64
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$layout;->action_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .local v0, iconView:Landroid/widget/ImageView;
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->primary:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, primaryText:Landroid/widget/TextView;
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->secondary:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, secondaryText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->actions:[I

    aget v4, v4, p1

    packed-switch v4, :pswitch_data_90

    .line 96
    :goto_31
    return-object v3

    .line 72
    :pswitch_32
    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_call:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$string;->phonecall_action_call:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->numberString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_31

    .line 80
    :pswitch_60
    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_sms:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    sget v4, Lcom/google/android/apps/googlevoice/R$string;->phonecall_action_sms:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 82
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_31

    .line 86
    :pswitch_6e
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/ContactActionAdapter;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasLocalContact()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 87
    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_view_contact:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    sget v4, Lcom/google/android/apps/googlevoice/R$string;->phonecall_action_view_contact:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 93
    :goto_80
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_31

    .line 90
    :cond_84
    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_add_contact:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    sget v4, Lcom/google/android/apps/googlevoice/R$string;->phonecall_action_add_contact:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_80

    .line 70
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_32
        :pswitch_60
        :pswitch_6e
    .end packed-switch
.end method
