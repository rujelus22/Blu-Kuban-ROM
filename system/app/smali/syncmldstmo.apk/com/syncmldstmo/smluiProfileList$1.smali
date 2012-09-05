.class Lcom/syncmldstmo/smluiProfileList$1;
.super Ljava/lang/Object;
.source "smluiProfileList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiProfileList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiProfileList;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiProfileList;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/syncmldstmo/smluiProfileList$1;->this$0:Lcom/syncmldstmo/smluiProfileList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 47
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfileList$1;->this$0:Lcom/syncmldstmo/smluiProfileList;

    #setter for: Lcom/syncmldstmo/smluiProfileList;->nProfileIndex:I
    invoke-static {v0, p3}, Lcom/syncmldstmo/smluiProfileList;->access$002(Lcom/syncmldstmo/smluiProfileList;I)I

    .line 48
    iget-object v0, p0, Lcom/syncmldstmo/smluiProfileList$1;->this$0:Lcom/syncmldstmo/smluiProfileList;

    #getter for: Lcom/syncmldstmo/smluiProfileList;->nProfileIndex:I
    invoke-static {v0}, Lcom/syncmldstmo/smluiProfileList;->access$000(Lcom/syncmldstmo/smluiProfileList;)I

    move-result v0

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetActivedProfileIndex(I)V

    .line 50
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlsetSyncAutomatically()V

    .line 51
    return-void
.end method
