.class Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$1;
.super Ljava/lang/Object;
.source "AbstractListBouncingListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)V
    .registers 2
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$1;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method
