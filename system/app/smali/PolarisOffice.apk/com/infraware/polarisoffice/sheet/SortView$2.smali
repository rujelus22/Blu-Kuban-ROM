.class Lcom/infraware/polarisoffice/sheet/SortView$2;
.super Ljava/lang/Object;
.source "SortView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SortView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SortView;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SortView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SortView$2;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$2;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SortView;->finish()V

    .line 55
    return-void
.end method
