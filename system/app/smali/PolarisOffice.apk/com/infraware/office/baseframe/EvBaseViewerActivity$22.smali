.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onZoomMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

.field private final synthetic val$nCustomZoom:I

.field private final synthetic val$zoomValue:[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;[Ljava/lang/Integer;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iput-object p2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->val$zoomValue:[Ljava/lang/Integer;

    iput p3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->val$nCustomZoom:I

    .line 1759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 1762
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->val$zoomValue:[Ljava/lang/Integer;

    array-length v0, v0

    if-lt p2, v0, :cond_7

    .line 1780
    :goto_6
    return-void

    .line 1765
    :cond_7
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->val$zoomValue:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1766
    .local v2, zoomLevel:I
    packed-switch v2, :pswitch_data_48

    .line 1777
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    goto :goto_6

    .line 1768
    :pswitch_23
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetViewMode(I)V

    goto :goto_6

    .line 1771
    :pswitch_2c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetViewMode(I)V

    goto :goto_6

    .line 1774
    :pswitch_35
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;->val$nCustomZoom:I

    .end local v2           #zoomLevel:I
    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    goto :goto_6

    .line 1766
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2c
        :pswitch_35
    .end packed-switch
.end method
