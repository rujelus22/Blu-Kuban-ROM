.class Lcom/sprint/w/installer/PackDetails$4;
.super Ljava/lang/Object;
.source "PackDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$4;->this$0:Lcom/sprint/w/installer/PackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$4;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 150
    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$4;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackDetails$DetailsItem;

    .line 151
    .local v0, item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    invoke-virtual {v0}, Lcom/sprint/w/installer/PackDetails$DetailsItem;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c

    .line 152
    check-cast v0, Lcom/sprint/w/installer/PackDetails$ClickableItem;

    .end local v0           #item:Lcom/sprint/w/installer/PackDetails$DetailsItem;
    invoke-virtual {v0}, Lcom/sprint/w/installer/PackDetails$ClickableItem;->clicked()V

    .line 155
    :cond_1c
    return-void
.end method
