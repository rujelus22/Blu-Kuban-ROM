.class Lcom/arcsoft/widget/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/RepeatingImageButton;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/arcsoft/widget/RepeatingImageButton$1;->this$0:Lcom/arcsoft/widget/RepeatingImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/arcsoft/widget/RepeatingImageButton$1;->this$0:Lcom/arcsoft/widget/RepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/arcsoft/widget/RepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/arcsoft/widget/RepeatingImageButton;->access$000(Lcom/arcsoft/widget/RepeatingImageButton;Z)V

    .line 116
    iget-object v0, p0, Lcom/arcsoft/widget/RepeatingImageButton$1;->this$0:Lcom/arcsoft/widget/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/arcsoft/widget/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 117
    iget-object v0, p0, Lcom/arcsoft/widget/RepeatingImageButton$1;->this$0:Lcom/arcsoft/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/arcsoft/widget/RepeatingImageButton$1;->this$0:Lcom/arcsoft/widget/RepeatingImageButton;

    #getter for: Lcom/arcsoft/widget/RepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/arcsoft/widget/RepeatingImageButton;->access$100(Lcom/arcsoft/widget/RepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/arcsoft/widget/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_19
    return-void
.end method
