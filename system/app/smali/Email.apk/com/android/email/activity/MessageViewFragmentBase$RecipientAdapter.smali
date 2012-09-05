.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecipientAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private rpItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 6
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
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8206
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 8207
    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->rpItem:Ljava/util/ArrayList;

    .line 8208
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->mContext:Landroid/content/Context;

    .line 8209
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 8210
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "v"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 8216
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->rpItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    .line 8218
    .local v2, ri:Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;
    if-eqz v2, :cond_4a

    .line 8219
    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0802ef

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0802f0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 8221
    :cond_33
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040072

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .local v3, view:Landroid/view/View;
    move-object v1, v3

    .line 8222
    check-cast v1, Landroid/widget/TextView;

    .line 8223
    .local v1, itemView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8224
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 8300
    .end local v1           #itemView:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :goto_49
    return-object v3

    .line 8229
    :cond_4a
    if-eqz p2, :cond_52

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_106

    .line 8230
    :cond_52
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 8232
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;-><init>()V

    .line 8234
    .local v0, holder:Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;
    const v4, 0x7f100270

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->oneAddress:Landroid/widget/TextView;

    .line 8236
    const v4, 0x7f100272

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailName:Landroid/widget/TextView;

    .line 8237
    const v4, 0x7f100274

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailCheck:Landroid/widget/CheckBox;

    .line 8238
    const v4, 0x7f100273

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailAddress:Landroid/widget/TextView;

    .line 8239
    const v4, 0x7f100271

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->TwoTextView:Landroid/widget/LinearLayout;

    .line 8240
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8245
    :goto_9b
    if-eqz v2, :cond_103

    .line 8246
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8249
    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10d

    .line 8250
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->oneAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8251
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->TwoTextView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8252
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8253
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->oneAddress:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8263
    :goto_f1
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8281
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_103
    move-object v3, p2

    .line 8300
    goto/16 :goto_49

    .line 8242
    .end local v0           #holder:Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;
    :cond_106
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;
    goto :goto_9b

    .line 8256
    :cond_10d
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->oneAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8257
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->TwoTextView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8258
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8259
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailAddress:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8260
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_f1
.end method
