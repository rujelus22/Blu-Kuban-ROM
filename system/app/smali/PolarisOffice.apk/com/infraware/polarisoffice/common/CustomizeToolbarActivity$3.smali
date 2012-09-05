.class Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$3;
.super Ljava/lang/Object;
.source "CustomizeToolbarActivity.java"

# interfaces
.implements Lcom/infraware/common/control/dragndroplist/DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field backgroundColor:I

.field defaultBackgroundColor:I

.field final synthetic this$0:Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$3;->this$0:Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const v0, -0x1fefcff0

    iput v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$3;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public onDrag(IILandroid/widget/ListView;)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "listView"

    .prologue
    .line 143
    return-void
.end method

.method public onStartDrag(Landroid/view/View;IIZ)V
    .registers 8
    .parameter "itemView"
    .parameter "nItemCurIndex"
    .parameter "itemIndex"
    .parameter "mDragMode"

    .prologue
    .line 158
    const v1, 0x7f0c012e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    .local v0, imgIcon2:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method public onStopDrag(Landroid/view/View;)V
    .registers 5
    .parameter "itemView"

    .prologue
    .line 146
    if-eqz p1, :cond_19

    .line 151
    const v1, 0x7f0c012e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    .local v0, imgIcon2:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .end local v0           #imgIcon2:Landroid/widget/ImageView;
    :cond_19
    return-void
.end method
