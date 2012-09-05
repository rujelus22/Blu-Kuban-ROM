.class public Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;
.super Ljava/lang/Object;
.source "AddAccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddAccountViewHolder"
.end annotation


# instance fields
.field public headerDivider:Landroid/widget/LinearLayout;

.field public headerDividerBelow:Landroid/widget/LinearLayout;

.field public mItem:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

.field public rowLayout:Landroid/widget/LinearLayout;

.field public separatorLayout:Landroid/widget/LinearLayout;

.field public separatortext:Landroid/widget/TextView;

.field public text:Landroid/widget/TextView;

.field public userAccounttypeimg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewResource(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 114
    const v0, 0x7f0b000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->userAccounttypeimg:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0b0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->text:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->separatorLayout:Landroid/widget/LinearLayout;

    .line 117
    const v0, 0x7f0b0025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->separatortext:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->separatorLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    const v0, 0x7f0b000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->headerDivider:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f0b000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->rowLayout:Landroid/widget/LinearLayout;

    .line 121
    const v0, 0x7f0b0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->headerDividerBelow:Landroid/widget/LinearLayout;

    .line 122
    return-void
.end method
