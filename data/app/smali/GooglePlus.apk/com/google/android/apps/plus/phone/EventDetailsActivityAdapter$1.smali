.class Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$1;
.super Ljava/lang/Object;
.source "EventDetailsActivityAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;Lcom/google/android/apps/plus/views/EventActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 98
    instance-of v0, p1, Lcom/google/android/apps/plus/views/Recyclable;

    if-eqz v0, :cond_9

    .line 99
    check-cast p1, Lcom/google/android/apps/plus/views/Recyclable;

    .end local p1
    invoke-interface {p1}, Lcom/google/android/apps/plus/views/Recyclable;->onRecycle()V

    .line 101
    :cond_9
    return-void
.end method
