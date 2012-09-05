.class Lcom/sec/android/app/ve/view/caption/CaptionStyleView$1;
.super Ljava/lang/Object;
.source "CaptionStyleView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->buildCationStyleGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$1;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;

    .line 157
    .local v0, c:Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;
    return-void
.end method
