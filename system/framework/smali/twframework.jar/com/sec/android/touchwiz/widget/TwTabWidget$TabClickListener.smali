.class Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "TwTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabWidget;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabWidget;I)V
    .registers 3
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;->mTabIndex:I

    .line 576
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabWidget;ILcom/sec/android/touchwiz/widget/TwTabWidget$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidget;)Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 580
    return-void
.end method
