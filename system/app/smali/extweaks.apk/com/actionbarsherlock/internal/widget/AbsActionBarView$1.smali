.class Lcom/actionbarsherlock/internal/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/AbsActionBarView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$1;->this$0:Lcom/actionbarsherlock/internal/widget/AbsActionBarView;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/AbsActionBarView$1;->this$0:Lcom/actionbarsherlock/internal/widget/AbsActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    .line 196
    return-void
.end method
