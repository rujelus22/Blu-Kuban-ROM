.class Lcom/google/android/music/menu/ManageMusicMenu$1;
.super Ljava/lang/Object;
.source "ManageMusicMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/menu/ManageMusicMenu;->setVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/menu/ManageMusicMenu;

.field final synthetic val$newVisibility:I


# direct methods
.method constructor <init>(Lcom/google/android/music/menu/ManageMusicMenu;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/music/menu/ManageMusicMenu$1;->this$0:Lcom/google/android/music/menu/ManageMusicMenu;

    iput p2, p0, Lcom/google/android/music/menu/ManageMusicMenu$1;->val$newVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 102
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 100
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu$1;->this$0:Lcom/google/android/music/menu/ManageMusicMenu;

    iget v1, p0, Lcom/google/android/music/menu/ManageMusicMenu$1;->val$newVisibility:I

    #calls: Lcom/google/android/music/menu/ManageMusicMenu;->superSetVisibility(I)V
    invoke-static {v0, v1}, Lcom/google/android/music/menu/ManageMusicMenu;->access$000(Lcom/google/android/music/menu/ManageMusicMenu;I)V

    .line 98
    return-void
.end method
