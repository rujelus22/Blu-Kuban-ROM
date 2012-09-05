.class Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$1;
.super Ljava/lang/Object;
.source "AbstractListBouncingExpandableListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$1;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method
