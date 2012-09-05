.class Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;
.super Ljava/lang/Object;
.source "TwListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->this$0:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/touchwiz/widget/TwListView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->this$0:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->mPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->mPositionTop:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    .line 1097
    return-void
.end method

.method public setup(II)Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;
    .registers 3
    .parameter "position"
    .parameter "top"

    .prologue
    .line 1090
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->mPosition:I

    .line 1091
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->mPositionTop:I

    .line 1092
    return-object p0
.end method
