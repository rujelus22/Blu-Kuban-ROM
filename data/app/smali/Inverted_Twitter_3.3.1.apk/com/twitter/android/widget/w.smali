.class public final Lcom/twitter/android/widget/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/SegmentedControl;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/SegmentedControl;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/w;->a:Lcom/twitter/android/widget/SegmentedControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/w;->a:Lcom/twitter/android/widget/SegmentedControl;

    invoke-virtual {v0}, Lcom/twitter/android/widget/SegmentedControl;->a()V

    return-void
.end method
