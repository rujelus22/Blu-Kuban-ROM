.class Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewFAQs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ViewFAQs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaqListAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/QuestionAnswer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sprint/smps/activities/ViewFAQs;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewFAQs;Landroid/app/Activity;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/QuestionAnswer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/QuestionAnswer;>;"
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    .line 161
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->data:Ljava/util/List;

    .line 163
    iput-object p2, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->context:Landroid/app/Activity;

    .line 164
    iput-object p3, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->data:Ljava/util/List;

    .line 165
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;)Lcom/sprint/smps/activities/ViewFAQs;
    .registers 2
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 233
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, position:I
    int-to-long v1, p1

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/pojo/QuestionAnswer;

    .line 176
    .local v0, faqs:Lcom/sprint/smps/pojo/QuestionAnswer;
    iget-object v4, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;->context:Landroid/app/Activity;

    const v5, 0x7f03000b

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 177
    .local v2, row:Landroid/view/View;
    move-object v1, v2

    .line 179
    .local v1, parentView:Landroid/view/View;
    new-instance v4, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$1;

    invoke-direct {v4, p0}, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$1;-><init>(Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;)V

    .line 178
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    new-instance v4, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;

    invoke-direct {v4, p0, v1}, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2;-><init>(Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;Landroid/view/View;)V

    .line 188
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v4, 0x7f080020

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 218
    .local v3, textView:Landroid/widget/TextView;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const v4, 0x7f080021

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 221
    .restart local v3       #textView:Landroid/widget/TextView;
    iget-object v4, v0, Lcom/sprint/smps/pojo/QuestionAnswer;->question:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-object v2
.end method
