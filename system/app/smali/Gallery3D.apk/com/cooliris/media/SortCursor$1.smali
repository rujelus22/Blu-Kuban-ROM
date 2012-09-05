.class Lcom/cooliris/media/SortCursor$1;
.super Landroid/database/DataSetObserver;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/SortCursor;


# direct methods
.method constructor <init>(Lcom/cooliris/media/SortCursor;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cooliris/media/SortCursor$1;->this$0:Lcom/cooliris/media/SortCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cooliris/media/SortCursor$1;->this$0:Lcom/cooliris/media/SortCursor;

    const/4 v1, -0x1

    #setter for: Lcom/cooliris/media/SortCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/cooliris/media/SortCursor;->access$002(Lcom/cooliris/media/SortCursor;I)I

    .line 54
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cooliris/media/SortCursor$1;->this$0:Lcom/cooliris/media/SortCursor;

    const/4 v1, -0x1

    #setter for: Lcom/cooliris/media/SortCursor;->mPos:I
    invoke-static {v0, v1}, Lcom/cooliris/media/SortCursor;->access$102(Lcom/cooliris/media/SortCursor;I)I

    .line 59
    return-void
.end method
