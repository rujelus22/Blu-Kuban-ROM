.class final LuH;
.super Ljava/lang/Object;
.source "DiscussionFragmentUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, LuH;->a:Landroid/widget/AdapterView$OnItemClickListener;

    iput p2, p0, LuH;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, LuH;->a:Landroid/widget/AdapterView$OnItemClickListener;

    iget v3, p0, LuH;->a:I

    const-wide/16 v4, -0x1

    move-object v2, v1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 82
    return-void
.end method
