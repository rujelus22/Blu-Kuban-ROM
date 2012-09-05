.class public Lcom/sec/android/socialhub/contacts/ContactWrapper;
.super Ljava/lang/Object;
.source "ContactWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

.field public miSpType:I

.field public mstrEmail:Ljava/lang/String;

.field public mstrFullName:Ljava/lang/String;

.field public mstrID:Ljava/lang/String;

.field public mstrName:Ljava/lang/String;

.field public mstrPhotoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDB$FriendList;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "friend_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "medium_photo_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "full_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "small_photo_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    .line 54
    new-instance v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;-><init>(Lcom/sec/android/socialhub/contacts/ContactWrapper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    .line 55
    return-void
.end method


# virtual methods
.method public changeData(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 99
    if-nez p1, :cond_c

    .line 101
    const-string v0, "ContactWrapper"

    const-string v1, "changeData()"

    const-string v2, "cursor is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_b
    :goto_b
    return-void

    .line 105
    :cond_c
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->miSpType:I

    .line 106
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrName:Ljava/lang/String;

    .line 107
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrPhotoUrl:Ljava/lang/String;

    .line 108
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrEmail:Ljava/lang/String;

    .line 109
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    .line 110
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrFullName:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrPhotoUrl:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 114
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrPhotoUrl:Ljava/lang/String;

    goto :goto_b
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_5
.end method

.method public getImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mImageView:Landroid/widget/ImageView;

    goto :goto_5
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mTextView:Landroid/widget/TextView;

    goto :goto_5
.end method

.method public setIndexText(Ljava/lang/String;)V
    .registers 5
    .parameter "str"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 84
    if-nez p1, :cond_14

    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mLayoutIndex:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mDividerTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_13
    return-void

    .line 91
    :cond_14
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mLayoutIndex:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mDividerTop:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mHolder:Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mIndexBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method
