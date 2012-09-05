.class Lcom/sprint/dsa/PageSettings$1;
.super Ljava/lang/Object;
.source "PageSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageSettings;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x41a0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_b

    .line 101
    :cond_a
    :goto_a
    return v1

    .line 82
    :cond_b
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3}, Lcom/sprint/dsa/PageSettings;->access$0(Lcom/sprint/dsa/PageSettings;)I

    move-result v3

    if-nez v3, :cond_5b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_metrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/sprint/dsa/PageSettings;->access$1(Lcom/sprint/dsa/PageSettings;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5b

    .line 83
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3}, Lcom/sprint/dsa/PageSettings;->access$0(Lcom/sprint/dsa/PageSettings;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3, v4}, Lcom/sprint/dsa/PageSettings;->access$2(Lcom/sprint/dsa/PageSettings;I)V

    .line 94
    :goto_39
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3}, Lcom/sprint/dsa/PageSettings;->access$0(Lcom/sprint/dsa/PageSettings;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/sprint/dsa/PageSettings;->access$3(Lcom/sprint/dsa/PageSettings;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sprint/dsa/PageAdvSettings;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    invoke-virtual {v3, v0}, Lcom/sprint/dsa/PageSettings;->startActivity(Landroid/content/Intent;)V

    .line 97
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #setter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3, v1}, Lcom/sprint/dsa/PageSettings;->access$2(Lcom/sprint/dsa/PageSettings;I)V

    move v1, v2

    .line 98
    goto :goto_a

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5b
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3}, Lcom/sprint/dsa/PageSettings;->access$0(Lcom/sprint/dsa/PageSettings;)I

    move-result v3

    if-ne v3, v2, :cond_9f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9f

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_metrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/sprint/dsa/PageSettings;->access$1(Lcom/sprint/dsa/PageSettings;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9f

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_metrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/sprint/dsa/PageSettings;->access$1(Lcom/sprint/dsa/PageSettings;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9f

    .line 87
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3}, Lcom/sprint/dsa/PageSettings;->access$0(Lcom/sprint/dsa/PageSettings;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3, v4}, Lcom/sprint/dsa/PageSettings;->access$2(Lcom/sprint/dsa/PageSettings;I)V

    goto :goto_39

    .line 88
    :cond_9f
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3}, Lcom/sprint/dsa/PageSettings;->access$0(Lcom/sprint/dsa/PageSettings;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_d2

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_metrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/sprint/dsa/PageSettings;->access$1(Lcom/sprint/dsa/PageSettings;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d2

    .line 90
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #getter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3}, Lcom/sprint/dsa/PageSettings;->access$0(Lcom/sprint/dsa/PageSettings;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3, v4}, Lcom/sprint/dsa/PageSettings;->access$2(Lcom/sprint/dsa/PageSettings;I)V

    goto/16 :goto_39

    .line 92
    :cond_d2
    iget-object v3, p0, Lcom/sprint/dsa/PageSettings$1;->this$0:Lcom/sprint/dsa/PageSettings;

    #setter for: Lcom/sprint/dsa/PageSettings;->m_tapStage:I
    invoke-static {v3, v1}, Lcom/sprint/dsa/PageSettings;->access$2(Lcom/sprint/dsa/PageSettings;I)V

    goto/16 :goto_39
.end method
