.class Lcom/android/email/activity/MessageCompose$SMemoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMemoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageCompose$SMemoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageCompose$SMemoItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
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
            "Lcom/android/email/activity/MessageCompose$SMemoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14420
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageCompose$SMemoItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SMemoAdapter;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 14421
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 14422
    iput-object p4, p0, Lcom/android/email/activity/MessageCompose$SMemoAdapter;->items:Ljava/util/ArrayList;

    .line 14423
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 14427
    move-object v3, p2

    .line 14428
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_15

    .line 14429
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$SMemoAdapter;->this$0:Lcom/android/email/activity/MessageCompose;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 14430
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f040071

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 14432
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$SMemoAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageCompose$SMemoItem;

    .line 14434
    .local v2, ti:Lcom/android/email/activity/MessageCompose$SMemoItem;
    const v5, 0x7f100151

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 14436
    .local v1, text:Landroid/widget/TextView;
    if-eqz v2, :cond_31

    .line 14438
    if-eqz v1, :cond_31

    .line 14439
    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose$SMemoItem;->getText()Ljava/lang/String;

    move-result-object v0

    .line 14441
    .local v0, strItem:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14450
    .end local v0           #strItem:Ljava/lang/String;
    :cond_31
    return-object v3
.end method
