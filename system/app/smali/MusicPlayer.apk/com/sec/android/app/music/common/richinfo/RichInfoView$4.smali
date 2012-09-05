.class Lcom/sec/android/app/music/common/richinfo/RichInfoView$4;
.super Ljava/lang/Object;
.source "RichInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoView;->makeSubTitle(IIZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V
    .registers 2
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$4;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$4;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->prevPage()V

    .line 543
    return-void
.end method
