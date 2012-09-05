.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientRangeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8095
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 8096
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 8098
    iput-object p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->items:Ljava/util/ArrayList;

    .line 8099
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->mcontext:Landroid/content/Context;

    .line 8100
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 8104
    move-object v3, p2

    .line 8105
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_15

    .line 8106
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->mcontext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 8108
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f0400b7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 8110
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;

    .line 8113
    .local v2, rp:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;
    if-eqz v2, :cond_44

    .line 8115
    const v5, 0x7f100276

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8116
    .local v1, rangeText:Landroid/widget/TextView;
    const v5, 0x7f100277

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 8118
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v1, :cond_3a

    .line 8119
    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;->getRecipientRange()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8121
    :cond_3a
    if-eqz v0, :cond_44

    .line 8122
    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;ILandroid/widget/RadioButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8129
    .end local v0           #check:Landroid/widget/RadioButton;
    .end local v1           #rangeText:Landroid/widget/TextView;
    :cond_44
    return-object v3
.end method
