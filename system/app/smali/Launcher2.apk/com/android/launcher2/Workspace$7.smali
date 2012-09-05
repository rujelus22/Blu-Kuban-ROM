.class Lcom/android/launcher2/Workspace$7;
.super Lcom/android/launcher2/LauncherAnimatorUpdateListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1748
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_6

    .line 1756
    :cond_5
    return-void

    .line 1752
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1753
    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1754
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mOldRotationYs:[F
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$2300(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mNewRotationYs:[F
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$2400(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastRotationY(F)V

    .line 1752
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method
