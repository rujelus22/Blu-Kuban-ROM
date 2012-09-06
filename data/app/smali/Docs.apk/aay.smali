.class public Laay;
.super Ljava/lang/Object;
.source "DraggableDocListEntryView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Laay;->a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 60
    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/DocListView;

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(I)LkT;

    move-result-object v0

    invoke-virtual {v0}, LkT;->c()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iget-object v2, p0, Laay;->a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LcQ;->max_document_title_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    const-string v1, "dataContainer"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    iget-object v2, p0, Laay;->a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LcW;->drag_shadow_text:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Laay;->a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;

    invoke-static {v3}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->a(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;)I

    move-result v3

    iget-object v4, p0, Laay;->a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;

    invoke-static {v4}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->b(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1, v0, v2}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Point;)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    invoke-virtual {p1, v1, v0, p1, v6}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 81
    return v5
.end method
