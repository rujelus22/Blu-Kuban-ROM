.class Lcom/sprint/dsa/PageActivity$8;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PageActivity;->mResetMenu(Landroid/view/Menu;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;

.field private final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;Landroid/view/Menu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$8;->this$0:Lcom/sprint/dsa/PageActivity;

    iput-object p2, p0, Lcom/sprint/dsa/PageActivity$8;->val$menu:Landroid/view/Menu;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$8;->val$menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 561
    return-void
.end method
