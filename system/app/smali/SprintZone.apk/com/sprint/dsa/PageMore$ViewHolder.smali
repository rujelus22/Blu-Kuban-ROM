.class Lcom/sprint/dsa/PageMore$ViewHolder;
.super Ljava/lang/Object;
.source "PageMore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageMore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mCost:Landroid/widget/TextView;

.field mDesc:Landroid/widget/TextView;

.field mIcon:Landroid/widget/ImageView;

.field mRatingBar:Landroid/widget/RatingBar;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprint/dsa/PageMore;


# direct methods
.method private constructor <init>(Lcom/sprint/dsa/PageMore;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sprint/dsa/PageMore$ViewHolder;->this$0:Lcom/sprint/dsa/PageMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/dsa/PageMore;Lcom/sprint/dsa/PageMore$ViewHolder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/sprint/dsa/PageMore$ViewHolder;-><init>(Lcom/sprint/dsa/PageMore;)V

    return-void
.end method
