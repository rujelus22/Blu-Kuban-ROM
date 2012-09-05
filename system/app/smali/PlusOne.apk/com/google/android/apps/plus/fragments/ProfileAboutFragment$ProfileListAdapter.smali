.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFullName:Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "inflater"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    .line 233
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mContext:Landroid/content/Context;

    .line 234
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 235
    return-void
.end method

.method private bindAddressView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;)V
    .registers 12
    .parameter "view"
    .parameter "item"

    .prologue
    .line 772
    iget-object v6, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    check-cast v6, Lcom/google/wireless/contacts/proto/Contact$Address;

    .line 774
    .local v6, address:Lcom/google/wireless/contacts/proto/Contact$Address;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 775
    const v7, 0x7f0701fc

    .line 786
    .local v7, labelResId:I
    :goto_f
    const v3, 0x7f020114

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindDataView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;ILjava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void

    .line 777
    .end local v7           #labelResId:I
    :cond_23
    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Contact$Address;->getType()Ljava/lang/String;

    move-result-object v8

    .line 778
    .local v8, type:Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 779
    const v7, 0x7f0701fa

    .restart local v7       #labelResId:I
    goto :goto_f

    .line 780
    .end local v7           #labelResId:I
    :cond_33
    const-string v0, "2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 781
    const v7, 0x7f0701fb

    .restart local v7       #labelResId:I
    goto :goto_f

    .line 783
    .end local v7           #labelResId:I
    :cond_3f
    const v7, 0x7f0701fc

    .restart local v7       #labelResId:I
    goto :goto_f
.end method

.method private bindBioView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;)V
    .registers 11
    .parameter "view"
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    .line 702
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    .line 703
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;->value:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    invoke-static {v3, v4, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    .line 704
    .local v1, text:Landroid/text/Spanned;
    :goto_12
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    if-lez v3, :cond_2e

    invoke-interface {v1, v7}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 705
    const/4 v3, 0x1

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #text:Landroid/text/Spanned;
    check-cast v1, Landroid/text/Spanned;

    .restart local v1       #text:Landroid/text/Spanned;
    goto :goto_12

    .line 707
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    if-lez v3, :cond_51

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 708
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v7, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #text:Landroid/text/Spanned;
    check-cast v1, Landroid/text/Spanned;

    .restart local v1       #text:Landroid/text/Spanned;
    goto :goto_2e

    .line 710
    :cond_51
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {v2}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 713
    .local v0, mm:Landroid/text/method/MovementMethod;
    instance-of v3, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v3, :cond_66

    .line 714
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 716
    :cond_66
    return-void
.end method

.method private bindEmailView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;)V
    .registers 11
    .parameter "view"
    .parameter "item"

    .prologue
    const v1, 0x7f0701d7

    .line 722
    iget-object v6, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    check-cast v6, Lcom/google/wireless/contacts/proto/Contact$Email;

    .line 723
    .local v6, email:Lcom/google/wireless/contacts/proto/Contact$Email;
    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Contact$Email;->getType()Ljava/lang/String;

    move-result-object v7

    .line 725
    .local v7, type:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 726
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 733
    .local v5, typeString:Ljava/lang/String;
    :cond_19
    :goto_19
    const v3, 0x7f020115

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindDataView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;ILjava/lang/String;Ljava/lang/String;)V

    .line 734
    return-void

    .line 728
    .end local v5           #typeString:Ljava/lang/String;
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForEmailType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 729
    .restart local v5       #typeString:Ljava/lang/String;
    if-nez v5, :cond_19

    .line 730
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_19
.end method

.method private bindLinkView(Landroid/view/View;Lcom/google/wireless/contacts/proto/Profile$Link;Z)V
    .registers 12
    .parameter "view"
    .parameter "link"
    .parameter "firstItem"

    .prologue
    const/4 v7, 0x0

    .line 849
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, domain:Ljava/lang/String;
    const/4 v0, 0x0

    .line 851
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$900(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 852
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFavicons:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$900(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 853
    .local v2, imageData:[B
    if-eqz v2, :cond_21

    .line 854
    array-length v5, v2

    invoke-static {v2, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 857
    .end local v2           #imageData:[B
    :cond_21
    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 858
    const v5, 0x1020014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Link;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    const v5, 0x1020015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 860
    .local v3, type:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v5

    if-eqz v5, :cond_6b

    if-eqz p3, :cond_6b

    .line 861
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    const v6, 0x7f0701fd

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, typeText:Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 863
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Link;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->setupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 869
    .end local v4           #typeText:Ljava/lang/String;
    :goto_6a
    return-void

    .line 866
    :cond_6b
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Link;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6a
.end method

.method private bindLocationView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;)V
    .registers 5
    .parameter "view"
    .parameter "item"

    .prologue
    .line 832
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;->current:Z

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 834
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 836
    return-void

    .line 832
    :cond_25
    const/4 v1, 0x4

    goto :goto_e
.end method

.method private bindNoteView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;)V
    .registers 7
    .parameter "view"
    .parameter "item"

    .prologue
    const v3, 0x7f070263

    const v2, 0x7f070262

    .line 875
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 876
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isMyProfile()Z
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1000(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 877
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 878
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 883
    :goto_1d
    return-void

    .line 880
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 881
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1d
.end method

.method private bindPhoneView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;)V
    .registers 16
    .parameter "view"
    .parameter "item"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 740
    iget-object v7, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    check-cast v7, Lcom/google/wireless/contacts/proto/Contact$Phone;

    .line 741
    .local v7, phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhone()Ljava/lang/String;

    move-result-object v8

    .line 742
    .local v8, phoneNumber:Ljava/lang/String;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, formattedNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 744
    .local v5, typeString:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getType()Ljava/lang/String;

    move-result-object v10

    .line 745
    .local v10, type:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 746
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForPlusPagePhoneType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 750
    :goto_22
    if-nez v5, :cond_2d

    .line 751
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    const v1, 0x7f0701d8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 753
    :cond_2d
    const v3, 0x7f020116

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindDataView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;ILjava/lang/String;Ljava/lang/String;)V

    .line 754
    const v0, 0x7f0d0159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 755
    .local v9, sendSmsButton:Landroid/view/View;
    const v0, 0x7f0d015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 756
    .local v6, divider:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isSmsIntentRegistered()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 757
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 758
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 759
    invoke-virtual {v9, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 760
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    invoke-virtual {v9, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 766
    :goto_5d
    return-void

    .line 748
    .end local v6           #divider:Landroid/view/View;
    .end local v9           #sendSmsButton:Landroid/view/View;
    :cond_5e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForPhoneType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    .line 763
    .restart local v6       #divider:Landroid/view/View;
    .restart local v9       #sendSmsButton:Landroid/view/View;
    :cond_65
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 764
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5d
.end method

.method private bindSectionHeader(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;)V
    .registers 5
    .parameter "view"
    .parameter "sectionHeader"

    .prologue
    .line 694
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/SectionHeaderView;

    iget v1, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;->resourceId:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SectionHeaderView;->setText(I)V

    .line 695
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    iget v1, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;->resourceId:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 696
    return-void
.end method

.method private getLabeledStringView(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "parent"
    .parameter "view"
    .parameter "layoutResId"
    .parameter "labelResId"
    .parameter "item"

    .prologue
    .line 817
    if-nez p3, :cond_9

    .line 818
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 820
    :cond_9
    const v2, 0x1020014

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 821
    .local v0, text1:Landroid/widget/TextView;
    iget-object v2, p6, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    const v2, 0x1020015

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 823
    .local v1, text2:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v2, p5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v2, p6, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v3, p5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v2, v3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->setupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 825
    return-object p3
.end method

.method private setupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "view"
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .local v0, contentDescription:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_15

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 934
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 935
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    :cond_15
    if-eqz p2, :cond_20

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 938
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 940
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 941
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method protected bindDataView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "view"
    .parameter "item"
    .parameter "iconResId"
    .parameter "text"
    .parameter "label"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 793
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 794
    .local v0, iconView:Landroid/widget/ImageView;
    iget-boolean v3, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->firstItem:Z

    if-eqz v3, :cond_54

    .line 795
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 799
    :goto_13
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 800
    .local v1, text1:Landroid/widget/TextView;
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 802
    .local v2, text2:Landroid/widget/TextView;
    invoke-virtual {p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    invoke-direct {p0, p1, p4, p5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->setupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 804
    iget-boolean v3, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->showDivider:Z

    if-eqz v3, :cond_53

    .line 805
    const v3, 0x7f0d0157

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-boolean v3, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->showLongDivider:Z

    if-eqz v3, :cond_59

    move v3, v4

    :goto_42
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 807
    const v3, 0x7f0d0158

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v6, p2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->showLongDivider:Z

    if-eqz v6, :cond_5b

    :goto_50
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 810
    :cond_53
    return-void

    .line 797
    .end local v1           #text1:Landroid/widget/TextView;
    .end local v2           #text2:Landroid/widget/TextView;
    :cond_54
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    .restart local v1       #text1:Landroid/widget/TextView;
    .restart local v2       #text2:Landroid/widget/TextView;
    :cond_59
    move v3, v5

    .line 805
    goto :goto_42

    :cond_5b
    move v5, v4

    .line 807
    goto :goto_50
.end method

.method public bindPlacesMapView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$PlacesMapItem;)V
    .registers 5
    .parameter "view"
    .parameter "placesMapItem"

    .prologue
    .line 842
    const v0, 0x7f0d015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$800(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 843
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .registers 13
    .parameter "position"

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->getItemViewType(I)I

    move-result v7

    packed-switch v7, :pswitch_data_116

    .line 926
    :cond_7
    :pswitch_7
    const/4 v7, 0x0

    :goto_8
    return-object v7

    .line 892
    :pswitch_9
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    iget-object v1, v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    check-cast v1, Lcom/google/wireless/contacts/proto/Contact$Email;

    .line 893
    .local v1, email:Lcom/google/wireless/contacts/proto/Contact$Email;
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v5

    .line 894
    .local v5, parsed:[Landroid/text/util/Rfc822Token;
    if-eqz v5, :cond_7

    array-length v7, v5

    if-lez v7, :cond_7

    .line 895
    const/4 v7, 0x0

    aget-object v2, v5, v7

    .line 896
    .local v2, formattedEmail:Landroid/text/util/Rfc822Token;
    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3c

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mFullName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 898
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mFullName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/text/util/Rfc822Token;->setName(Ljava/lang/String;)V

    .line 900
    :cond_3c
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mailto:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_8

    .line 906
    .end local v1           #email:Lcom/google/wireless/contacts/proto/Contact$Email;
    .end local v2           #formattedEmail:Landroid/text/util/Rfc822Token;
    .end local v5           #parsed:[Landroid/text/util/Rfc822Token;
    :pswitch_63
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    iget-object v6, v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    check-cast v6, Lcom/google/wireless/contacts/proto/Contact$Phone;

    .line 907
    .local v6, phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhone()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_8

    .line 911
    .end local v6           #phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    :pswitch_97
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    iget-object v0, v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Address;

    .line 913
    .local v0, address:Lcom/google/wireless/contacts/proto/Contact$Address;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_8

    .line 917
    .end local v0           #address:Lcom/google/wireless/contacts/proto/Contact$Address;
    :pswitch_cb
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;

    .line 918
    .local v4, location:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;->address:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_8

    .line 922
    .end local v4           #location:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;
    :pswitch_f9
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    iget-object v3, v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    check-cast v3, Lcom/google/wireless/contacts/proto/Profile$Link;

    .line 923
    .local v3, link:Lcom/google/wireless/contacts/proto/Profile$Link;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Profile$Link;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_8

    .line 890
    :pswitch_data_116
    .packed-switch 0x3
        :pswitch_9
        :pswitch_63
        :pswitch_97
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_cb
        :pswitch_7
        :pswitch_f9
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 510
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 7
    .parameter "position"

    .prologue
    .line 526
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;

    .line 527
    .local v0, item:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
    instance-of v2, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Header;

    if-eqz v2, :cond_e

    .line 528
    const/4 v2, 0x0

    .line 549
    .end local v0           #item:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
    :goto_d
    return v2

    .line 529
    .restart local v0       #item:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
    :cond_e
    instance-of v2, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    if-eqz v2, :cond_14

    .line 530
    const/4 v2, 0x1

    goto :goto_d

    .line 531
    :cond_14
    instance-of v2, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    if-eqz v2, :cond_1d

    .line 532
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    .end local v0           #item:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
    iget v2, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;->viewType:I

    goto :goto_d

    .line 533
    .restart local v0       #item:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
    :cond_1d
    instance-of v2, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    if-eqz v2, :cond_3f

    move-object v2, v0

    .line 534
    check-cast v2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    iget-object v1, v2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    .line 535
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/wireless/contacts/proto/Contact$Email;

    if-eqz v2, :cond_2c

    .line 536
    const/4 v2, 0x3

    goto :goto_d

    .line 537
    :cond_2c
    instance-of v2, v1, Lcom/google/wireless/contacts/proto/Contact$Phone;

    if-eqz v2, :cond_32

    .line 538
    const/4 v2, 0x4

    goto :goto_d

    .line 539
    :cond_32
    instance-of v2, v1, Lcom/google/wireless/contacts/proto/Contact$Address;

    if-eqz v2, :cond_38

    .line 540
    const/4 v2, 0x5

    goto :goto_d

    .line 541
    :cond_38
    instance-of v2, v1, Lcom/google/wireless/contacts/proto/Profile$Link;

    if-eqz v2, :cond_54

    .line 542
    const/16 v2, 0xc

    goto :goto_d

    .line 544
    .end local v1           #value:Ljava/lang/Object;
    :cond_3f
    instance-of v2, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;

    if-eqz v2, :cond_46

    .line 545
    const/16 v2, 0xa

    goto :goto_d

    .line 546
    :cond_46
    instance-of v2, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$PlacesMapItem;

    if-eqz v2, :cond_4d

    .line 547
    const/16 v2, 0xb

    goto :goto_d

    .line 548
    :cond_4d
    instance-of v2, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;

    if-eqz v2, :cond_54

    .line 549
    const/16 v2, 0xd

    goto :goto_d

    .line 552
    :cond_54
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v4, 0x7f030082

    const v10, 0x7f03007d

    const/4 v9, 0x0

    .line 560
    move-object v3, p2

    .line 561
    .local v3, view:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;

    .line 562
    .local v8, item:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_122

    .line 659
    :goto_17
    const v0, 0x7f0d0069

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 660
    .local v7, divider:Landroid/view/View;
    if-eqz v7, :cond_28

    .line 661
    iget-boolean v0, v8, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;->showDivider:Z

    if-eqz v0, :cond_11e

    move v0, v9

    :goto_25
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    move-object v0, v3

    .line 663
    .end local v7           #divider:Landroid/view/View;
    :goto_29
    return-object v0

    .line 564
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$700(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;

    move-result-object v0

    goto :goto_29

    .line 567
    :pswitch_31
    if-nez v3, :cond_3c

    .line 568
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030084

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_3c
    move-object v0, v8

    .line 570
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindSectionHeader(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;)V

    goto :goto_17

    .line 574
    :pswitch_43
    if-nez v3, :cond_4e

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030079

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_4e
    move-object v0, v8

    .line 577
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindBioView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;)V

    goto :goto_17

    .line 581
    :pswitch_55
    if-nez v3, :cond_60

    .line 582
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030083

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_60
    move-object v0, v8

    .line 585
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindEmailView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;)V

    goto :goto_17

    .line 589
    :pswitch_67
    if-nez v3, :cond_72

    .line 590
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030080

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_72
    move-object v0, v8

    .line 592
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindPhoneView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;)V

    goto :goto_17

    .line 596
    :pswitch_79
    if-nez v3, :cond_84

    .line 597
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03007e

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_84
    move-object v0, v8

    .line 600
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindAddressView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;)V

    goto :goto_17

    .line 604
    :pswitch_8b
    const v5, 0x7f0701f0

    move-object v6, v8

    check-cast v6, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->getLabeledStringView(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;)Landroid/view/View;

    move-result-object v3

    .line 607
    goto/16 :goto_17

    .line 610
    :pswitch_9a
    const v5, 0x7f0701f3

    move-object v6, v8

    check-cast v6, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->getLabeledStringView(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;)Landroid/view/View;

    move-result-object v3

    .line 613
    goto/16 :goto_17

    .line 616
    :pswitch_a9
    const v5, 0x7f0701f5

    move-object v6, v8

    check-cast v6, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->getLabeledStringView(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;)Landroid/view/View;

    move-result-object v3

    .line 619
    goto/16 :goto_17

    .line 622
    :pswitch_b9
    const v5, 0x7f0701f6

    move-object v6, v8

    check-cast v6, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->getLabeledStringView(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;)Landroid/view/View;

    move-result-object v3

    .line 625
    goto/16 :goto_17

    .line 628
    :pswitch_c9
    if-nez v3, :cond_d4

    .line 629
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_d4
    move-object v0, v8

    .line 631
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$PlacesMapItem;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindPlacesMapView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$PlacesMapItem;)V

    goto/16 :goto_17

    .line 635
    :pswitch_dc
    if-nez v3, :cond_e7

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03007c

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_e7
    move-object v0, v8

    .line 639
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindLocationView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;)V

    goto/16 :goto_17

    .line 643
    :pswitch_ef
    if-nez v3, :cond_fa

    .line 644
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03007b

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_fa
    move-object v0, v8

    .line 646
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Link;

    move-object v1, v8

    check-cast v1, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    iget-boolean v1, v1, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->firstItem:Z

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindLinkView(Landroid/view/View;Lcom/google/wireless/contacts/proto/Profile$Link;Z)V

    goto/16 :goto_17

    .line 651
    :pswitch_10b
    if-nez v3, :cond_116

    .line 652
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03007f

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :cond_116
    move-object v0, v8

    .line 654
    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->bindNoteView(Landroid/view/View;Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;)V

    goto/16 :goto_17

    .line 661
    .restart local v7       #divider:Landroid/view/View;
    :cond_11e
    const/4 v0, 0x4

    goto/16 :goto_25

    .line 562
    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_31
        :pswitch_43
        :pswitch_55
        :pswitch_67
        :pswitch_79
        :pswitch_8b
        :pswitch_9a
        :pswitch_a9
        :pswitch_b9
        :pswitch_dc
        :pswitch_c9
        :pswitch_ef
        :pswitch_10b
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 518
    const/16 v0, 0xe

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 687
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 685
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 679
    nop

    :pswitch_data_c
    .packed-switch 0x3
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public setProfileData(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 34
    .parameter "data"

    .prologue
    .line 241
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 242
    .local v5, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-object/from16 v22, v0

    .line 244
    .local v22, profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    const/16 v26, 0x0

    .line 245
    .local v26, tagLine:Ljava/lang/String;
    if-eqz v22, :cond_26

    .line 246
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mFullName:Ljava/lang/String;

    .line 247
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasTagline()Z

    move-result v28

    if-eqz v28, :cond_26

    .line 248
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v26

    .line 251
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mFullName:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_3a

    if-eqz v5, :cond_3a

    .line 252
    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mFullName:Ljava/lang/String;

    .line 255
    :cond_3a
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1c5

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mTagLineView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/widget/TextView;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mTagLineView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/widget/TextView;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :goto_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v28

    if-eqz v28, :cond_1ef

    .line 263
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1de

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v28

    if-lez v28, :cond_1de

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusOneView:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$300(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;

    move-result-object v28

    const v29, 0x7f0d0156

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 265
    .local v7, countText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->getShortPlusOnesString(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusOneView:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$300(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;

    move-result-object v28

    const v29, 0x7f0d0154

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 269
    .local v20, plusOneIcon:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusOneView:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$300(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;

    move-result-object v28

    const v29, 0x7f0d0155

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 270
    .local v19, plusOneByMeIcon:Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v21

    .line 271
    .local v21, plusonedByMe:Z
    if-eqz v21, :cond_1d6

    const/16 v28, 0x8

    :goto_d8
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    if-eqz v21, :cond_1da

    const/16 v28, 0x0

    :goto_e3
    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusOneView:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$300(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .end local v7           #countText:Landroid/widget/TextView;
    .end local v19           #plusOneByMeIcon:Landroid/view/View;
    .end local v20           #plusOneIcon:Landroid/view/View;
    .end local v21           #plusonedByMe:Z
    :goto_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Header;

    const/16 v30, 0x0

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Header;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    if-eqz v22, :cond_153

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBio()Z

    move-result v28

    if-eqz v28, :cond_153

    .line 286
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getBio()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, bio:Ljava/lang/String;
    if-eqz v4, :cond_153

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_153

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    const v30, 0x7f070176

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    const/16 v30, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v4           #bio:Ljava/lang/String;
    :cond_153
    if-eqz v5, :cond_200

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailCount()I

    move-result v28

    if-gtz v28, :cond_167

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhoneCount()I

    move-result v28

    if-gtz v28, :cond_167

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAddressCount()I

    move-result v28

    if-lez v28, :cond_200

    :cond_167
    const/4 v11, 0x1

    .line 298
    .local v11, hasContactInformation:Z
    :goto_168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v28

    if-nez v28, :cond_203

    if-eqz v11, :cond_203

    const/16 v23, 0x1

    .line 299
    .local v23, requiresFootnote:Z
    :goto_178
    if-eqz v11, :cond_18d

    .line 300
    if-eqz v23, :cond_207

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    const v30, 0x7f070178

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_18d
    :goto_18d
    if-eqz v5, :cond_222

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailCount()I

    move-result v28

    if-lez v28, :cond_222

    .line 308
    const/4 v9, 0x1

    .line 309
    .local v9, firstItem:Z
    const/4 v15, 0x0

    .line 310
    .local v15, lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailList()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_19f
    :goto_19f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_21a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/contacts/proto/Contact$Email;

    .line 311
    .local v8, email:Lcom/google/wireless/contacts/proto/Contact$Email;
    invoke-virtual {v8}, Lcom/google/wireless/contacts/proto/Contact$Email;->hasEmail()Z

    move-result v28

    if-eqz v28, :cond_19f

    .line 312
    new-instance v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    .end local v15           #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    invoke-direct {v15, v8}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;-><init>(Ljava/lang/Object;)V

    .line 313
    .restart local v15       #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    iput-boolean v9, v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->firstItem:Z

    .line 314
    const/4 v9, 0x0

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19f

    .line 259
    .end local v8           #email:Lcom/google/wireless/contacts/proto/Contact$Email;
    .end local v9           #firstItem:Z
    .end local v11           #hasContactInformation:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    .end local v23           #requiresFootnote:Z
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mTagLineView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/widget/TextView;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_60

    .line 271
    .restart local v7       #countText:Landroid/widget/TextView;
    .restart local v19       #plusOneByMeIcon:Landroid/view/View;
    .restart local v20       #plusOneIcon:Landroid/view/View;
    .restart local v21       #plusonedByMe:Z
    :cond_1d6
    const/16 v28, 0x0

    goto/16 :goto_d8

    .line 272
    :cond_1da
    const/16 v28, 0x8

    goto/16 :goto_e3

    .line 275
    .end local v7           #countText:Landroid/widget/TextView;
    .end local v19           #plusOneByMeIcon:Landroid/view/View;
    .end local v20           #plusOneIcon:Landroid/view/View;
    .end local v21           #plusonedByMe:Z
    :cond_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusOneView:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$300(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f9

    .line 278
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusOneView:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$300(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f9

    .line 293
    :cond_200
    const/4 v11, 0x0

    goto/16 :goto_168

    .line 298
    .restart local v11       #hasContactInformation:Z
    :cond_203
    const/16 v23, 0x0

    goto/16 :goto_178

    .line 303
    .restart local v23       #requiresFootnote:Z
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    const v30, 0x7f070177

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18d

    .line 318
    .restart local v9       #firstItem:Z
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v15       #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    :cond_21a
    if-eqz v15, :cond_222

    .line 319
    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->showLongDivider:Z

    .line 323
    .end local v9           #firstItem:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    :cond_222
    if-eqz v5, :cond_264

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhoneCount()I

    move-result v28

    if-lez v28, :cond_264

    .line 324
    const/4 v9, 0x1

    .line 325
    .restart local v9       #firstItem:Z
    const/4 v15, 0x0

    .line 326
    .restart local v15       #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhoneList()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_234
    :goto_234
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_25c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/wireless/contacts/proto/Contact$Phone;

    .line 327
    .local v18, phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/contacts/proto/Contact$Phone;->hasPhone()Z

    move-result v28

    if-eqz v28, :cond_234

    .line 328
    new-instance v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    .end local v15           #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;-><init>(Ljava/lang/Object;)V

    .line 329
    .restart local v15       #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    iput-boolean v9, v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->firstItem:Z

    .line 330
    const/4 v9, 0x0

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_234

    .line 334
    .end local v18           #phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    :cond_25c
    if-eqz v15, :cond_264

    .line 335
    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->showLongDivider:Z

    .line 339
    .end local v9           #firstItem:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    :cond_264
    if-eqz v5, :cond_2a4

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAddressCount()I

    move-result v28

    if-lez v28, :cond_2a4

    .line 340
    const/4 v9, 0x1

    .line 341
    .restart local v9       #firstItem:Z
    const/4 v15, 0x0

    .line 342
    .restart local v15       #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAddressList()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_276
    :goto_276
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_29c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/contacts/proto/Contact$Address;

    .line 343
    .local v3, address:Lcom/google/wireless/contacts/proto/Contact$Address;
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Contact$Address;->hasAddress()Z

    move-result v28

    if-eqz v28, :cond_276

    .line 344
    new-instance v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    .end local v15           #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    invoke-direct {v15, v3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;-><init>(Ljava/lang/Object;)V

    .line 345
    .restart local v15       #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    iput-boolean v9, v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->firstItem:Z

    .line 346
    const/4 v9, 0x0

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_276

    .line 350
    .end local v3           #address:Lcom/google/wireless/contacts/proto/Contact$Address;
    :cond_29c
    if-eqz v15, :cond_2a4

    .line 351
    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->showLongDivider:Z

    .line 355
    .end local v9           #firstItem:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #lastItem:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    :cond_2a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v28

    if-nez v28, :cond_2df

    if-eqz v22, :cond_2df

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasGender()Z

    move-result v28

    if-eqz v28, :cond_2c8

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getType()Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    move-result-object v28

    sget-object v29, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2ce

    :cond_2c8
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBirthday()Z

    move-result v28

    if-eqz v28, :cond_2df

    .line 360
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    const v30, 0x7f0701ef

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v28

    if-nez v28, :cond_33c

    if-eqz v22, :cond_33c

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasGender()Z

    move-result v28

    if-eqz v28, :cond_33c

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getType()Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    move-result-object v28

    sget-object v29, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_33c

    .line 365
    const-string v27, ""

    .line 366
    .local v27, value:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v10

    .line 367
    .local v10, gender:Lcom/google/wireless/contacts/proto/Profile$Gender;
    sget-object v28, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->MALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    invoke-virtual {v10}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getType()Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_41d

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0701f1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 373
    :cond_326
    :goto_326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    const/16 v30, 0x6

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v10           #gender:Lcom/google/wireless/contacts/proto/Profile$Gender;
    .end local v27           #value:Ljava/lang/String;
    :cond_33c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v28

    if-nez v28, :cond_37a

    if-eqz v22, :cond_37a

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBirthday()Z

    move-result v28

    if-eqz v28, :cond_37a

    .line 377
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 378
    .restart local v27       #value:Ljava/lang/String;
    if-eqz v27, :cond_37a

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_37a

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    const/16 v30, 0x7

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v27           #value:Ljava/lang/String;
    :cond_37a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v28

    if-nez v28, :cond_3b1

    if-eqz v22, :cond_3b1

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentEmployer()Z

    move-result v28

    if-nez v28, :cond_3a0

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherEmployerCount()I

    move-result v28

    if-gtz v28, :cond_3a0

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentSchool()Z

    move-result v28

    if-nez v28, :cond_3a0

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherSchoolCount()I

    move-result v28

    if-lez v28, :cond_3b1

    .line 386
    :cond_3a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    const v30, 0x7f0701f4

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_3b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v28

    if-nez v28, :cond_456

    if-eqz v22, :cond_456

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentEmployer()Z

    move-result v28

    if-nez v28, :cond_3cb

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherEmployerCount()I

    move-result v28

    if-lez v28, :cond_456

    .line 391
    :cond_3cb
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v24, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 393
    .restart local v27       #value:Ljava/lang/String;
    if-eqz v27, :cond_3eb

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_3eb

    .line 394
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_3eb
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherEmployerCount()I

    move-result v6

    .line 398
    .local v6, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3f0
    if-ge v12, v6, :cond_43c

    .line 399
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherEmployer(I)Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v25

    .line 400
    .local v25, string:Ljava/lang/String;
    if-eqz v25, :cond_41a

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_41a

    .line 401
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_417

    .line 402
    const-string v28, "\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_417
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_41a
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f0

    .line 369
    .end local v6           #count:I
    .end local v12           #i:I
    .end local v24           #sb:Ljava/lang/StringBuilder;
    .end local v25           #string:Ljava/lang/String;
    .restart local v10       #gender:Lcom/google/wireless/contacts/proto/Profile$Gender;
    :cond_41d
    sget-object v28, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->FEMALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    invoke-virtual {v10}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getType()Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_326

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0701f2

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_326

    .line 408
    .end local v10           #gender:Lcom/google/wireless/contacts/proto/Profile$Gender;
    .restart local v6       #count:I
    .restart local v12       #i:I
    .restart local v24       #sb:Ljava/lang/StringBuilder;
    :cond_43c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_456

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    const/16 v30, 0x8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v6           #count:I
    .end local v12           #i:I
    .end local v24           #sb:Ljava/lang/StringBuilder;
    .end local v27           #value:Ljava/lang/String;
    :cond_456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    move-object/from16 v28, v0

    #getter for: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z

    move-result v28

    if-nez v28, :cond_4dc

    if-eqz v22, :cond_4dc

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentSchool()Z

    move-result v28

    if-nez v28, :cond_470

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherSchoolCount()I

    move-result v28

    if-lez v28, :cond_4dc

    .line 415
    :cond_470
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .restart local v24       #sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 417
    .restart local v27       #value:Ljava/lang/String;
    if-eqz v27, :cond_490

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_490

    .line 418
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_490
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherSchoolCount()I

    move-result v6

    .line 422
    .restart local v6       #count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_495
    if-ge v12, v6, :cond_4c2

    .line 423
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherSchool(I)Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/contacts/proto/Common$StringField;->getValue()Ljava/lang/String;

    move-result-object v25

    .line 424
    .restart local v25       #string:Ljava/lang/String;
    if-eqz v25, :cond_4bf

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_4bf

    .line 425
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_4bc

    .line 426
    const-string v28, "\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_4bc
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_4bf
    add-int/lit8 v12, v12, 0x1

    goto :goto_495

    .line 432
    .end local v25           #string:Ljava/lang/String;
    :cond_4c2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_4dc

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;

    const/16 v30, 0x9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .end local v6           #count:I
    .end local v12           #i:I
    .end local v24           #sb:Ljava/lang/StringBuilder;
    .end local v27           #value:Ljava/lang/String;
    :cond_4dc
    if-eqz v22, :cond_567

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasLocationMapUrl()Z

    move-result v28

    if-eqz v28, :cond_567

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    const v30, 0x7f0701f7

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$PlacesMapItem;

    const/16 v30, 0x0

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$PlacesMapItem;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentLocation()Z

    move-result v28

    if-eqz v28, :cond_533

    .line 441
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v17

    .line 442
    .local v17, location:Lcom/google/wireless/contacts/proto/Profile$Location;
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/contacts/proto/Profile$Location;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, address:Ljava/lang/String;
    if-eqz v3, :cond_533

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_533

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v3, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v3           #address:Ljava/lang/String;
    .end local v17           #location:Lcom/google/wireless/contacts/proto/Profile$Location;
    :cond_533
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherLocationCount()I

    move-result v6

    .line 448
    .restart local v6       #count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_538
    if-ge v12, v6, :cond_567

    .line 449
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v17

    .line 450
    .restart local v17       #location:Lcom/google/wireless/contacts/proto/Profile$Location;
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/contacts/proto/Profile$Location;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 451
    .restart local v3       #address:Ljava/lang/String;
    if-eqz v3, :cond_564

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_564

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v3, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_564
    add-int/lit8 v12, v12, 0x1

    goto :goto_538

    .line 457
    .end local v3           #address:Ljava/lang/String;
    .end local v6           #count:I
    .end local v12           #i:I
    .end local v17           #location:Lcom/google/wireless/contacts/proto/Profile$Location;
    :cond_567
    if-eqz v22, :cond_580

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLinkCount()I

    move-result v28

    if-lez v28, :cond_580

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    const v30, 0x7f0701f8

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_580
    if-eqz v22, :cond_5b9

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLinkCount()I

    move-result v28

    if-lez v28, :cond_5b9

    .line 462
    const/4 v9, 0x1

    .line 463
    .restart local v9       #firstItem:Z
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLinkList()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_591
    :goto_591
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_5b9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/wireless/contacts/proto/Profile$Link;

    .line 464
    .local v16, link:Lcom/google/wireless/contacts/proto/Profile$Link;
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/contacts/proto/Profile$Link;->hasUrl()Z

    move-result v28

    if-eqz v28, :cond_591

    .line 465
    new-instance v14, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;-><init>(Ljava/lang/Object;)V

    .line 466
    .local v14, item:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    iput-boolean v9, v14, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;->firstItem:Z

    .line 467
    const/4 v9, 0x0

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_591

    .line 473
    .end local v9           #firstItem:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #item:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;
    .end local v16           #link:Lcom/google/wireless/contacts/proto/Profile$Link;
    :cond_5b9
    if-eqz v23, :cond_5dc

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    const v30, 0x7f070179

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;

    const/16 v30, 0x0

    invoke-direct/range {v29 .. v30}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_5dc
    const/4 v12, 0x1

    .restart local v12       #i:I
    :goto_5dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_618

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;

    move/from16 v28, v0

    if-eqz v28, :cond_615

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    add-int/lit8 v29, v12, -0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;->showDivider:Z

    .line 478
    :cond_615
    add-int/lit8 v12, v12, 0x1

    goto :goto_5dd

    .line 484
    :cond_618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;->showDivider:Z

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->notifyDataSetChanged()V

    .line 487
    return-void
.end method
