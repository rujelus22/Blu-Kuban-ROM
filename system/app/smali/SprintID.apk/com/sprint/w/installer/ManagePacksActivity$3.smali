.class Lcom/sprint/w/installer/ManagePacksActivity$3;
.super Ljava/lang/Object;
.source "ManagePacksActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ManagePacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ManagePacksActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$3;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    iget-object v1, p0, Lcom/sprint/w/installer/ManagePacksActivity$3;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v1, v1, Lcom/sprint/w/installer/ManagePacksActivity;->mListItems:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/ManagePacksActivity$Listable;

    .line 150
    .local v0, l:Lcom/sprint/w/installer/ManagePacksActivity$Listable;
    invoke-interface {v0}, Lcom/sprint/w/installer/ManagePacksActivity$Listable;->clicked()V

    .line 151
    return-void
.end method
