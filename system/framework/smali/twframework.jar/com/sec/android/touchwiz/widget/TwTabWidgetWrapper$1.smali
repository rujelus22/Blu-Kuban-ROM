.class Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;
.super Ljava/lang/Object;
.source "TwTabWidgetWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 181
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$1;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->scrollToTab(IZ)V

    .line 183
    :cond_16
    return-void
.end method
