.class Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;
.super Ljava/lang/Object;
.source "ViewFAQs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;

.field private final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;->this$1:Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;

    iput-object p2, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;->val$parentView:Landroid/view/View;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;)Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;->this$1:Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;->val$parentView:Landroid/view/View;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    move-object v0, p1

    .line 197
    .local v0, view:Landroid/view/View;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1;

    iget-object v3, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;->val$parentView:Landroid/view/View;

    invoke-direct {v2, p0, v0, v3}, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1;-><init>(Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method
