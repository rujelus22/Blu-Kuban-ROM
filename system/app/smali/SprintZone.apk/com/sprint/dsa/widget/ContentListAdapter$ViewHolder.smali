.class Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/widget/ContentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mCost:Landroid/widget/TextView;

.field mDesc:Landroid/widget/TextView;

.field mIcon:Landroid/widget/ImageView;

.field mMore:Landroid/widget/TextView;

.field mRatingBar:Landroid/widget/RatingBar;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprint/dsa/widget/ContentListAdapter;


# direct methods
.method private constructor <init>(Lcom/sprint/dsa/widget/ContentListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->this$0:Lcom/sprint/dsa/widget/ContentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/dsa/widget/ContentListAdapter;Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;-><init>(Lcom/sprint/dsa/widget/ContentListAdapter;)V

    return-void
.end method
