.class Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;
.super Ljava/lang/Object;
.source "ContactWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/contacts/ContactWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactViewHolder"
.end annotation


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field public mDividerBottom:Landroid/view/View;

.field public mDividerTop:Landroid/view/View;

.field public mImageView:Landroid/widget/ImageView;

.field public mIndexBar:Landroid/widget/TextView;

.field public mLayoutIndex:Landroid/widget/LinearLayout;

.field public mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/socialhub/contacts/ContactWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/contacts/ContactWrapper;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->this$0:Lcom/sec/android/socialhub/contacts/ContactWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const v0, 0x7f0b000c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mLayoutIndex:Landroid/widget/LinearLayout;

    .line 133
    const v0, 0x7f0b00e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 134
    const v0, 0x7f0b00e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0b00e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mTextView:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0b0025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mIndexBar:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0b00de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mDividerTop:Landroid/view/View;

    .line 138
    const v0, 0x7f0b00e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactWrapper$ContactViewHolder;->mDividerBottom:Landroid/view/View;

    .line 139
    return-void
.end method
