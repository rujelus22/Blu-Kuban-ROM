.class Lcom/syncmldstmo/smluiSyncType$1;
.super Ljava/lang/Object;
.source "smluiSyncType.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiSyncType;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiSyncType;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiSyncType;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncType$1;->this$0:Lcom/syncmldstmo/smluiSyncType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .line 44
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncType$1;->this$0:Lcom/syncmldstmo/smluiSyncType;

    add-int/lit8 v1, p3, 0x1

    #setter for: Lcom/syncmldstmo/smluiSyncType;->nIndex:I
    invoke-static {v0, v1}, Lcom/syncmldstmo/smluiSyncType;->access$002(Lcom/syncmldstmo/smluiSyncType;I)I

    .line 45
    return-void
.end method
