.class Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;
.super Ljava/lang/Object;
.source "ViewPaymentOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;

.field private final synthetic val$item:I

.field private final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;->this$1:Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;

    iput-object p2, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;->val$row:Landroid/view/View;

    iput p3, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;->val$item:I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;)Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;->this$1:Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;->val$row:Landroid/view/View;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1;

    iget v2, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;->val$item:I

    iget-object v3, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;->val$row:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1;-><init>(Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1;ILandroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method
